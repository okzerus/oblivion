"""
Launches Spotify hidden to the tray, then exits immediately. Does nothing
else - no hook, no logging setup, no lingering process - kept deliberately
separate from hotkeys.py so the one thing that has to run at the most
contested moment of the boot sequence (Task Scheduler's "At system
startup") has the smallest possible footprint and the shortest possible
lifetime.

Point Task Scheduler's "At system startup" trigger at this script (or its
compiled form - see README.md for why --onedir is recommended over
--onefile), and a separate task with the "At log on" trigger at hotkeys
itself.

Same technique as hotkeys.py's launch_spotify_hidden(): SW_HIDE is passed
as the process's initial show-window state (the same trick as
ShellExecute(..., SW_HIDE)), which keeps a well-behaved Win32 app's main
window from ever being drawn in the first place - Spotify's tray icon
still appears normally, since that's created independently of the main
window's visibility. A brief wait-and-WM_CLOSE safety net covers the case
where the window shows up anyway.
"""

import ctypes
import os
import subprocess
import time
from ctypes import wintypes

if os.name != "nt":
    raise SystemExit("This script only runs on Windows.")

user32 = ctypes.WinDLL("user32", use_last_error=True)

WM_CLOSE = 0x0010
SPOTIFY_WINDOW_CLASS = "SpotifyMainWindow"
SPOTIFY_PROCESS_NAME = "spotify.exe"

ENUMWINDOWSPROC = ctypes.WINFUNCTYPE(wintypes.BOOL, wintypes.HWND, wintypes.LPARAM)

user32.FindWindowW.restype = wintypes.HWND
user32.FindWindowW.argtypes = [wintypes.LPCWSTR, wintypes.LPCWSTR]
user32.EnumWindows.restype = wintypes.BOOL
user32.EnumWindows.argtypes = [ENUMWINDOWSPROC, wintypes.LPARAM]
user32.GetWindowTextLengthW.restype = ctypes.c_int
user32.GetWindowTextLengthW.argtypes = [wintypes.HWND]
user32.GetWindowThreadProcessId.restype = wintypes.DWORD
user32.GetWindowThreadProcessId.argtypes = [wintypes.HWND, ctypes.POINTER(wintypes.DWORD)]
user32.IsWindowVisible.restype = wintypes.BOOL
user32.IsWindowVisible.argtypes = [wintypes.HWND]
user32.PostMessageW.restype = wintypes.BOOL
user32.PostMessageW.argtypes = [wintypes.HWND, wintypes.UINT, wintypes.WPARAM, wintypes.LPARAM]

kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
PROCESS_QUERY_LIMITED_INFORMATION = 0x1000
kernel32.OpenProcess.restype = wintypes.HANDLE
kernel32.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]
kernel32.CloseHandle.restype = wintypes.BOOL
kernel32.CloseHandle.argtypes = [wintypes.HANDLE]
kernel32.QueryFullProcessImageNameW.restype = wintypes.BOOL
kernel32.QueryFullProcessImageNameW.argtypes = [wintypes.HANDLE, wintypes.DWORD, wintypes.LPWSTR, ctypes.POINTER(wintypes.DWORD)]


def get_process_exe_name(pid):
    handle = kernel32.OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION, False, pid)
    if not handle:
        return None
    try:
        buf = ctypes.create_unicode_buffer(260)
        size = wintypes.DWORD(len(buf))
        if kernel32.QueryFullProcessImageNameW(handle, 0, buf, ctypes.byref(size)):
            return os.path.basename(buf.value)
    finally:
        kernel32.CloseHandle(handle)
    return None


def find_spotify_window():
    hwnd = user32.FindWindowW(SPOTIFY_WINDOW_CLASS, None)
    if hwnd:
        return hwnd

    found = {"hwnd": None}

    def callback(hwnd, _lparam):
        if user32.GetWindowTextLengthW(hwnd) == 0:
            return True
        pid = wintypes.DWORD()
        user32.GetWindowThreadProcessId(hwnd, ctypes.byref(pid))
        exe_name = get_process_exe_name(pid.value)
        if exe_name and exe_name.lower() == SPOTIFY_PROCESS_NAME:
            found["hwnd"] = hwnd
            return False
        return True

    user32.EnumWindows(ENUMWINDOWSPROC(callback), 0)
    return found["hwnd"]


def wait_for_condition(predicate, timeout, interval=0.2):
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        if predicate():
            return True
        time.sleep(interval)
    return False


def main():
    exe = os.path.join(os.environ.get("APPDATA", ""), "Spotify", "Spotify.exe")
    if not os.path.isfile(exe):
        return

    startupinfo = subprocess.STARTUPINFO()
    startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
    startupinfo.wShowWindow = subprocess.SW_HIDE
    subprocess.Popen([exe], startupinfo=startupinfo)

    hwnd = None
    if wait_for_condition(lambda: bool(find_spotify_window()), timeout=20.0):
        hwnd = find_spotify_window()
    if hwnd and user32.IsWindowVisible(hwnd):
        user32.PostMessageW(hwnd, WM_CLOSE, 0, 0)


if __name__ == "__main__":
    main()
