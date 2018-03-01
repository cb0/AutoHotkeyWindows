#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

<+F10::
SetTitleMatchMode, 2 ; approximate match
IfWinExist, cygdrive
{
WinActivate, cygdrive
}
IfWinNotExist, cygdrive
{
Run "C:\cygwin64\bin\mintty.exe" -i /Cygwin-Terminal.ico -
}
return