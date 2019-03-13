#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

method() {
  Run, regedit.exe /S Enable_Lock_Computer.reg
  sleep 1000
  Run, lock.bat
  sleep 2000
  Run, regedit.exe /S Disable_Lock_computer.reg
}

Run, regedit.exe /S Disable_Lock_computer.reg

SetTimer, Chronos, 500
return

Chronos:

FormatTime, timeVar, T12, Time

If timeVar = 23:00:00 ;need to start the script at 23:00 pm
{
  MsgBox, 1, ALert, check if you have filled your timesheet, 60
}

#l::
RegRead, OutputVar, HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon, DisableLockWorkstation

FormatTime, RequiredTime, T12, Time

If RequiredTime < 18:00:00 ;need to set the DLW reg key to 1 at 18:00:00 pm
{
  method()
  isabc = 2
}

If OutputVar=1
{
  FormatTime, RequiredTime1, T12, Time
  If RequiredTime1 >= 18:00:00
  {
    if isabc != 1
    {
      MsgBox,3,Inia Alert,Did you fill your timesheet?

      IfMsgBox Yes
      {
        method()
        isabc = 1
      }
      else IfMsgBox No
      {
        Run, chrome.exe https://iniapro.objectfrontier.com
      }
      else IfMsgBox Cancel
      return
    }
    else
    {
      method()
    }
  }
}
