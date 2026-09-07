namespace SpotifyVisualizer.Audio;

/// <summary>
/// Turns a rolling window of captured mono samples into smoothed, log-spaced bar heights.
/// Thread-safe: <see cref="PushSamples"/> is called from the audio capture thread while
/// <see cref="ComputeBars"/> is called from the render loop.
/// </summary>
public sealed class SpectrumAnalyzer
{
    private readonly object _lock = new();
    private readonly Random _jitterRandom = new();

    private float[] _ringBuffer = Array.Empty<float>();
    private int _writePos;
    private int _filled;
    private int _sampleRate = 48000;

    private float[] _re = Array.Empty<float>();
    private float[] _im = Array.Empty<float>();
    private float[] _window = Array.Empty<float>();
    private int _fftSize;

    private float[] _barLevels = Array.Empty<float>();
    private float[] _jitterPhase = Array.Empty<float>();
    private float[] _rawMagnitudes = Array.Empty<float>();

    private float _agcReference;
    private float _agcFloor;

    public SpectrumAnalyzer(int fftSize)
    {
        Reconfigure(fftSize);
    }

    public void Reconfigure(int fftSize)
    {
        lock (_lock)
        {
            _fftSize = NextPowerOfTwo(Math.Clamp(fftSize, 256, 8192));
            _ringBuffer = new float[_fftSize * 2];
            _writePos = 0;
            _filled = 0;
            _re = new float[_fftSize];
            _im = new float[_fftSize];
            _window = BuildHannWindow(_fftSize);
            _agcFloor = (float)(_fftSize * 0.002);
            _agcReference = (float)(_fftSize * 0.01);
        }
    }

    public void PushSamples(float[] samples, int sampleRate)
    {
        lock (_lock)
        {
            _sampleRate = sampleRate;
            var buffer = _ringBuffer;
            var pos = _writePos;
            foreach (var s in samples)
            {
                buffer[pos] = s;
                pos = (pos + 1) % buffer.Length;
                if (_filled < buffer.Length)
                {
                    _filled++;
                }
            }
            _writePos = pos;
        }
    }

    /// <summary>
    /// Computes a fresh magnitude spectrum from the most recent samples and returns bar
    /// heights in [0,1] mapped to <paramref name="barCount"/> log-spaced frequency bands,
    /// with attack/decay smoothing and a slow per-bar phase wobble so identical loudness
    /// never produces pixel-identical bars.
    /// </summary>
    public float[] ComputeBars(
        int barCount,
        double sensitivity,
        double attack,
        double decay,
        double noiseGate,
        double jitterAmount,
        double lowHz,
        double highHz,
        bool autoGainEnabled,
        double autoGainSpeed)
    {
        lock (_lock)
        {
            EnsureBarState(barCount);

            if (_filled < _fftSize)
            {
                DecayTowardsZero(decay);
                return (float[])_barLevels.Clone();
            }

            CopyWindowedSamples();
            FastFourierTransform.Forward(_re, _im);

            var usableBins = _fftSize / 2;
            var binHz = (double)_sampleRate / _fftSize;
            var logLow = Math.Log(Math.Max(lowHz, binHz));
            var logHigh = Math.Log(Math.Max(highHz, lowHz * 2));

            var peakMagnitude = 0f;
            for (var bar = 0; bar < barCount; bar++)
            {
                var magnitude = (float)RmsMagnitudeForBand(bar, barCount, usableBins, binHz, logLow, logHigh);
                _rawMagnitudes[bar] = magnitude;
                if (magnitude > peakMagnitude)
                {
                    peakMagnitude = magnitude;
                }
            }

            double referenceLevel;
            if (autoGainEnabled)
            {
                // Auto-gain: continuously calibrate against how loud the source actually is
                // right now, so the same musical dynamics look the same whether Spotify (or
                // the system volume) is quiet or loud - the noise gate below is what still
                // keeps true silence from being amplified into fake movement.
                UpdateAutoGainReference(peakMagnitude, autoGainSpeed);
                referenceLevel = _agcReference;
            }
            else
            {
                // Manual mode: fixed calibration, tuned for typical loudness-normalized
                // streamed music; Sensitivity is then the only knob.
                referenceLevel = _fftSize * 0.035;
            }

            for (var bar = 0; bar < barCount; bar++)
            {
                var normalized = _rawMagnitudes[bar] / Math.Max(referenceLevel, 1e-6) * sensitivity;
                if (normalized < noiseGate)
                {
                    normalized = 0;
                }

                // Perceptual compression: quiet passages still animate, loud ones don't pin at 1.
                var shaped = Math.Min(Math.Pow(Math.Clamp(normalized, 0, 4), 0.5), 1.0);

                _jitterPhase[bar] += 0.0021f + bar * 0.00003f;
                var wobble = 1.0 + Math.Sin(_jitterPhase[bar]) * jitterAmount * 0.5;
                shaped = Math.Clamp(shaped * wobble, 0, 1);

                var current = _barLevels[bar];
                var rate = shaped > current ? attack : decay;
                _barLevels[bar] = (float)(current + (shaped - current) * rate);
            }

            return (float[])_barLevels.Clone();
        }
    }

