using System.Windows.Media;
using SpotifyVisualizer.Audio;
using SpotifyVisualizer.Interop;
using SpotifyVisualizer.Models;
using SpotifyVisualizer.Screen;

namespace SpotifyVisualizer.Overlay;

/// <summary>
/// Owns the whole live pipeline: audio capture -> spectrum analysis -> color -> one
/// OverlayWindow per active screen edge. Settings can be swapped in at any time via
/// <see cref="ApplySettings"/> (used live by the settings window).
/// </summary>
public sealed class OverlayController : IDisposable
{
    private static readonly ScreenEdges[] AllEdges = { ScreenEdges.Bottom, ScreenEdges.Top, ScreenEdges.Left, ScreenEdges.Right };

    private readonly Dictionary<ScreenEdges, OverlayWindow> _windows = new();
    private readonly SpectrumAnalyzer _analyzer;
    private readonly SpectrumAnalyzer _leftAnalyzer;
    private readonly SpectrumAnalyzer _rightAnalyzer;
    private readonly ScreenColorSampler _colorSampler;
    private readonly Random _colorJitterRandom = new();

    private VisualizerSettings _settings;
    private ProcessLoopbackCapture? _capture;
    private SpotifyPlaybackMonitor? _playbackMonitor;
    private bool _visible;
    private DateTime _lastFrame = DateTime.MinValue;

    private DominantColorSample _lastScreenSample = new(200, 0.5, 0.5);
    private Color _displayedAdaptiveColor = Colors.Cyan;
    private double _hueCycleDeg;
    private float[] _colorJitter = Array.Empty<float>();

    private Color _staticColorCached;
    private Color _gradientStartCached;
    private Color _gradientEndCached;

    private string _lastProcessName = string.Empty;
    private bool _lastIncludeChildren;
    private int _lastFftSize = -1;

    private double _silenceTimer;
    private bool _isQuietHeld;
    private float _visibilityFade = 1f;
    private float[]? _lastActiveBars;
    private double _idlePulsePhase;
    private double _asymmetryPhase;
    private float[] _peakLevels = Array.Empty<float>();

    public OverlayController(VisualizerSettings settings)
    {
        _settings = settings;
        var fftSize = Math.Clamp(settings.FftSize, 256, 8192);
        _analyzer = new SpectrumAnalyzer(fftSize);
        _leftAnalyzer = new SpectrumAnalyzer(fftSize);
        _rightAnalyzer = new SpectrumAnalyzer(fftSize);
        _colorSampler = new ScreenColorSampler();
        _colorSampler.Sampled += sample => _lastScreenSample = sample;

        CompositionTarget.Rendering += OnRendering;

        ApplySettings(settings);
        SetVisible(settings.StartVisible);
    }

    public bool IsVisible => _visible;
    public bool IsCapturingAudio => _capture?.IsCapturing ?? false;
    public IReadOnlyList<int> ActiveProcessIds => _capture?.ActiveProcessIds ?? Array.Empty<int>();

    public void ApplySettings(VisualizerSettings settings)
    {
        _settings = settings;
        RecacheStaticColors();
        SyncCapture(settings);
        SyncAnalyzer(settings);
        SyncWindows(settings);
        SyncColorSampler(settings);
    }

    public void SetVisible(bool visible)
    {
        _visible = visible;
        foreach (var window in _windows.Values)
        {
            if (visible)
            {
                window.Show();
            }
            else
            {
                window.Hide();
            }
        }
        SyncColorSampler(_settings);
    }

    public void ToggleVisible() => SetVisible(!_visible);

    private void SyncCapture(VisualizerSettings settings)
    {
        if (_capture != null &&
            settings.TargetProcessName == _lastProcessName &&
            settings.IncludeChildProcesses == _lastIncludeChildren)
        {
            return;
        }

        if (_capture != null)
        {
            _capture.SamplesAvailable -= OnSamplesAvailable;
            _capture.Dispose();
        }

        _capture = new ProcessLoopbackCapture(settings.TargetProcessName, settings.IncludeChildProcesses);
        _capture.SamplesAvailable += OnSamplesAvailable;
        _capture.Start();

        _playbackMonitor?.Dispose();
        _playbackMonitor = new SpotifyPlaybackMonitor(settings.TargetProcessName);
        _playbackMonitor.Start();

        _lastProcessName = settings.TargetProcessName;
        _lastIncludeChildren = settings.IncludeChildProcesses;
    }

    private void OnSamplesAvailable(float[] mono, float[] left, float[] right, int sampleRate)
    {
        _analyzer.PushSamples(mono, sampleRate);
        _leftAnalyzer.PushSamples(left, sampleRate);
        _rightAnalyzer.PushSamples(right, sampleRate);
    }

