"""
Global mouse hotkeys for controlling the Spotify desktop client on Windows.

Controls:
    mouse5 (side button, x2)          -> play / pause
    shift + mouse5                    -> next track
    shift + mouse4 (side button, x1)  -> previous track
    ctrl + shift + mouse5             -> bring Spotify to front, or if it
                                          already has focus, close it
                                          (Spotify's own "minimize to tray on
                                          close" setting turns that into a
                                          tray-minimize instead of a real exit)

(There's no "like current track" binding: Spotify's Web API player
endpoints - the only way to know what's currently playing without asking
the window itself - require Premium, so that feature was dropped.)

Playback commands are delivered with WM_APPCOMMAND sent directly to
Spotify's window handle instead of the system-wide media-key APIs
(keybd_event / SendMessage(HWND_BROADCAST, ...)). This keeps the Windows
media OSD off screen and prevents the command from reaching any other app
that also listens for media keys (e.g. a browser tab playing something on
YouTube).

Only the mouse buttons above are captured (via a low-level mouse hook), and
only when the required modifier is actually held; every other click passes
through untouched. No keyboard hook is installed - modifier state is read
with GetAsyncKeyState at the moment of the click.
"""

import ctypes
import logging
import logging.handlers
import os
import queue
import subprocess
import sys
import threading
import time
from ctypes import wintypes

if os.name != "nt":
    sys.exit("This script only runs on Windows.")

user32 = ctypes.WinDLL("user32", use_last_error=True)
kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)

# --- Windows API constants -------------------------------------------------

WH_MOUSE_LL = 14

WM_XBUTTONDOWN = 0x020B
WM_XBUTTONUP = 0x020C
WM_APPCOMMAND = 0x0319
WM_CLOSE = 0x0010

XBUTTON1 = 0x0001
XBUTTON2 = 0x0002

VK_CONTROL = 0x11
VK_SHIFT = 0x10
VK_MENU = 0x12
KEYEVENTF_KEYUP = 0x0002

APPCOMMAND_MEDIA_NEXTTRACK = 11
APPCOMMAND_MEDIA_PREVIOUSTRACK = 12
APPCOMMAND_MEDIA_PLAY_PAUSE = 14

SW_RESTORE = 9
SW_SHOW = 5

HWND_TOPMOST = -1
HWND_NOTOPMOST = -2
SWP_NOSIZE = 0x0001
SWP_NOMOVE = 0x0002

SMTO_ABORTIFHUNG = 0x0002

PROCESS_QUERY_LIMITED_INFORMATION = 0x1000
ERROR_ALREADY_EXISTS = 183

TH32CS_SNAPPROCESS = 0x00000002

SPOTIFY_WINDOW_CLASS = "SpotifyMainWindow"
SPOTIFY_PROCESS_NAME = "spotify.exe"

LOG_DIR = os.path.join(
    os.environ.get("LOCALAPPDATA", os.path.expanduser("~")), "SpotifyHotkeys"
)
LOG_FILE = os.path.join(LOG_DIR, "spotify_hotkeys.log")


# --- ctypes structures / prototypes -----------------------------------------

class MSLLHOOKSTRUCT(ctypes.Structure):
    _fields_ = [
        ("pt", wintypes.POINT),
        ("mouseData", wintypes.DWORD),
        ("flags", wintypes.DWORD),
        ("time", wintypes.DWORD),
        ("dwExtraInfo", ctypes.c_void_p),
    ]


class PROCESSENTRY32W(ctypes.Structure):
    _fields_ = [
        ("dwSize", wintypes.DWORD),
        ("cntUsage", wintypes.DWORD),
        ("th32ProcessID", wintypes.DWORD),
        ("th32DefaultHeapID", ctypes.POINTER(ctypes.c_ulong)),
        ("th32ModuleID", wintypes.DWORD),
        ("cntThreads", wintypes.DWORD),
        ("th32ParentProcessID", wintypes.DWORD),
        ("pcPriClassBase", ctypes.c_long),
        ("dwFlags", wintypes.DWORD),
        ("szExeFile", ctypes.c_wchar * 260),
    ]


LRESULT = ctypes.c_ssize_t
HOOKPROC = ctypes.WINFUNCTYPE(LRESULT, ctypes.c_int, wintypes.WPARAM, wintypes.LPARAM)
ENUMWINDOWSPROC = ctypes.WINFUNCTYPE(wintypes.BOOL, wintypes.HWND, wintypes.LPARAM)

