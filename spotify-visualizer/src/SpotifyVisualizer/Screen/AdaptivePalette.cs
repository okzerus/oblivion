using System.Windows.Media;
using SpotifyVisualizer.Models;

namespace SpotifyVisualizer.Screen;

/// <summary>Turns a sampled dominant screen color into a bar color that won't blend into it.</summary>
public static class AdaptivePalette
{
    public static Color ComputeBarColor(DominantColorSample screen, VisualizerSettings settings)
    {
        var offset = Math.Max(settings.AdaptiveHueOffsetDegrees, settings.AdaptiveMinHueOffsetDegrees);
        var hue = screen.HueDegrees + offset;

        var saturation = Math.Clamp(screen.Saturation + settings.AdaptiveSaturationBoost, 0.15, 1.0);

        // Push bar lightness away from the screen's own lightness: a bright bar over a dark
        // screen, a darker/more saturated bar over a bright one, so it never washes out.
        var lightness = settings.AdaptiveMaxLightness -
                         (settings.AdaptiveMaxLightness - settings.AdaptiveMinLightness) * screen.Lightness;
        lightness = Math.Clamp(lightness, settings.AdaptiveMinLightness, settings.AdaptiveMaxLightness);

        return HslToColor(hue, saturation, lightness);
    }

    public static Color HslToColor(double h, double s, double l)
    {
        h = ((h % 360) + 360) % 360;
        var c = (1 - Math.Abs(2 * l - 1)) * s;
        var x = c * (1 - Math.Abs(h / 60.0 % 2 - 1));
        var m = l - c / 2;

        var (r1, g1, b1) = h switch
        {
            < 60 => (c, x, 0.0),
            < 120 => (x, c, 0.0),
            < 180 => (0.0, c, x),
            < 240 => (0.0, x, c),
            < 300 => (x, 0.0, c),
            _ => (c, 0.0, x),
        };

        var r = (byte)Math.Clamp((r1 + m) * 255.0, 0, 255);
        var g = (byte)Math.Clamp((g1 + m) * 255.0, 0, 255);
        var b = (byte)Math.Clamp((b1 + m) * 255.0, 0, 255);

        return Color.FromRgb(r, g, b);
    }

    public static (double H, double S, double L) ToHsl(Color color)
    {
        double r = color.R / 255.0, g = color.G / 255.0, b = color.B / 255.0;
        var max = Math.Max(r, Math.Max(g, b));
        var min = Math.Min(r, Math.Min(g, b));
        var l = (max + min) / 2.0;

        if (max - min < 1e-6)
        {
            return (0, 0, l);
        }

        var delta = max - min;
        var s = l > 0.5 ? delta / (2.0 - max - min) : delta / (max + min);

        double h;
        if (max == r)
        {
            h = 60 * (((g - b) / delta) % 6);
        }
        else if (max == g)
        {
            h = 60 * (((b - r) / delta) + 2);
        }
        else
        {
            h = 60 * (((r - g) / delta) + 4);
        }
        if (h < 0)
        {
            h += 360;
        }

        return (h, s, l);
    }
}
