using System.Threading;
using System.Windows;
using System.Windows.Threading;
using SpotifyVisualizer.Input;
using SpotifyVisualizer.Interop;
using SpotifyVisualizer.Models;
using SpotifyVisualizer.Overlay;
using SpotifyVisualizer.Settings;
using SpotifyVisualizer.Tray;

namespace SpotifyVisualizer;

public partial class App : Application
{
    private Mutex? _singleInstanceMutex;
    private OverlayController? _controller;
    private GlobalMouseHook? _mouseHook;
    private TrayIconManager? _tray;
    private SettingsWindow? _settingsWindow;
    private DispatcherTimer? _statusTimer;
    private VisualizerSettings _settings = new();

    protected override void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);

        _singleInstanceMutex = new Mutex(true, "Local\\SpotifyVisualizer-SingleInstance", out var isNew);
        if (!isNew)
        {
            MessageBox.Show(
                "Spotify Visualizer is already running - check your system tray.",
                "Spotify Visualizer", MessageBoxButton.OK, MessageBoxImage.Information);
            Shutdown();
            return;
        }

        var buildNumber = NativeMethods.GetWindowsBuildNumber();
        if (buildNumber < 19041)
        {
            MessageBox.Show(
                "Spotify Visualizer needs Windows 10 build 19041 (version 2004) or newer, " +
                "because that's what per-process audio capture requires.",
                "Unsupported Windows version", MessageBoxButton.OK, MessageBoxImage.Error);
            Shutdown();
            return;
        }

        if (buildNumber < 20348)
        {
            // ActivateAudioInterfaceAsync itself has existed since build 19041, but
            // Microsoft only documents the process-scoping parameters (what actually keeps
            // this to Spotify) as supported from build 20348 - which no released consumer
            // Windows 10 build reaches (10 tops out at 19045; 20348 first shipped as part of
            // the Windows 11/Server 2022 branch). Below that, activation can still succeed
            // but silently ignore the process filter and hand back the full system mix
            // instead - it'll look "on" while actually capturing everything, not Spotify.
            MessageBox.Show(
                "Your Windows build doesn't reliably support per-process audio capture - it may " +
                "silently fall back to capturing all system audio instead of just Spotify. " +
                "This needs Windows 11 (or Windows Server 2022) to isolate Spotify's audio properly; " +
                "Windows 10 isn't supported for that, even fully updated.",
                "Limited Windows version", MessageBoxButton.OK, MessageBoxImage.Warning);
        }

        _settings = SettingsStore.Load();
        _controller = new OverlayController(_settings);

        _mouseHook = new GlobalMouseHook();
        ApplyHotkeySettings();
        _mouseHook.HotkeyPressed += OnHotkeyPressed;
        try
        {
            _mouseHook.Install();
        }
        catch (InvalidOperationException ex)
        {
            MessageBox.Show(
                $"Couldn't install the toggle hotkey ({ex.Message}). " +
                "You can still show/hide from the tray icon menu.",
                "Spotify Visualizer", MessageBoxButton.OK, MessageBoxImage.Warning);
        }

        _tray = new TrayIconManager();
        _tray.ToggleRequested += OnHotkeyPressed;
        _tray.SettingsRequested += OpenSettings;
        _tray.ExitRequested += Shutdown;
        RefreshTrayStatus();

        _statusTimer = new DispatcherTimer { Interval = TimeSpan.FromSeconds(2) };
        _statusTimer.Tick += (_, _) => RefreshTrayStatus();
        _statusTimer.Start();
    }

    private void OnHotkeyPressed()
    {
        _controller?.ToggleVisible();
        RefreshTrayStatus();
    }

    private void RefreshTrayStatus()
    {
        if (_controller != null && _tray != null)
        {
            _tray.SetStatus(_controller.IsVisible, _controller.IsCapturingAudio, _controller.ActiveProcessIds);
        }
    }

    private void ApplyHotkeySettings()
    {
        if (_mouseHook == null)
        {
            return;
        }
        _mouseHook.CtrlRequired = _settings.HotkeyCtrl;
        _mouseHook.ShiftRequired = _settings.HotkeyShift;
        _mouseHook.AltRequired = _settings.HotkeyAlt;
        _mouseHook.Button = _settings.HotkeyMouseButton;
    }

    private void OpenSettings()
    {
        if (_settingsWindow != null)
        {
            _settingsWindow.Activate();
            return;
        }

        _settingsWindow = new SettingsWindow(_settings, updated =>
        {
            _settings = updated;
            _controller?.ApplySettings(updated);
            ApplyHotkeySettings();
            RefreshTrayStatus();
        });
        _settingsWindow.Closed += (_, _) => _settingsWindow = null;
        _settingsWindow.Show();
        _settingsWindow.Activate();
    }

    protected override void OnExit(ExitEventArgs e)
    {
        _statusTimer?.Stop();
        _mouseHook?.Dispose();
        _controller?.Dispose();
        _tray?.Dispose();
        _singleInstanceMutex?.ReleaseMutex();
        base.OnExit(e);
    }
}