# HWND/HANDLE/HMODULE are void pointers in ctypes.wintypes, so these
# prototypes are correct on 64-bit Python too - without them ctypes assumes a
# 32-bit int return value and silently truncates every handle.
user32.SetWindowsHookExW.restype = wintypes.HANDLE
user32.SetWindowsHookExW.argtypes = [ctypes.c_int, HOOKPROC, wintypes.HMODULE, wintypes.DWORD]
user32.CallNextHookEx.restype = LRESULT
user32.CallNextHookEx.argtypes = [wintypes.HANDLE, ctypes.c_int, wintypes.WPARAM, wintypes.LPARAM]
user32.UnhookWindowsHookEx.restype = wintypes.BOOL
user32.UnhookWindowsHookEx.argtypes = [wintypes.HANDLE]

user32.GetMessageW.restype = ctypes.c_int
user32.GetMessageW.argtypes = [ctypes.POINTER(wintypes.MSG), wintypes.HWND, wintypes.UINT, wintypes.UINT]
user32.TranslateMessage.argtypes = [ctypes.POINTER(wintypes.MSG)]
user32.DispatchMessageW.restype = LRESULT
user32.DispatchMessageW.argtypes = [ctypes.POINTER(wintypes.MSG)]

user32.FindWindowW.restype = wintypes.HWND
user32.FindWindowW.argtypes = [wintypes.LPCWSTR, wintypes.LPCWSTR]
user32.GetForegroundWindow.restype = wintypes.HWND
user32.IsWindow.restype = wintypes.BOOL
user32.IsWindow.argtypes = [wintypes.HWND]
user32.IsIconic.restype = wintypes.BOOL
user32.IsIconic.argtypes = [wintypes.HWND]
user32.ShowWindow.restype = wintypes.BOOL
user32.ShowWindow.argtypes = [wintypes.HWND, ctypes.c_int]
user32.SetForegroundWindow.restype = wintypes.BOOL
user32.SetForegroundWindow.argtypes = [wintypes.HWND]
user32.BringWindowToTop.restype = wintypes.BOOL
user32.BringWindowToTop.argtypes = [wintypes.HWND]
user32.SetWindowPos.restype = wintypes.BOOL
user32.SetWindowPos.argtypes = [wintypes.HWND, wintypes.HWND, ctypes.c_int, ctypes.c_int, ctypes.c_int, ctypes.c_int, wintypes.UINT]
user32.GetWindowThreadProcessId.restype = wintypes.DWORD
user32.GetWindowThreadProcessId.argtypes = [wintypes.HWND, ctypes.POINTER(wintypes.DWORD)]
user32.AttachThreadInput.restype = wintypes.BOOL
user32.AttachThreadInput.argtypes = [wintypes.DWORD, wintypes.DWORD, wintypes.BOOL]
user32.PostMessageW.restype = wintypes.BOOL
user32.PostMessageW.argtypes = [wintypes.HWND, wintypes.UINT, wintypes.WPARAM, wintypes.LPARAM]
user32.SendMessageTimeoutW.restype = LRESULT
user32.SendMessageTimeoutW.argtypes = [
    wintypes.HWND, wintypes.UINT, wintypes.WPARAM, wintypes.LPARAM,
    wintypes.UINT, wintypes.UINT, ctypes.POINTER(ctypes.c_size_t),
]
user32.GetAsyncKeyState.restype = ctypes.c_short
user32.GetAsyncKeyState.argtypes = [ctypes.c_int]
user32.EnumWindows.restype = wintypes.BOOL
user32.EnumWindows.argtypes = [ENUMWINDOWSPROC, wintypes.LPARAM]
user32.IsWindowVisible.restype = wintypes.BOOL
user32.IsWindowVisible.argtypes = [wintypes.HWND]
user32.GetWindowTextLengthW.restype = ctypes.c_int
user32.GetWindowTextLengthW.argtypes = [wintypes.HWND]
user32.keybd_event.argtypes = [wintypes.BYTE, wintypes.BYTE, wintypes.DWORD, ctypes.c_void_p]

