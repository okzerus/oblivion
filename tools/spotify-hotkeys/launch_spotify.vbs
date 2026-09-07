' Launches Spotify hidden to the tray as early as possible at system
' startup - kept deliberately separate from spotify_hotkeys and written as
' plain VBScript (no Python, no PyInstaller self-extraction) so the one
' thing that has to run at the most contested moment of the boot sequence
' has the smallest possible footprint and nothing about it looks unusual
' to an antivirus heuristic scan.
'
' Point Task Scheduler's "At system startup" trigger at this file, and
' point a separate task with the "At log on" trigger at spotify_hotkeys
' (the .exe, or run_hidden.vbs) - see README.md.
'
' Spotify's own single-instance handling makes it safe to just always run
' this, even if Spotify happens to already be running.

Set shell = CreateObject("WScript.Shell")
spotifyExe = shell.ExpandEnvironmentStrings("%APPDATA%\Spotify\Spotify.exe")

Set fso = CreateObject("Scripting.FileSystemObject")
If fso.FileExists(spotifyExe) Then
    shell.Run """" & spotifyExe & """", 0, False
End If
