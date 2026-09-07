using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Threading;
using SpotifyVisualizer.Models;

namespace SpotifyVisualizer.Settings;

/// <summary>
/// A plain, code-built settings UI (grouped sliders/checkboxes/combo boxes) covering every
/// commonly-tweaked option in <see cref="VisualizerSettings"/>. Every change applies live to
/// the running overlay immediately and is persisted to disk after a short idle debounce.
/// Advanced/rarely-touched fields not exposed here can still be hand-edited in settings.json.
/// </summary>
public partial class SettingsWindow : Window
{
    private readonly VisualizerSettings _working;
    private readonly Action<VisualizerSettings> _onChanged;
    private readonly DispatcherTimer _saveDebounce;

    public SettingsWindow(VisualizerSettings current, Action<VisualizerSettings> onChanged)
    {
        InitializeComponent();
        _working = current.Clone();
        _onChanged = onChanged;

        _saveDebounce = new DispatcherTimer { Interval = TimeSpan.FromMilliseconds(500) };
        _saveDebounce.Tick += (_, _) =>
        {
            _saveDebounce.Stop();
            SettingsStore.Save(_working);
        };

        BuildUi();
    }

    private void BuildUi()
    {
        AddHeader("General");
        AddCheckBox("Start visible on launch", () => _working.StartVisible, v => _working.StartVisible = v);
        AddIntSlider("Target FPS", 24, 144, () => _working.TargetFps, v => _working.TargetFps = v);

        AddHeader("Screen edges");
        AddCheckBox("Bottom", () => _working.ActiveEdges.HasFlag(ScreenEdges.Bottom), v => ToggleEdge(ScreenEdges.Bottom, v));
        AddCheckBox("Top", () => _working.ActiveEdges.HasFlag(ScreenEdges.Top), v => ToggleEdge(ScreenEdges.Top, v));
        AddCheckBox("Left", () => _working.ActiveEdges.HasFlag(ScreenEdges.Left), v => ToggleEdge(ScreenEdges.Left, v));
        AddCheckBox("Right", () => _working.ActiveEdges.HasFlag(ScreenEdges.Right), v => ToggleEdge(ScreenEdges.Right, v));

        AddHeader("Bar geometry");
        AddIntSlider("Bar count", 8, 128, () => _working.BarCount, v => _working.BarCount = v);
        AddSlider("Bar spacing (px)", 0, 12, () => _working.BarSpacingPx, v => _working.BarSpacingPx = v, "0.0");
        AddSlider("Bar thickness fraction", 0.2, 1.0, () => _working.BarThicknessFraction, v => _working.BarThicknessFraction = v);
        AddSlider("Max bar length (px)", 20, 400, () => _working.MaxBarLengthPx, v => _working.MaxBarLengthPx = v, "0");
        AddSlider("Min bar length (px)", 0, 40, () => _working.MinBarLengthPx, v => _working.MinBarLengthPx = v, "0.0");
        AddSlider("Corner radius (px)", 0, 20, () => _working.CornerRadiusPx, v => _working.CornerRadiusPx = v, "0.0");
        AddSlider("Edge margin (px)", 0, 60, () => _working.EdgeMarginPx, v => _working.EdgeMarginPx = v, "0.0");
        AddComboEnum("Growth style", () => _working.GrowthStyle, v => _working.GrowthStyle = v);

        AddHeader("Audio source");
        AddTextBox("Target process name", () => _working.TargetProcessName, v => _working.TargetProcessName = v);
        AddCheckBox("Include child processes", () => _working.IncludeChildProcesses, v => _working.IncludeChildProcesses = v);
        AddSlider("Sensitivity", 0.1, 4.0, () => _working.Sensitivity, v => _working.Sensitivity = v);
        AddSlider("Attack speed", 0.05, 1.0, () => _working.AttackSpeed, v => _working.AttackSpeed = v);
        AddSlider("Decay speed", 0.01, 1.0, () => _working.DecaySpeed, v => _working.DecaySpeed = v);
        AddSlider("Noise gate", 0.0, 0.2, () => _working.NoiseGate, v => _working.NoiseGate = v);
        AddSlider("Motion variation (jitter)", 0.0, 0.3, () => _working.JitterAmount, v => _working.JitterAmount = v);
        AddComboInt("FFT size", new[] { 512, 1024, 2048, 4096, 8192 }, () => _working.FftSize, v => _working.FftSize = v);

        AddHeader("Color");
        AddComboEnum("Color mode", () => _working.ColorMode, v => _working.ColorMode = v);
        AddColorPicker("Static color", () => _working.StaticColorHex, v => _working.StaticColorHex = v);
        AddColorPicker("Gradient start", () => _working.GradientStartHex, v => _working.GradientStartHex = v);
        AddColorPicker("Gradient end", () => _working.GradientEndHex, v => _working.GradientEndHex = v);
        AddSlider("Adaptive hue offset (deg)", 0, 360, () => _working.AdaptiveHueOffsetDegrees, v => _working.AdaptiveHueOffsetDegrees = v, "0");
        AddSlider("Adaptive min hue offset (deg)", 0, 180, () => _working.AdaptiveMinHueOffsetDegrees, v => _working.AdaptiveMinHueOffsetDegrees = v, "0");
        AddSlider("Adaptive saturation boost", 0, 0.5, () => _working.AdaptiveSaturationBoost, v => _working.AdaptiveSaturationBoost = v);
        AddSlider("Adaptive min lightness", 0.1, 0.9, () => _working.AdaptiveMinLightness, v => _working.AdaptiveMinLightness = v);
        AddSlider("Adaptive max lightness", 0.1, 0.95, () => _working.AdaptiveMaxLightness, v => _working.AdaptiveMaxLightness = v);
        AddIntSlider("Adaptive sample interval (ms)", 200, 5000, () => _working.AdaptiveSampleIntervalMs, v => _working.AdaptiveSampleIntervalMs = v);
        AddSlider("Color transition speed", 0.01, 0.3, () => _working.ColorTransitionSpeed, v => _working.ColorTransitionSpeed = v);
        AddSlider("Hue cycle speed (deg/s)", 1, 90, () => _working.HueCycleSpeedDegPerSec, v => _working.HueCycleSpeedDegPerSec = v, "0.0");
        AddSlider("Opacity", 0.1, 1.0, () => _working.Opacity, v => _working.Opacity = v);
        AddCheckBox("Glow", () => _working.GlowEnabled, v => _working.GlowEnabled = v);
        AddSlider("Glow radius (px)", 0, 40, () => _working.GlowRadiusPx, v => _working.GlowRadiusPx = v, "0.0");

        AddHeader("Toggle hotkey (default: Ctrl+Shift+Mouse4)");
        AddCheckBox("Ctrl", () => _working.HotkeyCtrl, v => _working.HotkeyCtrl = v);
        AddCheckBox("Shift", () => _working.HotkeyShift, v => _working.HotkeyShift = v);
        AddCheckBox("Alt", () => _working.HotkeyAlt, v => _working.HotkeyAlt = v);
        AddComboEnum("Mouse button", () => _working.HotkeyMouseButton, v => _working.HotkeyMouseButton = v);

        AddHeader("When it's quiet / Spotify isn't running");
        AddComboEnum("Behavior", () => _working.SilenceBehavior, v => _working.SilenceBehavior = v);
        AddSlider("Silence threshold", 0.0, 0.2, () => _working.SilenceThreshold, v => _working.SilenceThreshold = v);
        AddSlider("Hold before reacting (s)", 0.0, 10.0, () => _working.SilenceHoldSeconds, v => _working.SilenceHoldSeconds = v, "0.0");
        AddSlider("Fade out duration (s)", 0.1, 8.0, () => _working.SilenceFadeOutSeconds, v => _working.SilenceFadeOutSeconds = v, "0.0");
        AddSlider("Fade back in duration (s)", 0.05, 3.0, () => _working.SilenceFadeInSeconds, v => _working.SilenceFadeInSeconds = v, "0.00");
        AddSlider("Idle pulse speed (cycles/s)", 0.05, 3.0, () => _working.IdlePulseSpeed, v => _working.IdlePulseSpeed = v, "0.00");
        AddSlider("Idle pulse amount", 0.0, 0.5, () => _working.IdlePulseAmount, v => _working.IdlePulseAmount = v);

        AddHeader("Fade near the mouse cursor");
        AddCheckBox("Enabled", () => _working.CursorFadeEnabled, v => _working.CursorFadeEnabled = v);
        AddSlider("Fade radius (px)", 20, 800, () => _working.CursorFadeRadiusPx, v => _working.CursorFadeRadiusPx = v, "0");
        AddSlider("Trigger distance off the edge (px)", 0, 400, () => _working.CursorFadeCrossAxisMarginPx, v => _working.CursorFadeCrossAxisMarginPx = v, "0");
        AddSlider("Fade strength", 0.0, 1.0, () => _working.CursorFadeStrength, v => _working.CursorFadeStrength = v);

        AddHeader("Repeating pattern");
        AddIntSlider("Repeat count", 1, 12, () => _working.RepeatCount, v => _working.RepeatCount = v);
        AddSlider("Spacing between repeats (px)", 0, 200, () => _working.RepeatSpacingPx, v => _working.RepeatSpacingPx = v, "0");
        AddCheckBox("Mirror every other repeat", () => _working.RepeatAlternateMirror, v => _working.RepeatAlternateMirror = v);

        AddHeader("Asymmetry (centered growth style only)");
        AddCheckBox("Stereo split (left/right channel drives each half)", () => _working.StereoSplit, v => _working.StereoSplit = v);
        AddSlider("Asymmetry amount", 0.0, 1.0, () => _working.AsymmetryAmount, v => _working.AsymmetryAmount = v);

        AddHeader("Peak-hold caps");
        AddCheckBox("Enabled", () => _working.PeakHoldEnabled, v => _working.PeakHoldEnabled = v);
        AddSlider("Fall speed", 0.001, 0.2, () => _working.PeakHoldFallSpeed, v => _working.PeakHoldFallSpeed = v, "0.000");
        AddSlider("Cap thickness (px)", 1, 10, () => _working.PeakHoldThicknessPx, v => _working.PeakHoldThicknessPx = v, "0.0");

        AddHeader("Reflection / tip trail");
        AddCheckBox("Enabled", () => _working.ReflectionEnabled, v => _working.ReflectionEnabled = v);
        AddSlider("Opacity", 0.0, 1.0, () => _working.ReflectionOpacity, v => _working.ReflectionOpacity = v);
        AddSlider("Length (fraction of bar)", 0.0, 1.5, () => _working.ReflectionLengthFraction, v => _working.ReflectionLengthFraction = v);

        AddHeader("Color variation");
        AddSlider("Per-bar variation amount", 0.0, 1.0, () => _working.ColorVariationAmount, v => _working.ColorVariationAmount = v);
    }

