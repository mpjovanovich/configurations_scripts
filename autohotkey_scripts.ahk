; To run on startup:
; Create a shortcut for the ahk file.
; Press the Windows key + R to open the Run dialog box.
; Type shell:startup and press Enter.
; Put the shortcut here.

; See for numpad keys: https://www.autohotkey.com/docs/v1/KeyList.htm#numpad

; These scroll too far for my liking, so override
PgUp::{
    Loop 3 {
        Send "{Up}"
    }
}
PgDn::{
    Loop 3 {
        Send "{Down}"
    }
}

; Save my middle finger from falling off.
F1::{
    Loop 3 {
        Send "{Up}"
    }
}
F2::{
    Loop 3 {
        Send "{Down}"
    }
}
F3::F1
F4::F2


; ^ = Ctrl
; ! = Alt
!Numpad1::Run 'D:\CourseScripts\SDEV120_01D.bat'
!Numpad2::Run 'D:\CourseScripts\SDEV120_05D.bat'
