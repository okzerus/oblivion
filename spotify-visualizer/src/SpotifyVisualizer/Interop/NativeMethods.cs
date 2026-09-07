using System.Runtime.InteropServices;

namespace SpotifyVisualizer.Interop;

internal static class NativeMethods
{
    // ----- Window styles -----
    public const int GWL_EXSTYLE = -20;

    public const int WS_EX_LAYERED = 0x00080000;
    public const int WS_EX_TRANSPARENT = 0x00000020;
    public const int WS_EX_TOOLWINDOW = 0x00000080;
    public const int WS_EX_NOACTIVATE = 0x08000000;
    public const int WS_EX_TOPMOST = 0x00000008;

    public static readonly IntPtr HWND_TOPMOST = new(-1);

    public const uint SWP_NOSIZE = 0x0001;
    public const uint SWP_NOMOVE = 0x0002;
    public const uint SWP_NOACTIVATE = 0x0010;
    public const uint SWP_SHOWWINDOW = 0x0040;

    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int x, int y, int cx, int cy, uint uFlags);

    [DllImport("user32.dll")]
    private static extern int GetWindowLong32(IntPtr hWnd, int nIndex);

    [DllImport("user32.dll")]
    private static extern int SetWindowLong32(IntPtr hWnd, int nIndex, int dwNewLong);

    [DllImport("user32.dll", EntryPoint = "GetWindowLongPtr")]
    private static extern IntPtr GetWindowLongPtr64(IntPtr hWnd, int nIndex);

    [DllImport("user32.dll", EntryPoint = "SetWindowLongPtr")]
    private static extern IntPtr SetWindowLongPtr64(IntPtr hWnd, int nIndex, IntPtr dwNewLong);

    public static IntPtr GetWindowExStyle(IntPtr hWnd) =>
        IntPtr.Size == 8 ? GetWindowLongPtr64(hWnd, GWL_EXSTYLE) : GetWindowLong32(hWnd, GWL_EXSTYLE);

    public static IntPtr SetWindowExStyle(IntPtr hWnd, IntPtr exStyle) =>
        IntPtr.Size == 8
            ? SetWindowLongPtr64(hWnd, GWL_EXSTYLE, exStyle)
            : SetWindowLong32(hWnd, GWL_EXSTYLE, exStyle.ToInt32());

    // ----- Exclude our own overlay from screen captures, so the adaptive color
    // sampler never picks up the bars it is drawing (Windows 10 2004+). -----
    public const uint WDA_NONE = 0x00000000;
    public const uint WDA_EXCLUDEFROMCAPTURE = 0x00000011;

    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SetWindowDisplayAffinity(IntPtr hWnd, uint dwAffinity);

    // ----- Modifier key state -----
    public const int VK_CONTROL = 0x11;
    public const int VK_SHIFT = 0x10;
    public const int VK_MENU = 0x12;

    [DllImport("user32.dll")]
    public static extern short GetAsyncKeyState(int vKey);

    public static bool IsKeyDown(int virtualKey) => (GetAsyncKeyState(virtualKey) & 0x8000) != 0;

    // ----- Low-level mouse hook (needed because RegisterHotKey has no mouse-button support) -----
    public const int WH_MOUSE_LL = 14;
    public const int WM_XBUTTONDOWN = 0x020B;
    public const int WM_MBUTTONDOWN = 0x0207;

    public const int XBUTTON1 = 0x0001;
    public const int XBUTTON2 = 0x0002;

    public delegate IntPtr LowLevelMouseProc(int nCode, IntPtr wParam, IntPtr lParam);

    [DllImport("user32.dll", SetLastError = true)]
    public static extern IntPtr SetWindowsHookEx(int idHook, LowLevelMouseProc lpfn, IntPtr hMod, uint dwThreadId);

    [DllImport("user32.dll", SetLastError = true)]
    [return: MarshalAs(UnmanagedType.Bool)]
    public static extern bool UnhookWindowsHookEx(IntPtr hhk);

    [DllImport("user32.dll")]
    public static extern IntPtr CallNextHookEx(IntPtr hhk, int nCode, IntPtr wParam, IntPtr lParam);

    [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
    public static extern IntPtr GetModuleHandle(string? lpModuleName);

    [StructLayout(LayoutKind.Sequential)]
    public struct POINT
    {
        public int X;
        public int Y;
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct MSLLHOOKSTRUCT
    {
        public POINT Pt;
        public uint MouseData;
        public uint Flags;
        public uint Time;
        public IntPtr DwExtraInfo;
    }

    public static int GetXButton(uint mouseData) => (int)(mouseData >> 16) & 0xFFFF;

    // ----- Global cursor position (physical pixels, same space as SetWindowPos) -----
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool GetCursorPos(out POINT lpPoint);

    // ----- Single-instance mutex naming, and OS build check -----
    [DllImport("ntdll.dll")]
    private static extern int RtlGetVersion(ref OSVERSIONINFOEX versionInfo);

    [StructLayout(LayoutKind.Sequential)]
    private struct OSVERSIONINFOEX
    {
        public int OSVersionInfoSize;
        public int MajorVersion;
        public int MinorVersion;
        public int BuildNumber;
        public int PlatformId;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
        public string CSDVersion;
        public ushort ServicePackMajor;
        public ushort ServicePackMinor;
        public ushort SuiteMask;
        public byte ProductType;
        public byte Reserved;
    }

    /// <summary>
    /// Returns the true Windows build number, bypassing the compatibility-shimmed
    /// value that Environment.OSVersion can report for non-manifested apps.
    /// </summary>
    public static int GetWindowsBuildNumber()
    {
        var info = new OSVERSIONINFOEX { OSVersionInfoSize = Marshal.SizeOf<OSVERSIONINFOEX>() };
        return RtlGetVersion(ref info) == 0 ? info.BuildNumber : Environment.OSVersion.Version.Build;
    }
}
