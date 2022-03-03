#NoEnv
#SingleInstance Force
Slp := 120 
SetTitleMatchMode, regex
  #G::                        ; Opens Google Drive folder
    Run, explore C:\Users\%A_UserName%\My Drive
    return
#IfWinActive Google Sheets ahk_exe firefox.exe
  F1::return                  ; Disables F1 to open help
  !Down::Send ^!r             ; Excel filter dropdown shortcut for Sheets
  !Up::return                 ; Disable Sheets next sheet shortcut
  ^PgUp::Send !{Up}           ; Excel next sheet shortcut for Sheets
  ^PgDn::Send !{Down}         ; Excel last sheet shortcut for Sheets
  ^!1::                       ; Set zoom to 100% in Sheets
  Send !/100
  Sleep Slp
  Send {Enter}
  return
  ^!2::                       ; Set zoom to 150% in Sheets
  Send !/150
  Sleep Slp
  Send {Enter}
  return
  ^!3::                       ; Set zoom to 200% in Sheets
  Send !/200
  Sleep Slp
  Send {Enter}
return
#IfWinActive Excel ahk_exe EXCEL.EXE
  F1::return                  ; Disables F1 to open help
