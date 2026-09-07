using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Effects;
using SpotifyVisualizer.Models;

namespace SpotifyVisualizer.Overlay;

/// <summary>One frame's worth of data for a <see cref="BarsCanvas"/> to draw.</summary>
internal sealed class BarFrame
{
    public float[] Values { get; init; } = Array.Empty<float>();
    public Color[] Colors { get; init; } = Array.Empty<Color>();
    public float[]? PeakLevels { get; init; }
    public float VisibilityFade { get; init; } = 1f;
    /// <summary>Cursor position in this canvas's own local coordinates, or null if cursor fade is off.</summary>
    public Point? CursorLocal { get; init; }
}

/// <summary>Draws one edge's strip of bars. Orientation and geometry come from <see cref="VisualizerSettings"/>.</summary>
internal sealed class BarsCanvas : FrameworkElement
{
    public ScreenEdges Edge { get; init; } = ScreenEdges.Bottom;

    private VisualizerSettings _settings = new();
    private BarFrame _frame = new();
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

    public void UpdateFrame(BarFrame frame)
    {
        _frame = frame;

        if (_settings.GlowEnabled && frame.Colors.Length > 0)
        {
            var representative = frame.Colors[frame.Colors.Length / 2];
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
        var values = _frame.Values;
        var colors = _frame.Colors;
        var barCount = values.Length;
        if (barCount == 0 || colors.Length != barCount || _frame.VisibilityFade <= 0f)
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

        var repeatCount = Math.Max(_settings.RepeatCount, 1);
        var spacing = Math.Max(_settings.RepeatSpacingPx, 0);
        var tileLength = (mainAxisLength - spacing * (repeatCount - 1)) / repeatCount;
        if (tileLength <= 0)
        {
            return;
        }

        var slot = tileLength / barCount;
        var thickness = Math.Max(1.0, slot * _settings.BarThicknessFraction);
        var gap = (slot - thickness) / 2.0;
        var margin = _settings.EdgeMarginPx;
        var baseOpacity = Math.Clamp(_settings.Opacity, 0.0, 1.0) * Math.Clamp(_frame.VisibilityFade, 0f, 1f);
        var peaks = _frame.PeakLevels;

        for (var tile = 0; tile < repeatCount; tile++)
        {
            var tileStart = tile * (tileLength + spacing);
            var mirrorTile = _settings.RepeatAlternateMirror && tile % 2 == 1;

            for (var slotIndex = 0; slotIndex < barCount; slotIndex++)
            {
                var i = mirrorTile ? barCount - 1 - slotIndex : slotIndex;
                var mainPos = tileStart + slotIndex * slot + gap;

                var length = _settings.MinBarLengthPx +
                             (_settings.MaxBarLengthPx - _settings.MinBarLengthPx) * Math.Clamp(values[i], 0f, 1f);
                length = Math.Clamp(length, 0, crossAxisLength - margin);

                var fade = ComputeCursorFade(mainPos + thickness / 2.0);
                var alpha = baseOpacity * fade;
                if (alpha <= 0.003)
                {
                    continue;
                }

                var color = colors[i];

                if (_settings.ReflectionEnabled && length > 0)
                {
                    var trailLength = length * Math.Clamp(_settings.ReflectionLengthFraction, 0, 2);
                    var trailRect = BuildRect(mainPos, thickness, margin + length, trailLength, crossAxisLength);
                    DrawBar(dc, trailRect, color, alpha * _settings.ReflectionOpacity);
                }

                if (length > 0)
                {
                    var rect = BuildRect(mainPos, thickness, margin, length, crossAxisLength);
                    DrawBar(dc, rect, color, alpha);
                }

                if (_settings.PeakHoldEnabled && peaks != null && i < peaks.Length)
                {
                    var peakLength = Math.Clamp(peaks[i], 0f, 1f) *
                                      (_settings.MaxBarLengthPx - _settings.MinBarLengthPx) + _settings.MinBarLengthPx;
                    var capThickness = Math.Max(_settings.PeakHoldThicknessPx, 1.0);
                    var capStart = margin + Math.Max(peakLength - capThickness, 0);
                    var capRect = BuildRect(mainPos, thickness, capStart, capThickness, crossAxisLength);
                    DrawBar(dc, capRect, color, alpha);
                }
            }
        }
    }

    /// <summary>
    /// Builds this bar segment's rect for the current edge. <paramref name="growthStart"/> is the
    /// distance from the true screen edge to the segment's near side; <paramref name="growthLength"/>
    /// is how far it extends further from the edge.
    /// </summary>
    private Rect BuildRect(double mainPos, double thickness, double growthStart, double growthLength, double crossAxisLength)
    {
        if (growthLength <= 0)
        {
            return Rect.Empty;
        }

        return Edge switch
        {
            ScreenEdges.Bottom => new Rect(mainPos, crossAxisLength - growthStart - growthLength, thickness, growthLength),
            ScreenEdges.Top => new Rect(mainPos, growthStart, thickness, growthLength),
            ScreenEdges.Left => new Rect(growthStart, mainPos, growthLength, thickness),
            ScreenEdges.Right => new Rect(crossAxisLength - growthStart - growthLength, mainPos, growthLength, thickness),
            _ => Rect.Empty,
        };
    }

    private void DrawBar(DrawingContext dc, Rect rect, Color color, double alpha)
    {
        if (rect.IsEmpty || rect.Width <= 0 || rect.Height <= 0 || alpha <= 0)
        {
            return;
        }

        color.A = (byte)(255 * Math.Clamp(alpha, 0, 1));
        var brush = new SolidColorBrush(color);
        brush.Freeze();

        var radius = Math.Min(_settings.CornerRadiusPx, Math.Min(rect.Width, rect.Height) / 2.0);
        dc.DrawRoundedRectangle(brush, null, rect, radius, radius);
    }

    /// <summary>1 = unaffected, down to (1 - CursorFadeStrength) right at the cursor's position.</summary>
    private double ComputeCursorFade(double barCenterMainPos)
    {
        if (!_settings.CursorFadeEnabled || _frame.CursorLocal is not { } cursor)
        {
            return 1.0;
        }

        var vertical = Edge is ScreenEdges.Left or ScreenEdges.Right;
        var crossAxisLength = vertical ? ActualWidth : ActualHeight;
        var crossPos = vertical ? cursor.X : cursor.Y;
        var margin = _settings.CursorFadeCrossAxisMarginPx;
        if (crossPos < -margin || crossPos > crossAxisLength + margin)
        {
            return 1.0;
        }

        var mainPos = vertical ? cursor.Y : cursor.X;
        var radius = Math.Max(_settings.CursorFadeRadiusPx, 1.0);
        var t = Math.Clamp(Math.Abs(barCenterMainPos - mainPos) / radius, 0, 1);
        var falloff = t * t * (3 - 2 * t); // smoothstep: soft dip rather than a hard cutoff
        return 1.0 - (1.0 - falloff) * Math.Clamp(_settings.CursorFadeStrength, 0, 1);
    }

    private static double ColorDistance(Color a, Color b)
    {
        var dr = a.R - b.R;
        var dg = a.G - b.G;
        var db = a.B - b.B;
        return Math.Sqrt(dr * dr + dg * dg + db * db);
    }
}
