namespace SpotifyVisualizer.Audio;

/// <summary>Small in-place iterative radix-2 Cooley-Tukey FFT. Length must be a power of two.</summary>
internal static class FastFourierTransform
{
    public static void Forward(float[] re, float[] im)
    {
        var n = re.Length;
        if (n != im.Length || (n & (n - 1)) != 0)
        {
            throw new ArgumentException("FFT length must be a power of two and match the imaginary array length.");
        }

        for (int i = 1, j = 0; i < n; i++)
        {
            var bit = n >> 1;
            for (; (j & bit) != 0; bit >>= 1)
            {
                j ^= bit;
            }
            j ^= bit;

            if (i < j)
            {
                (re[i], re[j]) = (re[j], re[i]);
                (im[i], im[j]) = (im[j], im[i]);
            }
        }

        for (var len = 2; len <= n; len <<= 1)
        {
            var angleStep = -2.0 * Math.PI / len;
            var half = len >> 1;

            for (var i = 0; i < n; i += len)
            {
                for (var k = 0; k < half; k++)
                {
                    var angle = angleStep * k;
                    var wRe = (float)Math.Cos(angle);
                    var wIm = (float)Math.Sin(angle);

                    var evenIdx = i + k;
                    var oddIdx = i + k + half;

                    var oddRe = re[oddIdx] * wRe - im[oddIdx] * wIm;
                    var oddIm = re[oddIdx] * wIm + im[oddIdx] * wRe;

                    re[oddIdx] = re[evenIdx] - oddRe;
                    im[oddIdx] = im[evenIdx] - oddIm;
                    re[evenIdx] += oddRe;
                    im[evenIdx] += oddIm;
                }
            }
        }
    }
}
