' Launches hotkeys.py with pythonw.exe, completely hidden - no
' console window, not even a brief flash. Double-click this file directly,
' or point Task Scheduler's Action at it instead of at python(w).exe.
'
' Assumes "pythonw" is on PATH (true for a standard Python install "Add
' python.exe to PATH" checked during setup). If it isn't, replace "pythonw"
' below with the full path, e.g.:
'   C:\Users\<you>\AppData\Local\Programs\Python\Python3xx\pythonw.exe

Set fso = CreateObject("Scripting.FileSystemObject")
scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)

Set shell = CreateObject("WScript.Shell")
shell.CurrentDirectory = scriptDir
shell.Run "pythonw """ & scriptDir & "\hotkeys.py""", 0, False
