
; send clicks to game chars on windows 1 and 2
sendClick(button)
{
  global WowWinID1
  global WowWinID2
  CoordMode Mouse, Relative
  MouseGetPos, xpos, ypos
  ControlClick , x%xpos% y%ypos%, ahk_id %WowWinID1%, , %button%
  ControlClick , x%xpos% y%ypos%, ahk_id %WowWinID2%, , %button%

  return
}

sendKey(key)
{
  global WowWinID1
  global WowWinID2

}

; *** Grab unique window ID's ***
WinGet, WowWinID, List, World of Warcraft

; mouse send
#ifWinActive, World of Warcraft
  &::
    KeyWait, 1
    global WowWinID1
    global WowWinID2
    ControlSend,, {F6}, ahk_id %WowWinID1%
    ControlSend,, {F6}, ahk_id %WowWinID2%
    return
  é::
    KeyWait, 2
    global WowWinID1
    global WowWinID2
    ControlSend,, {F7}, ahk_id %WowWinID1%
    ControlSend,, {F7}, ahk_id %WowWinID2%
    return

  ²::
    sendClick("RIGHT")
    return
return