    private void SyncAnalyzer(VisualizerSettings settings)
    {
        if (settings.FftSize == _lastFftSize)
        {
            return;
        }
        _analyzer.Reconfigure(settings.FftSize);
        _leftAnalyzer.Reconfigure(settings.FftSize);
        _rightAnalyzer.Reconfigure(settings.FftSize);
        _lastFftSize = settings.FftSize;
    }

    private void SyncWindows(VisualizerSettings settings)
    {
        foreach (var edge in AllEdges)
        {
            var shouldBeActive = settings.ActiveEdges.HasFlag(edge);
            var exists = _windows.TryGetValue(edge, out var window);

            if (shouldBeActive && !exists)
            {
                window = new OverlayWindow(edge);
                _windows[edge] = window;
                window.ApplyGeometry(settings);
                if (_visible)
                {
                    window.Show();
                }
            }
            else if (!shouldBeActive && exists)
            {
                window!.Close();
                _windows.Remove(edge);
            }
            else if (exists)
            {
                window!.ApplyGeometry(settings);
            }
        }
    }

    private void SyncColorSampler(VisualizerSettings settings)
    {
        if (_visible && settings.ColorMode == ColorMode.AdaptiveToScreen)
        {
            _colorSampler.Start(settings.AdaptiveSampleIntervalMs);
        }
        else
        {
            _colorSampler.Stop();
        }
    }

    private void RecacheStaticColors()
    {
        _staticColorCached = ParseColor(_settings.StaticColorHex, Colors.Cyan);
        _gradientStartCached = ParseColor(_settings.GradientStartHex, Colors.Cyan);
        _gradientEndCached = ParseColor(_settings.GradientEndHex, Colors.Magenta);
    }

    private void OnRendering(object? sender, EventArgs e)
    {
        if (!_visible || _windows.Count == 0)
        {
            return;
        }

        var now = DateTime.UtcNow;
        var minInterval = TimeSpan.FromSeconds(1.0 / Math.Max(_settings.TargetFps, 1));
        if (now - _lastFrame < minInterval)
        {
            return;
        }
        var dt = _lastFrame == DateTime.MinValue ? 1.0 / 60.0 : (now - _lastFrame).TotalSeconds;
        _lastFrame = now;

        var barCount = Math.Max(_settings.BarCount, 1);
        var hasCapture = _capture?.IsCapturing ?? false;
        var useStereo = _settings.StereoSplit && _settings.GrowthStyle == BarGrowthStyle.FromCenter;

        float[] bars;
        float[]? leftBars = null;
        float[]? rightBars = null;

        if (hasCapture)
        {
            bars = _analyzer.ComputeBars(barCount, _settings.Sensitivity, _settings.AttackSpeed, _settings.DecaySpeed,
                _settings.NoiseGate, _settings.JitterAmount, _settings.LowFrequencyHz, _settings.HighFrequencyHz,
                _settings.AutoGainEnabled, _settings.AutoGainSpeed);

            if (useStereo)
            {
                leftBars = _leftAnalyzer.ComputeBars(barCount, _settings.Sensitivity, _settings.AttackSpeed, _settings.DecaySpeed,
                    _settings.NoiseGate, _settings.JitterAmount, _settings.LowFrequencyHz, _settings.HighFrequencyHz,
                    _settings.AutoGainEnabled, _settings.AutoGainSpeed);
                rightBars = _rightAnalyzer.ComputeBars(barCount, _settings.Sensitivity, _settings.AttackSpeed, _settings.DecaySpeed,
                    _settings.NoiseGate, _settings.JitterAmount, _settings.LowFrequencyHz, _settings.HighFrequencyHz,
                    _settings.AutoGainEnabled, _settings.AutoGainSpeed);
            }
        }
        else
        {
            bars = _analyzer.DecayOnly(barCount, _settings.DecaySpeed);
            if (useStereo)
            {
                leftBars = _leftAnalyzer.DecayOnly(barCount, _settings.DecaySpeed);
                rightBars = _rightAnalyzer.DecayOnly(barCount, _settings.DecaySpeed);
            }
        }

        var activity = 0f;
        foreach (var v in bars)
        {
            if (v > activity)
            {
                activity = v;
            }
        }
        UpdateSilenceState(hasCapture, activity, dt);

        float[] finalBars;
        if (_settings.GrowthStyle == BarGrowthStyle.FromCenter)
        {
            _asymmetryPhase += dt * 0.35;
            finalBars = useStereo && leftBars != null && rightBars != null
                ? StereoMirrorFromCenter(leftBars, rightBars, _settings.AsymmetryAmount, _asymmetryPhase)
                : MirrorFromCenter(bars, _settings.AsymmetryAmount, _asymmetryPhase);
        }
        else
        {
            finalBars = bars;
        }

        finalBars = ApplySilenceBehavior(finalBars, dt);
        UpdatePeakLevels(finalBars);

        var colors = ComputeBarColors(finalBars.Length, dt);
        var peaks = _settings.PeakHoldEnabled ? _peakLevels : null;

        NativeMethods.POINT? cursor = null;
        if (_settings.CursorFadeEnabled && NativeMethods.GetCursorPos(out var pt))
        {
            cursor = pt;
        }

        foreach (var window in _windows.Values)
        {
            window.UpdateFrame(finalBars, colors, peaks, _visibilityFade, cursor);
        }
    }

