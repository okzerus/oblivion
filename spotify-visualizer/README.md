# Spotify Audio Visualizer

A Windows overlay that draws jumping "jumping bars" audio bars driven only by Spotify's
audio, always on top (including full-screen games), click-through, and toggled with
**Ctrl+Shift+Mouse4**.

> Built with C# / .NET 8 / WPF. Windows-only - this repository ([`okzerus/oblivion`](../..))
> is otherwise unrelated (a Minecraft data pack); this project just lives in a subfolder of
> it by request.

## Features

- **Always on top** of everything, including elevated and full-screen apps/games (see
  [Fullscreen games](#fullscreen-games-caveat) below for the one real limitation).
- **Click-through**: the overlay never intercepts mouse clicks (`WS_EX_TRANSPARENT`), so it
  never gets in the way of whatever's underneath.
- **Spotify-only audio**: uses Windows' per-process WASAPI loopback capture
  (`ActivateAudioInterfaceAsync` + `AUDIOCLIENT_ACTIVATION_PARAMS`) to capture *only* audio
  rendered by the Spotify process tree - no other app's sound is ever picked up.
- **Any/all screen edges**: bottom, top, left, right, or any combination at once.
- **Toggle hotkey**: default Ctrl+Shift+Mouse4 (the mouse "back" button), fully remappable
  (any combo of Ctrl/Shift/Alt + Mouse4/Mouse5/Middle) in Settings.
- **Adaptive color**: periodically samples a downscaled screenshot, extracts a
  saturation-weighted dominant hue, and picks a bar color offset in hue (and pushed to the
  opposite end of the lightness scale) so it reads clearly against whatever's on screen
  instead of blending in. The overlay windows exclude themselves from screen capture
  (`SetWindowDisplayAffinity`/`WDA_EXCLUDEFROMCAPTURE`) so this never samples its own bars.
  Static color, a spatial gradient, and a cycling rainbow mode are also available.
- **Non-repetitive motion**: bar heights get a slow per-bar phase wobble layered on top of
  the actual spectrum, so identical loudness never produces pixel-identical bars.
- **Extensively configurable**: bar count/spacing/thickness/length/corner radius, edge
  margin, growth style (edge-to-edge or mirrored from center), attack/decay speed,
  sensitivity, noise gate, FFT size, frequency range, every color-mode parameter, opacity,
  glow, target FPS, and the hotkey itself. See Settings (tray icon -> Settings...).
- **Fades out when it's quiet or Spotify isn't running** (configurable: fade out, just settle
  to resting height, freeze on the last active frame, or switch to a soft ambient idle pulse
  instead - tray icon -> Settings -> "When it's quiet / Spotify isn't running").
- **Fades out near your mouse cursor** so it never visually clutters whatever you're pointing
  at right by the screen edge - configurable radius, strength, and how far off the edge the
  cursor still triggers it.
- **Repeating pattern**: instead of one continuous run of bars, tile the same pattern
  multiple times across an edge (optionally mirrored on alternating repeats) so it doesn't
  read as "one clump in the middle."
- **Stereo split + asymmetry**: with centered growth, the left half of the strip can be
  driven by Spotify's actual left channel and the right half by the right channel (real
  stereo image, not a fake effect), plus an independent asymmetry wobble that keeps the
  overall shape centered while breaking a few-pixel-perfect mirror.
- **Peak-hold caps, a fading tip trail past each bar, and per-bar color variation** for extra
  visual texture - all optional, off by default.

## Requirements

- **Windows 11, or Windows Server 2022+ (build 20348+), for Spotify-only capture to actually
  isolate Spotify.** `ActivateAudioInterfaceAsync` itself works from Windows 10 build 19041
  (version 2004), but Microsoft only documents the *process-scoping* parameters - the part
  that keeps this to Spotify instead of your whole PC - as supported from build 20348, which
  no released consumer Windows 10 build reaches (10 tops out at 19045). Below that, the app
  still runs and activation still "succeeds," but the OS can silently ignore the process
  filter and hand back the entire system audio mix instead - it'll look like it's working
  while actually reacting to everything, not just Spotify. The app warns about this on
  startup if it detects an unsupported build; if you've hit exactly that ("it reacts to
  audio even when Spotify is paused"), this is almost certainly why.
- **.NET 8 SDK** to build.
- Spotify desktop app (not required to be running at launch - the overlay waits for it and
  attaches automatically once it starts, and re-attaches if you restart Spotify).

## Building & running

```
cd spotify-visualizer
dotnet build -c Release
dotnet run --project src/SpotifyVisualizer -c Release
```

Or open `SpotifyVisualizer.sln` in Visual Studio 2022+ and run.

The app has no main window - it runs from the system tray. Right-click the tray icon for
Show/Hide, Settings, and Exit.

## Building a standalone .exe

`dotnet build` only produces a `SpotifyVisualizer.exe` that still needs its `.dll`s sitting
next to it and the .NET 8 runtime installed. To get one self-contained file you can copy
anywhere and just double-click:

```
.\publish.ps1
```

which runs:

```
dotnet publish src\SpotifyVisualizer -c Release -r win-x64 --self-contained true `
    -p:PublishSingleFile=true -p:PublishReadyToRun=true -p:IncludeNativeLibrariesForSelfExtract=true `
    -o publish
```

That bundles the .NET runtime into `publish\SpotifyVisualizer.exe` (~150 MB, but nothing else
needs to be installed on the machine it runs on). If everyone running it already has the
[.NET 8 Desktop Runtime](https://dotnet.microsoft.com/download/dotnet/8.0) installed, use
`.\publish.ps1 -SelfContained:$false` instead for a much smaller (~1 MB) exe that depends on
that runtime being present.

Either way the output is one file: copy `publish\SpotifyVisualizer.exe` wherever you like
(e.g. `C:\Program Files\SpotifyVisualizer\` or just your desktop) - it doesn't need an
installer. To have it start automatically, put a shortcut to it in
`shell:startup` (Win+R -> `shell:startup`). Since it requests administrator elevation, that
shortcut needs "Run as administrator" checked in its properties, and Windows will prompt for
UAC consent every time it starts unless you also set it up via Task Scheduler with "Run with
highest privileges" (that route doesn't show a UAC prompt).

### Why it asks for administrator

The app's manifest requests elevation (`requireAdministrator`). This is specifically so the
overlay's always-on-top z-order reliably beats games/launchers that also run elevated -
Windows can otherwise let an elevated window's topmost state win over a non-elevated one's.
If you don't need that (e.g. you don't play elevated games), you can drop this by editing
`app.manifest`'s `requestedExecutionLevel` to `asInvoker` and rebuilding.

## Fullscreen games caveat

Windows has automatically converted most DirectX exclusive-fullscreen games to a
borderless-equivalent mode ("fullscreen optimizations") by default since Windows 10, and the
overlay works fine there and in any borderless-windowed game. The one case it can't cover is
a game that forces *true* DirectX exclusive fullscreen with fullscreen optimizations
disabled - in that mode, essentially nothing can draw on top short of hooking the game's own
`Present()` call (the technique RTSS, Discord's overlay, and some cheats use), which risks
anti-cheat bans in competitive games. This project deliberately does **not** do that; if you
hit a game like this, alt-tab or switch it to borderless windowed mode.

## How Spotify-only capture works

Spotify's desktop app can run as more than one `Spotify.exe` process (main window + helper
processes). `ProcessLoopbackCapture` watches for every process matching the configured name
(default `Spotify`), opens a per-process WASAPI loopback stream on each one it finds
(`PROCESS_LOOPBACK_MODE_INCLUDE_TARGET_PROCESS_TREE`, so any child process's audio is
captured too), and feeds all of their samples into the same spectrum analyzer. It re-scans
every 2 seconds, so quitting and relaunching Spotify is picked up automatically without
restarting the visualizer.

## Project layout

```
src/SpotifyVisualizer/
  Audio/        FFT, spectrum analysis, WASAPI process-loopback capture + its raw COM interop
  Interop/      Shared Win32 P/Invoke (window styles, topmost, capture exclusion, mouse hook)
  Input/        Global low-level mouse hook for the toggle hotkey
  Models/       VisualizerSettings and supporting enums
  Overlay/      Per-edge click-through overlay windows, bar rendering, the render loop
  Screen/       Adaptive screen-color sampling and palette computation
  Settings/     JSON persistence + the settings window UI
  Tray/         System tray icon and menu
```

## Notes / things to be aware of

- Settings live in `%AppData%\SpotifyVisualizer\settings.json` and changes in the Settings
  window apply live and autosave shortly after you stop adjusting a control.
- This was written and reviewed carefully (including verifying the undocumented-in-NAudio
  process-loopback COM interop against Microsoft's own samples/docs), but it hasn't been
  built or run on an actual Windows machine as part of this change - please open an issue
  (or just fix it) if something doesn't compile or misbehaves on your setup.
