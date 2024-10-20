; To run on startup:
; Create a shortcut for the ahk file.
; Press the Windows key + R to open the Run dialog box.
; Type shell:startup and press Enter.
; Put the shortcut here.

; See for numpad keys: https://www.autohotkey.com/docs/v1/KeyList.htm#numpad

; These scroll too far for my liking, so override
scrollAmount := 3
PgUp::{
    Loop scrollAmount {
        Send "{Up}"
    }
}
PgDn::{
    Loop scrollAmount {
        Send "{Down}"
    }
}

; F1 and F2 for middle mouse scroll
F1::Send "{WheelUp}"
F2::Send "{WheelDown}"

; Remap original F1 and F2 functionality to F3 and F4
F3::Send "{F1}"
F4::Send "{F2}"

; ^ = Ctrl
; ! = Alt
!Numpad1::Run 'D:\CourseScripts\SDEV120_02D.bat'
!Numpad2::Run 'D:\CourseScripts\SDEV120_C8D.bat'
!Numpad3::Run 'D:\CourseScripts\SDEV140_04D.bat'