    private void ToggleEdge(ScreenEdges edge, bool on)
    {
        _working.ActiveEdges = on ? _working.ActiveEdges | edge : _working.ActiveEdges & ~edge;
        NotifyChanged();
    }

    private void NotifyChanged()
    {
        _onChanged(_working);
        _saveDebounce.Stop();
        _saveDebounce.Start();
    }

    // ---- UI builder helpers ----

    private void AddHeader(string text)
    {
        RootPanel.Children.Add(new TextBlock
        {
            Text = text,
            FontWeight = FontWeights.Bold,
            FontSize = 15,
            Margin = new Thickness(0, 16, 0, 4),
        });
    }

    private void AddCheckBox(string label, Func<bool> get, Action<bool> set)
    {
        var box = new CheckBox { Content = label, IsChecked = get(), Margin = new Thickness(0, 4, 0, 4) };
        box.Checked += (_, _) => { set(true); NotifyChanged(); };
        box.Unchecked += (_, _) => { set(false); NotifyChanged(); };
        RootPanel.Children.Add(box);
    }

    private void AddSlider(string label, double min, double max, Func<double> get, Action<double> set, string format = "0.###")
    {
        var row = new StackPanel { Orientation = Orientation.Horizontal, Margin = new Thickness(0, 4, 0, 4) };
        var text = new TextBlock
        {
            Text = $"{label}: {get().ToString(format)}",
            Width = 230,
            VerticalAlignment = VerticalAlignment.Center,
            TextWrapping = TextWrapping.Wrap,
        };
        var slider = new Slider { Minimum = min, Maximum = max, Value = get(), Width = 190, VerticalAlignment = VerticalAlignment.Center };

        slider.ValueChanged += (_, e) =>
        {
            set(e.NewValue);
            text.Text = $"{label}: {e.NewValue.ToString(format)}";
            NotifyChanged();
        };

        row.Children.Add(text);
        row.Children.Add(slider);
        RootPanel.Children.Add(row);
    }

