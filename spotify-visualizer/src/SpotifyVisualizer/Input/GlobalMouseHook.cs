using System.Diagnostics;
using System.Runtime.InteropServices;
using SpotifyVisualizer.Interop;
using SpotifyVisualizer.Models;

namespace SpotifyVisualizer.Input;

/// <summary>
/// Detects a configurable Ctrl/Shift/Alt + mouse-button combo (default: Ctrl+Shift+Mouse4)
/// anywhere on the system via a low-level mouse hook, since RegisterHotKey has no support
/// for mouse buttons. Never swallows the click - CallNextHookEx always runs - so this can't
/// break "back" navigation in a browser that also uses Mouse4 without the modifiers held.
/// </summary>
public sealed class GlobalMouseHook : IDisposable
{
    public event Action? HotkeyPressed;

    public bool CtrlRequired { get; set; } = true;
    public bool ShiftRequired { get; set; } = true;
    public bool AltRequired { get; set; }
    public MouseHotkeyButton Button { get; set; } = MouseHotkeyButton.XButton1;

    private readonly NativeMethods.LowLevelMouseProc _proc;
    private IntPtr _hookHandle;

    public GlobalMouseHook()
    {
        _proc = HookCallback; // must be kept alive for the hook's lifetime
    }

    public void Install()
    {
        if (_hookHandle != IntPtr.Zero)
        {
            return;
        }

        using var currentProcess = Process.GetCurrentProcess();
        using var currentModule = currentProcess.MainModule!;
        var moduleHandle = NativeMethods.GetModuleHandle(currentModule.ModuleName);

        _hookHandle = NativeMethods.SetWindowsHookEx(NativeMethods.WH_MOUSE_LL, _proc, moduleHandle, 0);
        if (_hookHandle == IntPtr.Zero)
        {
            var error = Marshal.GetLastWin32Error();
            throw new InvalidOperationException($"Failed to install the global mouse hook (Win32 error {error}).");
        }
    }

    public void Uninstall()
    {
        if (_hookHandle == IntPtr.Zero)
        {
            return;
        }

        NativeMethods.UnhookWindowsHookEx(_hookHandle);
        _hookHandle = IntPtr.Zero;
    }

    private IntPtr HookCallback(int nCode, IntPtr wParam, IntPtr lParam)
    {
        if (nCode >= 0)
        {
            var message = (int)wParam;
            if (message == NativeMethods.WM_XBUTTONDOWN)
            {
                var info = Marshal.PtrToStructure<NativeMethods.MSLLHOOKSTRUCT>(lParam);
                var xButton = NativeMethods.GetXButton(info.MouseData);
                var matches =
                    (Button == MouseHotkeyButton.XButton1 && xButton == NativeMethods.XBUTTON1) ||
                    (Button == MouseHotkeyButton.XButton2 && xButton == NativeMethods.XBUTTON2);

                if (matches && ModifiersMatch())
                {
                    HotkeyPressed?.Invoke();
                }
            }
            else if (message == NativeMethods.WM_MBUTTONDOWN && Button == MouseHotkeyButton.Middle && ModifiersMatch())
            {
                HotkeyPressed?.Invoke();
            }
        }

        return NativeMethods.CallNextHookEx(_hookHandle, nCode, wParam, lParam);
    }

    private bool ModifiersMatch()
    {
        if (CtrlRequired && !NativeMethods.IsKeyDown(NativeMethods.VK_CONTROL))
        {
            return false;
        }
        if (ShiftRequired && !NativeMethods.IsKeyDown(NativeMethods.VK_SHIFT))
        {
            return false;
        }
        if (AltRequired && !NativeMethods.IsKeyDown(NativeMethods.VK_MENU))
        {
            return false;
        }
        return true;
    }

    public void Dispose() => Uninstall();
}