    private void UpdateSilenceState(bool hasCapture, float activity, double dt)
    {
        var spotifyPaused = _settings.GateOnSpotifyPlaybackState && _playbackMonitor?.IsPlaying == false;
        var isQuiet = !hasCapture || spotifyPaused || activity < _settings.SilenceThreshold;
        _silenceTimer = isQuiet ? _silenceTimer + dt : 0;
        _isQuietHeld = _silenceTimer >= Math.Max(_settings.SilenceHoldSeconds, 0);

        if (_settings.SilenceBehavior == OnSilenceBehavior.FadeOut)
        {
            var target = _isQuietHeld ? 0f : 1f;
            var durationSeconds = target < _visibilityFade ? _settings.SilenceFadeOutSeconds : _settings.SilenceFadeInSeconds;
            var rate = (float)Math.Clamp(dt / Math.Max(durationSeconds, 0.02), 0, 1);
            _visibilityFade += (target - _visibilityFade) * rate;
            _visibilityFade = Math.Clamp(_visibilityFade, 0f, 1f);
        }
        else
        {
            _visibilityFade = 1f;
        }
    }

    private float[] ApplySilenceBehavior(float[] bars, double dt)
    {
        if (!_isQuietHeld)
        {
            _lastActiveBars = bars;
            return bars;
        }

        return _settings.SilenceBehavior switch
        {
            OnSilenceBehavior.KeepLastFrame => _lastActiveBars ?? bars,
            OnSilenceBehavior.GentleIdlePulse => ComputeIdlePulse(bars.Length, dt),
            _ => bars,
        };
    }

    private float[] ComputeIdlePulse(int barCount, double dt)
    {
        _idlePulsePhase += dt * _settings.IdlePulseSpeed * Math.PI * 2;
        var result = new float[barCount];
        for (var i = 0; i < barCount; i++)
        {
            var t = barCount <= 1 ? 0.0 : (double)i / (barCount - 1);
            var wave = Math.Sin(_idlePulsePhase + t * Math.PI * 2) * 0.5 + 0.5;
            result[i] = (float)Math.Clamp(wave * _settings.IdlePulseAmount, 0, 1);
        }
        return result;
    }

    private void UpdatePeakLevels(float[] bars)
    {
        if (_peakLevels.Length != bars.Length)
        {
            _peakLevels = new float[bars.Length];
        }
        var fall = (float)Math.Clamp(_settings.PeakHoldFallSpeed, 0, 1);
        for (var i = 0; i < bars.Length; i++)
        {
            _peakLevels[i] = Math.Max(bars[i], _peakLevels[i] - fall);
        }
    }

    private Color[] ComputeBarColors(int barCount, double dt)
    {
        var colors = _settings.ColorMode switch
        {
            ColorMode.StaticColor => Fill(barCount, _staticColorCached),
            ColorMode.Gradient => BuildGradientColors(barCount),
            ColorMode.CyclingHue => BuildCyclingHueColors(barCount, dt),
            _ => BuildAdaptiveColors(barCount),
        };

        if (_settings.ColorVariationAmount > 0)
        {
            ApplyColorVariation(colors);
        }

        return colors;
    }

    private Color[] BuildGradientColors(int barCount)
    {
        var colors = new Color[barCount];
        for (var i = 0; i < barCount; i++)
        {
            var t = barCount <= 1 ? 0.0 : (double)i / (barCount - 1);
            colors[i] = LerpColor(_gradientStartCached, _gradientEndCached, t);
        }
        return colors;
    }

