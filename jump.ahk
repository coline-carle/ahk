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

SPACE::SendAllKey("{SPACE}")
