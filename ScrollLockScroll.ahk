/* Scroll Lock function restore 0.1.0
 * If Scroll lock is active, scroll the window
 * instead of moving the cursor when an arrow key is pressed.
 * This restores the original intended behaviour of Scroll Lock.
 * 
 * tPenguinLTG, 2013.
 */

Down::
GetKeyState, scrlkState, ScrollLock, T
if(scrlkState = "D")
  {
  ; Scroll down by one line
  ControlGetFocus, control, A
  SendMessage, 0x115, 1, 0, %control%, A
  }
else Send {Down}
Return

Up::
GetKeyState, scrlkState, ScrollLock, T
if(scrlkState = "D")
  {
  ; Scroll up by one line
  ControlGetFocus, control, A
  SendMessage, 0x115, 0, 0, %control%, A
  }
else Send {Up}
Return

Left::
GetKeyState, scrlkState, ScrollLock, T
if(scrlkState = "D")
  {
  ; Scroll left by one line
  ControlGetFocus, control, A
  SendMessage, 0x114, 0, 0, %control%, A
  }
else Send {Left}
Return

Right::
GetKeyState, scrlkState, ScrollLock, T
if(scrlkState = "D")
  {
  ; Scroll left by one line
  ControlGetFocus, control, A
  SendMessage, 0x114, 1, 0, %control%, A
  }
else Send {Right}
Return