    private Color[] BuildCyclingHueColors(int barCount, double dt)
    {
        _hueCycleDeg = (_hueCycleDeg + _settings.HueCycleSpeedDegPerSec * dt) % 360.0;
        var colors = new Color[barCount];
        const double rainbowSpreadDeg = 70.0;
        for (var i = 0; i < barCount; i++)
        {
            var t = barCount <= 1 ? 0.0 : (double)i / (barCount - 1);
            var hue = _hueCycleDeg + t * rainbowSpreadDeg;
            colors[i] = AdaptivePalette.HslToColor(hue, 0.85, 0.55);
        }
        return colors;
    }

    private Color[] BuildAdaptiveColors(int barCount)
    {
        var target = AdaptivePalette.ComputeBarColor(_lastScreenSample, _settings);
        var lerp = Math.Clamp(_settings.ColorTransitionSpeed, 0.001, 1.0);
        _displayedAdaptiveColor = LerpColor(_displayedAdaptiveColor, target, lerp);
        return Fill(barCount, _displayedAdaptiveColor);
    }

    private void ApplyColorVariation(Color[] colors)
    {
        if (_colorJitter.Length != colors.Length)
        {
            _colorJitter = new float[colors.Length];
            for (var i = 0; i < colors.Length; i++)
            {
                _colorJitter[i] = (float)(_colorJitterRandom.NextDouble() * 2 - 1);
            }
        }

        var amount = Math.Clamp(_settings.ColorVariationAmount, 0, 1);
        for (var i = 0; i < colors.Length; i++)
        {
            var (h, s, l) = AdaptivePalette.ToHsl(colors[i]);
            colors[i] = AdaptivePalette.HslToColor(h + _colorJitter[i] * amount * 40.0, s, l);
        }
    }

    /// <summary>
    /// Maps each strip slot to a source bar index that grows away from the center (bass in
    /// the middle, treble toward the edges), with a slow per-side wobble so the two halves
    /// stay roughly mirrored in shape without being pixel-identical.
    /// </summary>
    private static int MirroredSourceIndex(int slot, double center, double half, int count, double asymmetryAmount, double phase)
    {
        var signedDistance = slot - center;
        var distance = Math.Abs(signedDistance);
        var side = Math.Sign(signedDistance);
        var wobble = Math.Sin(phase + side * 1.7) * asymmetryAmount * half * 0.25;
        var adjustedDistance = Math.Clamp(distance + wobble, 0, half - 1);
        return half <= 1
            ? 0
            : Math.Clamp((int)Math.Round(adjustedDistance / (half - 1) * (count - 1)), 0, count - 1);
    }

    private static float[] MirrorFromCenter(float[] source, double asymmetryAmount, double phase)
    {
        var count = source.Length;
        var result = new float[count];
        var center = (count - 1) / 2.0;
        var half = Math.Max((count + 1) / 2, 1);

        for (var slot = 0; slot < count; slot++)
        {
            var idx = MirroredSourceIndex(slot, center, half, count, asymmetryAmount, phase);
            result[slot] = source[idx];
        }
        return result;
    }

    /// <summary>Left half of the strip driven by the left channel, right half by the right channel.</summary>
    private static float[] StereoMirrorFromCenter(float[] left, float[] right, double asymmetryAmount, double phase)
    {
        var count = left.Length;
        var result = new float[count];
        var center = (count - 1) / 2.0;
        var half = Math.Max((count + 1) / 2, 1);

        for (var slot = 0; slot < count; slot++)
        {
            var idx = MirroredSourceIndex(slot, center, half, count, asymmetryAmount, phase);
            var side = Math.Sign(slot - center);
            result[slot] = (side < 0 ? left : right)[idx];
        }
        return result;
    }

    private static Color[] Fill(int count, Color color)
    {
        var arr = new Color[count];
        Array.Fill(arr, color);
        return arr;
    }

    private static Color LerpColor(Color a, Color b, double t)
    {
        t = Math.Clamp(t, 0, 1);
        byte LerpByte(byte x, byte y) => (byte)(x + (y - x) * t);
        return Color.FromRgb(LerpByte(a.R, b.R), LerpByte(a.G, b.G), LerpByte(a.B, b.B));
    }

    private static Color ParseColor(string hex, Color fallback)
    {
        try
        {
            return ColorConverter.ConvertFromString(hex) is Color color ? color : fallback;
        }
        catch
        {
            return fallback;
        }
    }

    public void Dispose()
    {
        CompositionTarget.Rendering -= OnRendering;
        _colorSampler.Dispose();
        _capture?.Dispose();
        _playbackMonitor?.Dispose();
        foreach (var window in _windows.Values)
        {
            window.Close();
        }
        _windows.Clear();
    }
}
