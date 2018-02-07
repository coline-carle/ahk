#SingleInstance force


SendAllClick(button)
{
  global WowWinID
  CoordMode Mouse, Relative
  MouseGetPos, xpos, ypos

  Loop, %WowWinID% {
    localID := WowWinID%A_Index%
    ControlClick , x%xpos% y%ypos%, ahk_id %localID%, , %button%
  }
  return
}

SendAllKey(key)
{
  global WowWinID
  Loop, %WowWinID% {
    localID := WowWinID%A_Index%
    ControlSend,, %key%, ahk_id %localID%
  }
  return
}

SendClonesKey(key)
{
  global WowWinID
  Loop, %WowWinID% {
    localID := WowWinID%A_Index%
    IfWinNotActive, ahk_id %localID%
        ControlSend, , %key%, ahk_id %localID%
  }
  return
}


; *** Grab unique window ID's ***
WinGet, WowWinID, List, World of Warcraft

#ifWinActive, World of Warcraft
F5::SendAllClick("RIGHT") ; mouse right click
F6::
  SendClonesKey("{Up down}") ; go up with clones
  KeyWait, F6
  SendClonesKey("{Up up}") ; go up with clones

F7::SendAllKey("{F7}") ; align view macro
F8::SendAllKey("{F8}") ; follow
F9::SendAllKey("{F9}") ; mount everybody
+F9::SendClonesKey("{F9}") ; mount all clones

SPACE::SendAllKey("{SPACE}")
