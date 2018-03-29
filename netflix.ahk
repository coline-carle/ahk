#SingleInstance force

^space::
IfWinExist, Netflix - Mozilla Firefox
{
  ControlSend, ,{Space}, Netflix - Mozilla Firefox
}
IfWinExist, OnTopReplica
{
  Send, ^+o
}
return
