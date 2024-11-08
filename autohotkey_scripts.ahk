;For AutoHotkey v2.0

; To run this script on startup:
; - Create a shortcut for this .ahk file.
; - Press Windows key + R to open the Run dialog box.
; - Type shell:startup and press Enter.
; - Place the shortcut in the Startup folder.

; Global variable to set scroll amount
global scrollAmount := 3

; PgUp and PgDn remapping with multiple "Up" or "Down" scrolls
PgUp::
{
    Loop scrollAmount
        Send "{Up}"
}

PgDn::
{
    Loop scrollAmount
        Send "{Down}"
}

#HotIf !GetKeyState("NumLock", "T")
NumpadAdd::Send "{WheelUp}"
NumpadEnter::Send "{WheelDown}"
#HotIf

; Alt + Numpad shortcuts for running scripts
; !Numpad1::Run "D:\CourseScripts\SDEV120_02D.bat"
; !Numpad2::Run "D:\CourseScripts\SDEV120_C8D.bat"
; !Numpad3::Run "D:\CourseScripts\SDEV140_04D.bat"