    private void AddIntSlider(string label, int min, int max, Func<int> get, Action<int> set)
    {
        AddSlider(label, min, max, () => get(), v => set((int)Math.Round(v)), "0");
    }

    private void AddTextBox(string label, Func<string> get, Action<string> set)
    {
        var row = new StackPanel { Orientation = Orientation.Horizontal, Margin = new Thickness(0, 4, 0, 4) };
        var text = new TextBlock { Text = label, Width = 230, VerticalAlignment = VerticalAlignment.Center };
        var box = new TextBox { Text = get(), Width = 190 };
        box.LostFocus += (_, _) => { set(box.Text); NotifyChanged(); };
        row.Children.Add(text);
        row.Children.Add(box);
        RootPanel.Children.Add(row);
    }

    private void AddColorPicker(string label, Func<string> get, Action<string> set)
    {
        var row = new StackPanel { Orientation = Orientation.Horizontal, Margin = new Thickness(0, 4, 0, 4) };
        var text = new TextBlock { Text = label, Width = 230, VerticalAlignment = VerticalAlignment.Center };
        var box = new TextBox { Text = get(), Width = 160 };
        var swatch = new Border
        {
            Width = 24,
            Height = 24,
            Margin = new Thickness(8, 0, 0, 0),
            BorderBrush = Brushes.Gray,
            BorderThickness = new Thickness(1),
        };

        void UpdateSwatch()
        {
            try
            {
                swatch.Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString(box.Text));
            }
            catch
            {
                swatch.Background = Brushes.Transparent;
            }
        }
        UpdateSwatch();

