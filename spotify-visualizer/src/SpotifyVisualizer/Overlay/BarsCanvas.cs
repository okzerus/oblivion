using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Effects;
using SpotifyVisualizer.Models;

namespace SpotifyVisualizer.Overlay;

/// <summary>Draws one edge's strip of bars. Orientation and geometry come from <see cref="VisualizerSettings"/>.</summary>
internal sealed class BarsCanvas : FrameworkElement
{
    public ScreenEdges Edge { get; init; } = ScreenEdges.Bottom;

    private VisualizerSettings _settings = new();
    private float[] _barValues = Array.Empty<float>();
    private Color[] _barColors = Array.Empty<Color>();
    private DropShadowEffect? _glow;
    private Color _lastGlowColor;

    public BarsCanvas()
    {
        IsHitTestVisible = false;
        SnapsToDevicePixels = true;
    }

    public void SetSettings(VisualizerSettings settings)
    {
        _settings = settings;
        InvalidateVisual();
    }

    public void UpdateFrame(float[] barValues, Color[] barColors)
    {
        _barValues = barValues;
        _barColors = barColors;

        if (_settings.GlowEnabled && barColors.Length > 0)
        {
            var representative = barColors[barColors.Length / 2];
            if (_glow == null || ColorDistance(representative, _lastGlowColor) > 6)
            {
                _lastGlowColor = representative;
                _glow = new DropShadowEffect
                {
                    Color = representative,
                    BlurRadius = _settings.GlowRadiusPx * 2,
                    ShadowDepth = 0,
                    Opacity = 0.55,
                    RenderingBias = RenderingBias.Performance,
                };
                Effect = _glow;
            }
        }
        else if (Effect != null)
        {
            Effect = null;
            _glow = null;
        }

        InvalidateVisual();
    }

    protected override void OnRender(DrawingContext dc)
    {
        var values = _barValues;
        var colors = _barColors;
        if (values.Length == 0 || colors.Length != values.Length)
        {
            return;
        }

        var vertical = Edge is ScreenEdges.Left or ScreenEdges.Right;
        var mainAxisLength = vertical ? ActualHeight : ActualWidth;
        var crossAxisLength = vertical ? ActualWidth : ActualHeight;
        if (mainAxisLength <= 0 || crossAxisLength <= 0)
        {
            return;
        }

        var barCount = values.Length;
        var slot = mainAxisLength / barCount;
        var thickness = Math.Max(1.0, slot * _settings.BarThicknessFraction);
        var gap = (slot - thickness) / 2.0;
        var margin = _settings.EdgeMarginPx;
        var opacity = Math.Clamp(_settings.Opacity, 0.0, 1.0);

        for (var i = 0; i < barCount; i++)
        {
            var length = _settings.MinBarLengthPx +
                         (_settings.MaxBarLengthPx - _settings.MinBarLengthPx) * Math.Clamp(values[i], 0f, 1f);
            length = Math.Clamp(length, 0, crossAxisLength - margin);
            if (length <= 0)
            {
                continue;
            }

            var rect = Edge switch
            {
                ScreenEdges.Bottom => new Rect(i * slot + gap, crossAxisLength - margin - length, thickness, length),
                ScreenEdges.Top => new Rect(i * slot + gap, margin, thickness, length),
                ScreenEdges.Left => new Rect(margin, i * slot + gap, length, thickness),
                ScreenEdges.Right => new Rect(crossAxisLength - margin - length, i * slot + gap, length, thickness),
                _ => Rect.Empty,
            };
            if (rect.IsEmpty || rect.Width <= 0 || rect.Height <= 0)
            {
                continue;
            }

            var color = colors[i];
            color.A = (byte)(255 * opacity);
            var brush = new SolidColorBrush(color);
            brush.Freeze();

            var radius = Math.Min(_settings.CornerRadiusPx, Math.Min(rect.Width, rect.Height) / 2.0);
            dc.DrawRoundedRectangle(brush, null, rect, radius, radius);
        }
    }

    private static double ColorDistance(Color a, Color b)
    {
        var dr = a.R - b.R;
        var dg = a.G - b.G;
        var db = a.B - b.B;
        return Math.Sqrt(dr * dr + dg * dg + db * db);
    }
}
