namespace SpotifyVisualizer.Models;

[Flags]
public enum ScreenEdges
{
    None = 0,
    Bottom = 1 << 0,
    Top = 1 << 1,
    Left = 1 << 2,
    Right = 1 << 3,
    All = Bottom | Top | Left | Right,
}

public enum ColorMode
{
    AdaptiveToScreen,
    StaticColor,
    Gradient,
    CyclingHue,
}

public enum MouseHotkeyButton
{
    XButton1, // "Mouse4" (back button) on most mice
    XButton2, // "Mouse5" (forward button)
    Middle,
}

public enum BarGrowthStyle
{
    FromEdge,   // bars grow away from the screen edge, left-to-right across the strip
    FromCenter, // bars grow away from the edge, mirrored outward from the strip's center
}