kernel32.GetModuleHandleW.restype = wintypes.HMODULE
kernel32.GetModuleHandleW.argtypes = [wintypes.LPCWSTR]
kernel32.CreateMutexW.restype = wintypes.HANDLE
kernel32.CreateMutexW.argtypes = [ctypes.c_void_p, wintypes.BOOL, wintypes.LPCWSTR]
kernel32.OpenProcess.restype = wintypes.HANDLE
kernel32.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]
kernel32.CloseHandle.restype = wintypes.BOOL
kernel32.CloseHandle.argtypes = [wintypes.HANDLE]
kernel32.QueryFullProcessImageNameW.restype = wintypes.BOOL
kernel32.QueryFullProcessImageNameW.argtypes = [wintypes.HANDLE, wintypes.DWORD, wintypes.LPWSTR, ctypes.POINTER(wintypes.DWORD)]
kernel32.GetCurrentThreadId.restype = wintypes.DWORD
kernel32.CreateToolhelp32Snapshot.restype = wintypes.HANDLE
kernel32.CreateToolhelp32Snapshot.argtypes = [wintypes.DWORD, wintypes.DWORD]
kernel32.Process32FirstW.restype = wintypes.BOOL
kernel32.Process32FirstW.argtypes = [wintypes.HANDLE, ctypes.POINTER(PROCESSENTRY32W)]
kernel32.Process32NextW.restype = wintypes.BOOL
kernel32.Process32NextW.argtypes = [wintypes.HANDLE, ctypes.POINTER(PROCESSENTRY32W)]

INVALID_HANDLE_VALUE = ctypes.c_void_p(-1).value


# --- helpers -----------------------------------------------------------------

def is_key_down(vk_code):
    return bool(user32.GetAsyncKeyState(vk_code) & 0x8000)


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

    # Fallback in case Spotify ever changes its main window class name:
    # walk top-level windows and match by owning process instead.
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


def is_spotify_process_running():
    snapshot = kernel32.CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0)
    if not snapshot or snapshot == INVALID_HANDLE_VALUE:
        return False
    try:
        entry = PROCESSENTRY32W()
        entry.dwSize = ctypes.sizeof(PROCESSENTRY32W)
        has_entry = kernel32.Process32FirstW(snapshot, ctypes.byref(entry))
        while has_entry:
            if entry.szExeFile.lower() == SPOTIFY_PROCESS_NAME:
                return True
            has_entry = kernel32.Process32NextW(snapshot, ctypes.byref(entry))
        return False
    finally:
        kernel32.CloseHandle(snapshot)


def launch_spotify():
    """Runs Spotify.exe. If Spotify is already running - even fully hidden in
    the tray - its own single-instance handling activates and shows the
    existing window instead of starting a second copy. That's also the most
    reliable way to bring a tray-hidden window back: poking it directly with
    ShowWindow can leave its Chromium-based UI visually frozen, but letting
    Spotify wake itself up this way does not."""
    exe = os.path.join(os.environ.get("APPDATA", ""), "Spotify", "Spotify.exe")
    if os.path.isfile(exe):
        subprocess.Popen([exe])
        return

    try:
        os.startfile("spotify:")
    except OSError:
        logging.error("Could not find Spotify.exe (checked %s) or the spotify: URI handler", exe)


def wait_for_condition(predicate, timeout, interval=0.1):
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        if predicate():
            return True
        time.sleep(interval)
    return False


def launch_spotify_hidden():
    """Used only at script startup: launches Spotify without its window ever
    appearing on screen, by passing SW_HIDE as the process's initial
    show-window state - the same trick as ShellExecute(..., SW_HIDE). A
    well-behaved Win32 app shows its main window with ShowWindow(hwnd,
    nCmdShow) using exactly that startup hint, so this keeps it from being
    drawn in the first place; Spotify's tray icon still appears normally,
    since that's created independently of the main window's visibility.
    --minimized was tried first but only minimizes to the taskbar, not the
    tray."""
    exe = os.path.join(os.environ.get("APPDATA", ""), "Spotify", "Spotify.exe")
    if os.path.isfile(exe):
        startupinfo = subprocess.STARTUPINFO()
        startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
        startupinfo.wShowWindow = subprocess.SW_HIDE
        subprocess.Popen([exe], startupinfo=startupinfo)
    else:
        logging.warning("Could not find Spotify.exe at %s, falling back to a visible launch", exe)
        launch_spotify()

    # Safety net in case a future Spotify version stops honoring SW_HIDE (or
    # the spotify: URI fallback above was used, which offers no way to hint
    # a hidden start at all): if the window shows up anyway, tray-minimize it
    # the same way the hotkey does.
    hwnd = None
    if wait_for_condition(lambda: bool(find_spotify_window()), timeout=20.0, interval=0.2):
        hwnd = find_spotify_window()
    if hwnd and user32.IsWindowVisible(hwnd):
        user32.PostMessageW(hwnd, WM_CLOSE, 0, 0)


