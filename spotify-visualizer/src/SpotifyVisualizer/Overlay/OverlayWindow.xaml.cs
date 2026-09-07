using System.Windows;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Threading;
using SpotifyVisualizer.Interop;
using SpotifyVisualizer.Models;

namespace SpotifyVisualizer.Overlay;

/// <summary>
/// One borderless, click-through, always-on-top strip covering a single screen edge.
/// Click-through and always-on-top are enforced at the Win32 level (WS_EX_TRANSPARENT +
/// periodic HWND_TOPMOST reassertion) because WPF's own Topmost property alone loses the
/// z-order race against games/launchers that re-assert their own topmost state.
/// </summary>
public partial class OverlayWindow : Window
{
    public ScreenEdges Edge { get; }

    /// <summary>This edge's current physical-pixel screen bounds, updated by <see cref="ApplyGeometry"/>.</summary>
    public (int X, int Y, int W, int H) Bounds => _pendingBounds;

    private readonly BarsCanvas _bars;
    private IntPtr _hwnd;
    private (int X, int Y, int W, int H) _pendingBounds;
    private DispatcherTimer? _topmostTimer;

    public OverlayWindow(ScreenEdges edge)
    {
        Edge = edge;
        InitializeComponent();

        _bars = new BarsCanvas { Edge = edge };
        RootGrid.Children.Add(_bars);

        SourceInitialized += OnSourceInitialized;
    }

    private void OnSourceInitialized(object? sender, EventArgs e)
    {
        _hwnd = new WindowInteropHelper(this).Handle;

        var exStyle = NativeMethods.GetWindowExStyle(_hwnd).ToInt64();
        exStyle |= NativeMethods.WS_EX_LAYERED | NativeMethods.WS_EX_TRANSPARENT |
                   NativeMethods.WS_EX_TOOLWINDOW | NativeMethods.WS_EX_NOACTIVATE;
        NativeMethods.SetWindowExStyle(_hwnd, new IntPtr(exStyle));

        NativeMethods.SetWindowDisplayAffinity(_hwnd, NativeMethods.WDA_EXCLUDEFROMCAPTURE);

        ApplyPendingBounds();

        _topmostTimer = new DispatcherTimer(DispatcherPriority.Background) { Interval = TimeSpan.FromMilliseconds(750) };
        _topmostTimer.Tick += (_, _) => ReassertTopmost();
        _topmostTimer.Start();
    }

    /// <summary>Recomputes this edge's physical-pixel screen bounds from current settings.</summary>
    public void ApplyGeometry(VisualizerSettings settings)
    {
        _bars.SetSettings(settings);

        var screen = System.Windows.Forms.Screen.PrimaryScreen?.Bounds ?? new System.Drawing.Rectangle(0, 0, 1920, 1080);
        var extraGlow = settings.GlowEnabled ? settings.GlowRadiusPx * 2 : 0;
        var extraReflection = settings.ReflectionEnabled ? settings.MaxBarLengthPx * Math.Clamp(settings.ReflectionLengthFraction, 0, 2) : 0;
        var stripThickness = Math.Max(8, (int)Math.Round(settings.MaxBarLengthPx + settings.EdgeMarginPx + extraGlow + extraReflection));

        _pendingBounds = Edge switch
        {
            ScreenEdges.Bottom => (screen.Left, screen.Bottom - stripThickness, screen.Width, stripThickness),
            ScreenEdges.Top => (screen.Left, screen.Top, screen.Width, stripThickness),
            ScreenEdges.Left => (screen.Left, screen.Top, stripThickness, screen.Height),
            ScreenEdges.Right => (screen.Right - stripThickness, screen.Top, stripThickness, screen.Height),
            _ => _pendingBounds,
        };

        if (_hwnd != IntPtr.Zero)
        {
            ApplyPendingBounds();
        }
    }

    private void ApplyPendingBounds()
    {
        var (x, y, w, h) = _pendingBounds;
        if (w <= 0 || h <= 0)
        {
            return;
        }

        NativeMethods.SetWindowPos(_hwnd, NativeMethods.HWND_TOPMOST, x, y, w, h, NativeMethods.SWP_SHOWWINDOW);
    }

    private void ReassertTopmost()
    {
        if (_hwnd == IntPtr.Zero || !IsVisible)
        {
            return;
        }

        NativeMethods.SetWindowPos(_hwnd, NativeMethods.HWND_TOPMOST, 0, 0, 0, 0,
            NativeMethods.SWP_NOMOVE | NativeMethods.SWP_NOSIZE | NativeMethods.SWP_NOACTIVATE);
    }

    internal void UpdateFrame(float[] barValues, Color[] barColors, float[]? peakLevels, float visibilityFade, NativeMethods.POINT? cursorScreen)
    {
        Point? cursorLocal = cursorScreen is { } p
            ? new Point(p.X - _pendingBounds.X, p.Y - _pendingBounds.Y)
            : null;

        _bars.UpdateFrame(new BarFrame
        {
            Values = barValues,
            Colors = barColors,
            PeakLevels = peakLevels,
            VisibilityFade = visibilityFade,
            CursorLocal = cursorLocal,
        });
    }

    protected override void OnClosed(EventArgs e)
    {
        _topmostTimer?.Stop();
        base.OnClosed(e);
    }
}
