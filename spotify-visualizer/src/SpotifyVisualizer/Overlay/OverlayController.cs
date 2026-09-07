using System.Windows.Media;
using SpotifyVisualizer.Audio;
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
    private readonly ScreenColorSampler _colorSampler;

    private VisualizerSettings _settings;
    private ProcessLoopbackCapture? _capture;
    private bool _visible;
    private DateTime _lastFrame = DateTime.MinValue;

    private DominantColorSample _lastScreenSample = new(200, 0.5, 0.5);
    private Color _displayedAdaptiveColor = Colors.Cyan;
    private double _hueCycleDeg;

    private Color _staticColorCached;
    private Color _gradientStartCached;
    private Color _gradientEndCached;

    private string _lastProcessName = string.Empty;
    private bool _lastIncludeChildren;
    private int _lastFftSize = -1;

    public OverlayController(VisualizerSettings settings)
    {
        _settings = settings;
        _analyzer = new SpectrumAnalyzer(Math.Clamp(settings.FftSize, 256, 8192));
        _colorSampler = new ScreenColorSampler();
        _colorSampler.Sampled += sample => _lastScreenSample = sample;

        CompositionTarget.Rendering += OnRendering;

        ApplySettings(settings);
        SetVisible(settings.StartVisible);
    }

    public bool IsVisible => _visible;
    public bool IsCapturingAudio => _capture?.IsCapturing ?? false;

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
            _capture.SamplesAvailable -= _analyzer.PushSamples;
            _capture.Dispose();
        }

        _capture = new ProcessLoopbackCapture(settings.TargetProcessName, settings.IncludeChildProcesses);
        _capture.SamplesAvailable += _analyzer.PushSamples;
        _capture.Start();

        _lastProcessName = settings.TargetProcessName;
        _lastIncludeChildren = settings.IncludeChildProcesses;
    }

    private void SyncAnalyzer(VisualizerSettings settings)
    {
        if (settings.FftSize == _lastFftSize)
        {
            return;
        }
        _analyzer.Reconfigure(settings.FftSize);
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

        var bars = _analyzer.ComputeBars(
            Math.Max(_settings.BarCount, 1),
            _settings.Sensitivity,
            _settings.AttackSpeed,
            _settings.DecaySpeed,
            _settings.NoiseGate,
            _settings.JitterAmount,
            _settings.LowFrequencyHz,
            _settings.HighFrequencyHz);

        if (_settings.GrowthStyle == BarGrowthStyle.FromCenter)
        {
            bars = MirrorFromCenter(bars);
        }

        var colors = ComputeBarColors(bars.Length, dt);

        foreach (var window in _windows.Values)
        {
            window.UpdateFrame(bars, colors);
        }
    }

    private Color[] ComputeBarColors(int barCount, double dt)
    {
        switch (_settings.ColorMode)
        {
            case ColorMode.StaticColor:
                return Fill(barCount, _staticColorCached);

            case ColorMode.Gradient:
            {
                var colors = new Color[barCount];
                for (var i = 0; i < barCount; i++)
                {
                    var t = barCount <= 1 ? 0.0 : (double)i / (barCount - 1);
                    colors[i] = LerpColor(_gradientStartCached, _gradientEndCached, t);
                }
                return colors;
            }

            case ColorMode.CyclingHue:
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

            case ColorMode.AdaptiveToScreen:
            default:
            {
                var target = AdaptivePalette.ComputeBarColor(_lastScreenSample, _settings);
                var lerp = Math.Clamp(_settings.ColorTransitionSpeed, 0.001, 1.0);
                _displayedAdaptiveColor = LerpColor(_displayedAdaptiveColor, target, lerp);
                return Fill(barCount, _displayedAdaptiveColor);
            }
        }
    }

    private static float[] MirrorFromCenter(float[] source)
    {
        var count = source.Length;
        var result = new float[count];
        var center = (count - 1) / 2.0;
        var half = Math.Max((count + 1) / 2, 1);

        for (var slot = 0; slot < count; slot++)
        {
            var distance = Math.Abs(slot - center);
            var sourceIndex = half <= 1
                ? 0
                : Math.Clamp((int)Math.Round(distance / (half - 1) * (count - 1)), 0, count - 1);
            result[slot] = source[sourceIndex];
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
        foreach (var window in _windows.Values)
        {
            window.Close();
        }
        _windows.Clear();
    }
}
