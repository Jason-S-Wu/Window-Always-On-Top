#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^SPACE::  Winset, Alwaysontop, , A

^!c::
DetectHiddenWindows On
WinGet, ID, List, ahk_class AutoHotkey
Loop, %id%
{
	this_id := id%A_Index%
	PostMessage, 0x111, 65405,,, ahk_id %this_id%
}
return