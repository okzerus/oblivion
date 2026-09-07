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
    public bool AutoGainEnabled { get; set; } = true;   // auto-normalize to whatever volume Spotify is playing at
    public double AutoGainSpeed { get; set; } = 0.5;    // 0..1, how quickly the auto-gain reference adapts
    public double Sensitivity { get; set; } = 1.0;      // extra multiplier on top of auto-gain (or the whole gain, if auto-gain is off)
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

    // ----- Silence / no-Spotify behavior -----
    public bool GateOnSpotifyPlaybackState { get; set; } = true; // also go quiet whenever Spotify itself reports paused/stopped
    public OnSilenceBehavior SilenceBehavior { get; set; } = OnSilenceBehavior.FadeOut;
    public double SilenceThreshold { get; set; } = 0.025;   // bar level below which audio counts as "quiet"
    public double SilenceHoldSeconds { get; set; } = 1.5;   // how long it must stay quiet before reacting
    public double SilenceFadeOutSeconds { get; set; } = 1.5;
    public double SilenceFadeInSeconds { get; set; } = 0.3; // snappier: pop back in as soon as sound resumes
    public double IdlePulseSpeed { get; set; } = 0.5;       // cycles/sec, GentleIdlePulse mode
    public double IdlePulseAmount { get; set; } = 0.12;     // 0..1 of MaxBarLengthPx, GentleIdlePulse mode

    // ----- Cursor-proximity fade -----
    public bool CursorFadeEnabled { get; set; } = true;
    public double CursorFadeRadiusPx { get; set; } = 220.0;      // along the strip, how wide the fade dip is
    public double CursorFadeCrossAxisMarginPx { get; set; } = 100.0; // how far off the strip the cursor still counts as "near"
    public double CursorFadeStrength { get; set; } = 1.0;        // 0..1, how fully bars vanish right under the cursor

    // ----- Repeating pattern -----
    public int RepeatCount { get; set; } = 1;               // tile the same bar pattern this many times across the edge
    public double RepeatSpacingPx { get; set; } = 28.0;
    public bool RepeatAlternateMirror { get; set; } = true;  // mirror every other tile for a less mechanical repeat

    // ----- Asymmetry / stereo (FromCenter growth only) -----
    public bool StereoSplit { get; set; }                    // left half of the strip driven by the left channel, right by right
    public double AsymmetryAmount { get; set; } = 0.15;       // 0..1, how far the two halves drift from a perfect mirror

    // ----- Peak-hold caps -----
    public bool PeakHoldEnabled { get; set; }
    public double PeakHoldFallSpeed { get; set; } = 0.02;    // 0..1 per frame
    public double PeakHoldThicknessPx { get; set; } = 2.0;

    // ----- Reflection -----
    public bool ReflectionEnabled { get; set; }
    public double ReflectionOpacity { get; set; } = 0.35;
    public double ReflectionLengthFraction { get; set; } = 0.4; // fraction of a bar's own length

    // ----- Color variation -----
    public double ColorVariationAmount { get; set; } = 0.0;  // 0..1, per-bar hue jitter on top of the chosen color mode

    public VisualizerSettings Clone()
    {
        return (VisualizerSettings)MemberwiseClone();
    }
}
