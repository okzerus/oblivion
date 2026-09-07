namespace SpotifyVisualizer.Models;

/// <summary>
/// The complete set of user-configurable options, persisted as JSON in
/// %AppData%\SpotifyVisualizer\settings.json.
/// </summary>
public sealed class VisualizerSettings
{
    public const int CurrentSchemaVersion = 1;
    public int SchemaVersion { get; set; } = CurrentSchemaVersion;

    // ----- General -----
    public bool StartVisible { get; set; } = true;
    public ScreenEdges ActiveEdges { get; set; } = ScreenEdges.Bottom;
    public int TargetFps { get; set; } = 60;

    // ----- Bar geometry -----
    public int BarCount { get; set; } = 56;
    public double BarSpacingPx { get; set; } = 3.0;
    public double BarThicknessFraction { get; set; } = 0.82; // fraction of each slot the bar itself fills
    public double MaxBarLengthPx { get; set; } = 150.0;      // how far bars extend from the edge at full volume
    public double MinBarLengthPx { get; set; } = 3.0;        // resting/idle length so bars never fully vanish
    public double CornerRadiusPx { get; set; } = 3.0;
    public double EdgeMarginPx { get; set; } = 0.0;          // gap between the screen edge and the strip
    public BarGrowthStyle GrowthStyle { get; set; } = BarGrowthStyle.FromCenter;

    // ----- Audio response -----
    public string TargetProcessName { get; set; } = "Spotify";
    public bool IncludeChildProcesses { get; set; } = true;
    public double Sensitivity { get; set; } = 1.0;      // linear gain applied before mapping to bar length
    public double AttackSpeed { get; set; } = 0.55;     // 0..1, how quickly a bar can rise per frame
    public double DecaySpeed { get; set; } = 0.10;      // 0..1, how quickly a bar falls per frame
    public double NoiseGate { get; set; } = 0.015;      // magnitudes below this are treated as silence
    public double JitterAmount { get; set; } = 0.05;    // 0..1, subtle per-bar randomness so motion isn't robotic
    public double LowFrequencyHz { get; set; } = 30.0;
    public double HighFrequencyHz { get; set; } = 16000.0;
    public int FftSize { get; set; } = 2048;

    // ----- Color -----
    public ColorMode ColorMode { get; set; } = ColorMode.AdaptiveToScreen;
    public string StaticColorHex { get; set; } = "#00E5FF";
    public string GradientStartHex { get; set; } = "#00E5FF";
    public string GradientEndHex { get; set; } = "#FF2D95";
    public double AdaptiveHueOffsetDegrees { get; set; } = 180.0; // hue distance kept from the dominant screen color
    public double AdaptiveMinHueOffsetDegrees { get; set; } = 75.0; // never let bars get closer than this in hue
    public double AdaptiveSaturationBoost { get; set; } = 0.20;
    public double AdaptiveMinLightness { get; set; } = 0.45;
    public double AdaptiveMaxLightness { get; set; } = 0.75;
    public int AdaptiveSampleIntervalMs { get; set; } = 900;
    public double ColorTransitionSpeed { get; set; } = 0.04; // 0..1 lerp factor applied per frame
    public double HueCycleSpeedDegPerSec { get; set; } = 18.0;
    public double Opacity { get; set; } = 0.9;
    public bool GlowEnabled { get; set; } = true;
    public double GlowRadiusPx { get; set; } = 10.0;

    // ----- Hotkey (default: Ctrl+Shift+Mouse4) -----
    public bool HotkeyCtrl { get; set; } = true;
    public bool HotkeyShift { get; set; } = true;
    public bool HotkeyAlt { get; set; } = false;
    public MouseHotkeyButton HotkeyMouseButton { get; set; } = MouseHotkeyButton.XButton1;

    public VisualizerSettings Clone()
    {
        return (VisualizerSettings)MemberwiseClone();
    }
}
