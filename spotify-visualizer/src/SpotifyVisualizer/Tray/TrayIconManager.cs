using System.Drawing;
using System.Windows.Forms;

namespace SpotifyVisualizer.Tray;

/// <summary>System tray icon with a right-click menu (Show/Hide, Settings, Exit) and a double-click toggle.</summary>
public sealed class TrayIconManager : IDisposable
{
    public event Action? ToggleRequested;
    public event Action? SettingsRequested;
    public event Action? ExitRequested;

    private readonly NotifyIcon _notifyIcon;
    private readonly ToolStripMenuItem _toggleItem;

    public TrayIconManager()
    {
        _toggleItem = new ToolStripMenuItem("Show/Hide", null, (_, _) => ToggleRequested?.Invoke());
        var settingsItem = new ToolStripMenuItem("Settings...", null, (_, _) => SettingsRequested?.Invoke());
        var exitItem = new ToolStripMenuItem("Exit", null, (_, _) => ExitRequested?.Invoke());

        var menu = new ContextMenuStrip();
        menu.Items.Add(_toggleItem);
        menu.Items.Add(settingsItem);
        menu.Items.Add(new ToolStripSeparator());
        menu.Items.Add(exitItem);

        _notifyIcon = new NotifyIcon
        {
            Icon = BuildIcon(),
            Text = "Spotify Visualizer",
            Visible = true,
            ContextMenuStrip = menu,
        };
        _notifyIcon.DoubleClick += (_, _) => ToggleRequested?.Invoke();
    }

    public void SetStatus(bool visible, bool capturingAudio)
    {
        _toggleItem.Text = visible ? "Hide" : "Show";
        var suffix = capturingAudio ? string.Empty : " (waiting for Spotify)";
        _notifyIcon.Text = $"Spotify Visualizer - {(visible ? "visible" : "hidden")}{suffix}";
    }

    private static Icon BuildIcon()
    {
        using var bmp = new Bitmap(32, 32);
        using (var g = Graphics.FromImage(bmp))
        {
            g.Clear(Color.Transparent);
            using var brush = new SolidBrush(Color.FromArgb(255, 30, 215, 96));
            int[] heights = { 12, 22, 16, 26, 10 };
            var x = 3;
            foreach (var h in heights)
            {
                g.FillRectangle(brush, x, 30 - h, 4, h);
                x += 6;
            }
        }

        // The HICON handle backing this Icon lives for the app's lifetime and is reclaimed
        // by the OS on process exit, so we don't bother with an explicit DestroyIcon here.
        return Icon.FromHandle(bmp.GetHicon());
    }

    public void Dispose()
    {
        _notifyIcon.Visible = false;
        _notifyIcon.Dispose();
    }
}