def send_appcommand(cmd):
    hwnd = find_spotify_window()
    if not hwnd or not user32.IsWindow(hwnd):
        logging.warning("Spotify window not found, ignoring command %s", cmd)
        return
    lparam = cmd << 16
    result = ctypes.c_size_t(0)
    ok = user32.SendMessageTimeoutW(
        hwnd, WM_APPCOMMAND, hwnd, lparam, SMTO_ABORTIFHUNG, 2000, ctypes.byref(result)
    )
    if not ok:
        logging.warning("SendMessageTimeoutW timed out for command %s", cmd)


def force_foreground(hwnd):
    if not user32.IsWindowVisible(hwnd):
        # Showing a fully tray-hidden window directly (ShowWindow, even a
        # minimize/restore cycle) can leave Spotify's Chromium-based UI
        # visually frozen - unanimated, unresponsive. Re-running Spotify.exe
        # triggers its own single-instance activation instead, which wakes
        # and shows the existing window correctly - the same thing that
        # happens when you launch it again from the Start menu while it's
        # already running.
        launch_spotify()
        wait_for_condition(lambda: user32.IsWindowVisible(hwnd), timeout=3.0)
    elif user32.IsIconic(hwnd):
        user32.ShowWindow(hwnd, SW_RESTORE)
    else:
        user32.ShowWindow(hwnd, SW_SHOW)

    cur_thread = kernel32.GetCurrentThreadId()
    fg_hwnd = user32.GetForegroundWindow()
    fg_thread = user32.GetWindowThreadProcessId(fg_hwnd, None) if fg_hwnd else 0
    target_thread = user32.GetWindowThreadProcessId(hwnd, None)

    # SetForegroundWindow is normally refused for background processes;
    # attaching our input queue to both the current foreground window and the
    # target window's thread is the standard way around that restriction.
    attached_fg = fg_thread and fg_thread != cur_thread and user32.AttachThreadInput(cur_thread, fg_thread, True)
    attached_target = target_thread and target_thread != cur_thread and user32.AttachThreadInput(cur_thread, target_thread, True)

    user32.BringWindowToTop(hwnd)
    # Briefly force above topmost windows (e.g. a fullscreen game's surface),
    # then drop the topmost flag again so Spotify doesn't stay pinned on top.
    user32.SetWindowPos(hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE | SWP_NOMOVE)
    user32.SetWindowPos(hwnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOSIZE | SWP_NOMOVE)
    user32.SetForegroundWindow(hwnd)

    if attached_fg:
        user32.AttachThreadInput(cur_thread, fg_thread, False)
    if attached_target:
        user32.AttachThreadInput(cur_thread, target_thread, False)

    # Confirm the switch actually landed before returning instead of trusting
    # SetForegroundWindow's return value - right after waking Spotify up
    # from a full tray-hide in particular, its own activation and ours can
    # race, occasionally leaving GetForegroundWindow() not yet updated by
    # the time this returns. If a later press reads that stale state before
    # it settles, it misjudges whether Spotify is currently focused (e.g.
    # a close request right after opening silently doing nothing).
    if not wait_for_condition(lambda: user32.GetForegroundWindow() == hwnd, timeout=0.5):
        user32.keybd_event(VK_MENU, 0, 0, None)
        user32.SetForegroundWindow(hwnd)
        user32.keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, None)
        wait_for_condition(lambda: user32.GetForegroundWindow() == hwnd, timeout=0.5)


def toggle_spotify():
    hwnd = find_spotify_window()
    if hwnd and user32.IsWindow(hwnd):
        # A window that's already hidden (tray-minimized) can be left
        # registered as the foreground window by Windows even after it's no
        # longer visible - checking IsWindowVisible first avoids treating
        # that stale state as "focused" and sending it a second, no-op
        # WM_CLOSE instead of actually bringing it back.
        if user32.IsWindowVisible(hwnd) and user32.GetForegroundWindow() == hwnd:
            logging.info("Spotify already focused, sending close (tray-minimize)")
            user32.PostMessageW(hwnd, WM_CLOSE, 0, 0)
            # WM_CLOSE is posted asynchronously; wait for it to actually take
            # effect so a rapid next press doesn't read the still-visible
            # window and send a redundant close instead of reopening.
            wait_for_condition(lambda: not user32.IsWindowVisible(hwnd), timeout=1.0)
        else:
            logging.info("Bringing Spotify to the foreground")
            force_foreground(hwnd)
        return

    if is_spotify_process_running():
        logging.info("Spotify process is running but has no window yet, not launching another instance")
        return

    logging.info("Spotify process not found, launching it")
    launch_spotify()


