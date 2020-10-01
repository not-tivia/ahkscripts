#NoEnv
CoordMode, Mouse ; Required: change coord mode to screen vs relative.

|:
Send {F1 down}
RandomSleep(500,1200)
Send {F1 up}
Send {F2 down}
RandomSleep(500,1200)
Send {F2 up}
Send {F3 down}
RandomSleep(500,1200)
Send {F3 up}
Send {F4 down}
RandomSleep(500,1200)
Send {F4 up}
return


Ran(Num)
{
   Random, r, -1*Num, Num
   Return r
}

RandomSleep(min,max)
{
Random, random, %min%, %max%
Sleep %random%
}

MoveMouse(X, Y, Speed=0) {
   T := A_MouseDelay
   SetMouseDelay, -1
   MouseGetPos, CX, CY
   Pts := Round(Sqrt((X - CX)**2 + (Y - CY)**2) / [color=red]30[/color],0)
   Loop %Pts% {
      Random, NX, % CX - ((CX - X) / Pts) * (A_Index - 1)
                , % CX - ((CX - X) / Pts) * A_Index
      Random, NY, % CY - ((CY - Y) / Pts) * (A_Index - 1)
                , % CY - ((CY - Y) / Pts) * A_Index
      MouseMove, % NX, % NY, % Speed
   }
   MouseMove, % X, % Y, % Speed
   SetMouseDelay, % T
}

Scrolllock::
Pause
Suspend
Return

NumpadEnter::
KeyCount *=0
return