    /// <summary>
    /// Decays bar levels toward zero without analyzing any audio - used when there's no
    /// active capture (e.g. Spotify isn't running), since otherwise stale samples already
    /// sitting in the ring buffer would keep getting re-analyzed into a frozen spectrum.
    /// </summary>
    public float[] DecayOnly(int barCount, double decay)
    {
        lock (_lock)
        {
            EnsureBarState(barCount);
            DecayTowardsZero(decay);
            // Relax the auto-gain reference back toward baseline while nothing's playing, so
            // it doesn't sit stale at whatever the last track's loudness was.
            _agcReference = Math.Max(_agcReference * 0.98f, _agcFloor);
            return (float[])_barLevels.Clone();
        }
    }

    private void UpdateAutoGainReference(float peakMagnitude, double speed)
    {
        var s = Math.Clamp(speed, 0, 1);
        if (peakMagnitude > _agcReference)
        {
            // Fast attack: latch onto a louder passage (or a volume increase) quickly.
            var attackRate = (float)(0.15 + s * 0.55);
            _agcReference += (peakMagnitude - _agcReference) * attackRate;
        }
        else
        {
            // Slow release: don't deflate the reference during a brief quiet moment, but
            // still drift down over several seconds so a quieter track or volume level
            // eventually reads at full range too.
            var releaseRate = (float)(0.0015 + s * 0.01);
            _agcReference += (peakMagnitude - _agcReference) * releaseRate;
        }
        _agcReference = Math.Max(_agcReference, _agcFloor);
    }

    private double RmsMagnitudeForBand(int bar, int barCount, int usableBins, double binHz, double logLow, double logHigh)
    {
        var t0 = (double)bar / barCount;
        var t1 = (double)(bar + 1) / barCount;
        var f0 = Math.Exp(logLow + (logHigh - logLow) * t0);
        var f1 = Math.Exp(logLow + (logHigh - logLow) * t1);

        var bin0 = Math.Clamp((int)(f0 / binHz), 1, usableBins - 1);
        var bin1 = Math.Clamp((int)(f1 / binHz), bin0 + 1, usableBins);

        // RMS rather than a plain average: real music has a few dominant bins per band
        // and many near-silent ones, and RMS (unlike a mean) doesn't get washed out by
        // that - it tracks the loud bins that actually carry the perceived energy.
        double sumSquares = 0;
        for (var bin = bin0; bin < bin1; bin++)
        {
            var re = _re[bin];
            var im = _im[bin];
            sumSquares += re * re + im * im;
        }
        return Math.Sqrt(sumSquares / (bin1 - bin0));
    }

    private void CopyWindowedSamples()
    {
        var start = (_writePos - _fftSize + _ringBuffer.Length) % _ringBuffer.Length;
        for (var i = 0; i < _fftSize; i++)
        {
            var idx = (start + i) % _ringBuffer.Length;
            _re[i] = _ringBuffer[idx] * _window[i];
            _im[i] = 0f;
        }
    }

    private void EnsureBarState(int barCount)
    {
        if (_barLevels.Length == barCount)
        {
            return;
        }

        _barLevels = new float[barCount];
        _jitterPhase = new float[barCount];
        _rawMagnitudes = new float[barCount];
        for (var i = 0; i < barCount; i++)
        {
            _jitterPhase[i] = (float)(_jitterRandom.NextDouble() * Math.PI * 2);
        }
    }

    private void DecayTowardsZero(double decay)
    {
        for (var i = 0; i < _barLevels.Length; i++)
        {
            _barLevels[i] *= (float)(1 - decay);
        }
    }

    private static float[] BuildHannWindow(int size)
    {
        var window = new float[size];
        for (var i = 0; i < size; i++)
        {
            window[i] = (float)(0.5 - 0.5 * Math.Cos(2 * Math.PI * i / (size - 1)));
        }
        return window;
    }

    private static int NextPowerOfTwo(int value)
    {
        var power = 1;
        while (power < value)
        {
            power <<= 1;
        }
        return power;
    }
}
