; To run on startup:
; Create a shortcut for the ahk file.
; Press the Windows key + R to open the Run dialog box.
; Type shell:startup and press Enter.
; Put the shortcut here.

; See for numpad keys: https://www.autohotkey.com/docs/v1/KeyList.htm#numpad

; Map middle mouse scroll to buttons.
NumpadAdd::WheelUp
NumpadEnter::WheelDown
F1::WheelUp
F2::WheelDown

; Push F1, F2 over b/c of above.
F3::F1
F4::F2

; Note that this is the same as running Shift+Numpad1 if num lock is on.
NumpadEnd::Run 'D:\git\configurations_scripts\INFM109_websites.bat'
; Note that this is the same as running Shift+Numpad2 if num lock is on.
NumpadDown::Run 'D:\git\configurations_scripts\SDEV120_websites.bat'
