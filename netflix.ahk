#SingleInstance force
SetTitleMatchMode 2

^space::
IfWinExist, Netflix - Mozilla Firefox
{
  ControlSend, ,{Space}, Netflix - Mozilla Firefox
}
IfWinExist, YouTube - Mozilla Firefox
{
  ControlSend, ,{Space}, YouTube - Mozilla Firefox
}
IfWinExist, OnTopReplica
{
  Send, ^+o
}
Send, {Media_Play_Pause}
return
