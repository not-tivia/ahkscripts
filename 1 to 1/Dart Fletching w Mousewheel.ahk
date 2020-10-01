/*
Simple AHK script to fletch darts using the mousewheel
Usage: Place tips and feathers side by side horizontally
in any two inventory slots
https://github.com/Nicholas-/AHK-OSRS
*/

#NoEnv
Coordmode, Mouse, Window
SendMode Input
SetTimer, Reset, 100
global Count := 1



$WheelUp::
$WheelDown::

    if Count(4, 1) OR Count(4, 3)
        Click Left
    else if Count(4, 2)
        MouseMove, 40, 0, 0, R
    else if Count(4, 4)
        MouseMove, -40, 0, 0, R

return


Reset:
If (A_TimeSinceThisHotkey > 600)
    Count := 1
Return

Count(Limit, Check) {
If (Count = Check) {
    Count := ((Count >= Limit) ? 1 : Count + 1)
    Return True
    }
Return False
}