#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

<+F12::
SetTitleMatchMode, 2 ; approximate match
IfWinExist, emacs@NB-PC0K48BC
{
WinActivate, emacs@NB-PC0K48BC
}
IfWinNotExist, emacs@NB-PC0K48BC
{
Run "C:\projects\emacs-25.3-i686\bin\runemacs.exe"
}
return