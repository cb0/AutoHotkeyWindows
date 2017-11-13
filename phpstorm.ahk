#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

<+F11::
SetTitleMatchMode, 2 ; approximate match
IfWinExist, PhpStorm
{
WinActivate, PhpStorm
}
IfWinNotExist, PhpStorm
{
Run "C:\Program Files\JetBrains\PhpStorm 2017.2.3\bin\phpstorm64.exe"
}
return