# --- action queue / worker thread --------------------------------------------

action_queue = queue.Queue()

ACTIONS = {
    "playpause": lambda: send_appcommand(APPCOMMAND_MEDIA_PLAY_PAUSE),
    "previous": lambda: send_appcommand(APPCOMMAND_MEDIA_PREVIOUSTRACK),
    "next": lambda: send_appcommand(APPCOMMAND_MEDIA_NEXTTRACK),
    "toggle_spotify": toggle_spotify,
}


def worker_loop():
    while True:
        action = action_queue.get()
        try:
            ACTIONS[action]()
        except Exception:
            logging.exception("Error while handling action %s", action)


# --- low-level mouse hook -----------------------------------------------------

def classify_xbutton(x_button, ctrl, shift):
    if x_button == XBUTTON1:
        if shift and not ctrl:
            return "previous"
        return None
    if x_button == XBUTTON2:
        if shift and ctrl:
            return "toggle_spotify"
        if shift:
            return "next"
        if not ctrl:
            return "playpause"
        return None
    return None


# Tracks whether we swallowed a button-down so the matching button-up is
# swallowed too, even if a modifier key changed state mid-click.
_swallow_state = {XBUTTON1: False, XBUTTON2: False}


def low_level_mouse_proc(n_code, w_param, l_param):
    if n_code == 0:
        info = ctypes.cast(l_param, ctypes.POINTER(MSLLHOOKSTRUCT)).contents
        x_button = (info.mouseData >> 16) & 0xFFFF

        if w_param == WM_XBUTTONDOWN and x_button in _swallow_state:
            action = classify_xbutton(x_button, is_key_down(VK_CONTROL), is_key_down(VK_SHIFT))
            if action:
                action_queue.put(action)
                _swallow_state[x_button] = True
                return 1
        elif w_param == WM_XBUTTONUP and _swallow_state.get(x_button):
            _swallow_state[x_button] = False
            return 1

    return user32.CallNextHookEx(None, n_code, w_param, l_param)


# --- setup / entry point -------------------------------------------------------

def setup_logging():
    os.makedirs(LOG_DIR, exist_ok=True)
    handler = logging.handlers.RotatingFileHandler(
        LOG_FILE, maxBytes=1_000_000, backupCount=2, encoding="utf-8"
    )
    handler.setFormatter(logging.Formatter("%(asctime)s %(levelname)s %(message)s"))
    logging.getLogger().addHandler(handler)
    logging.getLogger().setLevel(logging.INFO)


def ensure_single_instance():
    ctypes.set_last_error(0)
    kernel32.CreateMutexW(None, False, "Local\\SpotifyMouseHotkeys_SingleInstance")
    if ctypes.get_last_error() == ERROR_ALREADY_EXISTS:
        logging.info("Another instance is already running, exiting")
        sys.exit(0)


def main():
    setup_logging()
    ensure_single_instance()
    logging.info("Starting Spotify mouse hotkeys")

    threading.Thread(target=worker_loop, daemon=True).start()

    if not is_spotify_process_running():
        logging.info("Spotify isn't running, launching it minimized to the tray")
        # Runs in the background so the (up to ~20s) wait for its window to
        # appear doesn't delay installing the mouse hook below.
        threading.Thread(target=launch_spotify_hidden, daemon=True).start()

    hook_proc = HOOKPROC(low_level_mouse_proc)
    module_handle = kernel32.GetModuleHandleW(None)
    hook_handle = user32.SetWindowsHookExW(WH_MOUSE_LL, hook_proc, module_handle, 0)
    if not hook_handle:
        logging.error("Failed to install mouse hook (error %s)", ctypes.get_last_error())
        sys.exit(1)

    logging.info("Mouse hook installed, listening for input")
    msg = wintypes.MSG()
    try:
        while user32.GetMessageW(ctypes.byref(msg), None, 0, 0) > 0:
            user32.TranslateMessage(ctypes.byref(msg))
            user32.DispatchMessageW(ctypes.byref(msg))
    finally:
        user32.UnhookWindowsHookEx(hook_handle)
        logging.info("Mouse hook removed, exiting")


if __name__ == "__main__":
    try:
        main()
    except Exception:
        logging.exception("Fatal error")
        raise