        box.LostFocus += (_, _) =>
        {
            set(box.Text);
            UpdateSwatch();
            NotifyChanged();
        };

        row.Children.Add(text);
        row.Children.Add(box);
        row.Children.Add(swatch);
        RootPanel.Children.Add(row);
    }

    private void AddComboEnum<T>(string label, Func<T> get, Action<T> set) where T : struct, Enum
    {
        var row = new StackPanel { Orientation = Orientation.Horizontal, Margin = new Thickness(0, 4, 0, 4) };
        var text = new TextBlock { Text = label, Width = 230, VerticalAlignment = VerticalAlignment.Center };
        var combo = new ComboBox { Width = 190, ItemsSource = Enum.GetValues<T>(), SelectedItem = get() };
        combo.SelectionChanged += (_, _) =>
        {
            if (combo.SelectedItem is T value)
            {
                set(value);
                NotifyChanged();
            }
        };
        row.Children.Add(text);
        row.Children.Add(combo);
        RootPanel.Children.Add(row);
    }

    private void AddComboInt(string label, int[] options, Func<int> get, Action<int> set)
    {
        var row = new StackPanel { Orientation = Orientation.Horizontal, Margin = new Thickness(0, 4, 0, 4) };
        var text = new TextBlock { Text = label, Width = 230, VerticalAlignment = VerticalAlignment.Center };
        var combo = new ComboBox { Width = 190, ItemsSource = options, SelectedItem = get() };
        combo.SelectionChanged += (_, _) =>
        {
            if (combo.SelectedItem is int value)
            {
                set(value);
                NotifyChanged();
            }
        };
        row.Children.Add(text);
        row.Children.Add(combo);
        RootPanel.Children.Add(row);
    }

    private void ResetButton_Click(object sender, RoutedEventArgs e)
    {
        CopyInto(_working, new VisualizerSettings());
        RootPanel.Children.Clear();
        BuildUi();
        NotifyChanged();
    }

    private static void CopyInto(VisualizerSettings target, VisualizerSettings source)
    {
        foreach (var prop in typeof(VisualizerSettings).GetProperties())
        {
            if (prop.CanRead && prop.CanWrite)
            {
                prop.SetValue(target, prop.GetValue(source));
            }
        }
    }

    private void CloseButton_Click(object sender, RoutedEventArgs e) => Close();

    protected override void OnClosed(EventArgs e)
    {
        _saveDebounce.Stop();
        SettingsStore.Save(_working);
        base.OnClosed(e);
    }
}
