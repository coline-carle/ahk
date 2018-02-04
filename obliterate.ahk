WinGet, wowid, list, World of Warcraft

#ifWinActive, World of Warcraft
  NumPad3::
    KeyWait, NumPad3, D
    ControlSend,, {NumPad3}, ahk_id %wowid1%
    ControlSend,, {NumPad3}, ahk_id %wowid2%
    Return
return
