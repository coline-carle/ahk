#Persistent
SetTimer, WatchOverwatch, 500
return

WatchOverwatch() {
  WinWaitActive, Overwatch
  Sleep, 13000 ; time necessary to launch + connect in ms
  Send, {Numpad0} ; keyboard shortcut that hide all chat for me
  WinWaitClose, Overwatch
}
