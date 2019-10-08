#SingleInstance, Force
#NoTrayIcon
#NoEnv
DetectHiddenWindows, On

MsgBox, 4,, Would you like to host Minecraft server?

Run, Minecraft:
Process, Exist, Minecraft.Windows.exe
If !PID := ErrorLevel
{
  Send {Esc}
  Run ms-windows-store://pdp/?ProductId=9NBLGGH2JHXJ
  ExitApp
}

IfMsgBox Yes
{
  Run %A_WorkingDir%\bedrock_server.exe, , Hide
}

Process, WaitClose, Minecraft.Windows.exe

ControlSend, , Stop{Enter}, ahk_exe bedrock_server.exe
Sleep 3000
Process, Close, bedrock_server.exe

ExitApp
