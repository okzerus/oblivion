using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

namespace SpotifyVisualizer.Screen;

public readonly record struct DominantColorSample(double HueDegrees, double Saturation, double Lightness);

/// <summary>
/// Periodically grabs a downsampled copy of the primary screen and extracts a "dominant"
/// hue/saturation/lightness using a saturation-weighted hue histogram, so a colorful game
/// or video dominates the result rather than washing out to gray like a flat average would.
/// The overlay windows must be excluded from capture (SetWindowDisplayAffinity) so this
/// never samples the bars it is itself driving the color of.
/// </summary>
public sealed class ScreenColorSampler : IDisposable
{
    private const int SampleWidth = 64;
    private const int SampleHeight = 36;

    public event Action<DominantColorSample>? Sampled;

    private System.Threading.Timer? _timer;

    public void Start(int intervalMs)
    {
        Stop();
        _timer = new System.Threading.Timer(_ => SampleOnce(), null, 0, Math.Max(intervalMs, 100));
    }

    public void Stop()
    {
        _timer?.Dispose();
        _timer = null;
    }

    private void SampleOnce()
    {
        try
        {
            var bounds = System.Windows.Forms.Screen.PrimaryScreen?.Bounds ?? new Rectangle(0, 0, 1920, 1080);

            using var fullBmp = new Bitmap(bounds.Width, bounds.Height, PixelFormat.Format32bppArgb);
            using (var g = Graphics.FromImage(fullBmp))
            {
                g.CopyFromScreen(bounds.Left, bounds.Top, 0, 0, bounds.Size, CopyPixelOperation.SourceCopy);
            }

            using var smallBmp = new Bitmap(SampleWidth, SampleHeight, PixelFormat.Format32bppArgb);
            using (var g2 = Graphics.FromImage(smallBmp))
            {
                g2.InterpolationMode = InterpolationMode.HighQualityBilinear;
                g2.DrawImage(fullBmp, new Rectangle(0, 0, SampleWidth, SampleHeight));
            }

            Sampled?.Invoke(ComputeDominantColor(smallBmp));
        }
        catch
        {
            // Screen capture can transiently fail (display mode change, protected-content
            // exclusion, etc.) - just skip this tick and try again on the next interval.
        }
    }

    private static DominantColorSample ComputeDominantColor(Bitmap bmp)
    {
        var rect = new Rectangle(0, 0, bmp.Width, bmp.Height);
        var data = bmp.LockBits(rect, ImageLockMode.ReadOnly, PixelFormat.Format32bppArgb);
        try
        {
            var stride = data.Stride;
            var buffer = new byte[stride * bmp.Height];
            Marshal.Copy(data.Scan0, buffer, 0, buffer.Length);

            const int bucketCount = 24;
            var bucketWeight = new double[bucketCount];
            var bucketHueSum = new double[bucketCount];

            double totalSat = 0, totalLight = 0;
            var count = 0;

            for (var y = 0; y < bmp.Height; y++)
            {
                var rowOffset = y * stride;
                for (var x = 0; x < bmp.Width; x++)
                {
                    var idx = rowOffset + x * 4;
                    var b = buffer[idx];
                    var g = buffer[idx + 1];
                    var r = buffer[idx + 2];

                    RgbToHsl(r, g, b, out var h, out var s, out var l);

                    var bucket = Math.Clamp((int)(h / 360.0 * bucketCount), 0, bucketCount - 1);
                    bucketWeight[bucket] += s;
                    bucketHueSum[bucket] += h * s;

                    totalSat += s;
                    totalLight += l;
                    count++;
                }
            }

            var best = 0;
            for (var i = 1; i < bucketCount; i++)
            {
                if (bucketWeight[i] > bucketWeight[best])
                {
                    best = i;
                }
            }

            var avgSat = totalSat / Math.Max(count, 1);
            var avgLight = totalLight / Math.Max(count, 1);
            var dominantHue = bucketWeight[best] > 0.001 ? bucketHueSum[best] / bucketWeight[best] : 0.0;

            return new DominantColorSample(dominantHue, avgSat, avgLight);
        }
        finally
        {
            bmp.UnlockBits(data);
        }
    }

    private static void RgbToHsl(byte r, byte g, byte b, out double h, out double s, out double l)
    {
        double rd = r / 255.0, gd = g / 255.0, bd = b / 255.0;
        var max = Math.Max(rd, Math.Max(gd, bd));
        var min = Math.Min(rd, Math.Min(gd, bd));
        l = (max + min) / 2.0;

        if (max - min < 1e-6)
        {
            h = 0;
            s = 0;
            return;
        }

        var delta = max - min;
        s = l > 0.5 ? delta / (2.0 - max - min) : delta / (max + min);

        if (max == rd)
        {
            h = 60 * (((gd - bd) / delta) % 6);
        }
        else if (max == gd)
        {
            h = 60 * (((bd - rd) / delta) + 2);
        }
        else
        {
            h = 60 * (((rd - gd) / delta) + 4);
        }

        if (h < 0)
        {
            h += 360;
        }
    }

    public void Dispose() => Stop();
}
