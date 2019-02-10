FileInstall, Image.png, %A_WorkingDir%\Image.png
Gui,+AlwaysOnTop
Gui, Color, 252933
Gui, Font, S12 CDefault Bold, Verdana
Gui, Font, S16 CDefault Bold, Verdana
Gui, Font, S�� CDefault Bold, Verdana
Gui, Font, S8 CDefault Bold, Verdana
Gui, Add, Text, cWhite x72 y29 w100 h20 +Center, F1 :: NumPad
Gui, Add, Text, cWhite x182 y29 w100 h20 +Center, F2 :: Normal
Gui, Add, Text, cWhite x292 y29 w90 h20 +Center, F3 :: Help
Gui, Add, GroupBox, x62 y9 w330 h50 , Mode
Gui, Add, Picture, x2 y69 w460 h80 , %A_WorkingDir%\Image.png
; Generated using SmartGUI Creator 4.0
Gui, Show, x458 y274 h156 w465, Novel Hotkey (By Proladon#7525)
Return

;//////////////////////////////////////////

keymode := 1
F1:: keymode := 1
F2:: keymode := 2
F3:: MsgBox, 1, Help, >> Using CTRL + Number << `n` `n`F1: Using NumPad Number `n`F2: Using Normal Number 

#If, (keymode = 1)
; "「」"
^Numpad1::
Send, {U+300C}
Send, {U+300D}
Send, {Enter}
Send, {Left}
Return

; "『』"
^Numpad2::
Send, {U+300E}
Send, {U+300F}
Send, {Enter}
Send, {Left}
Return

; "......"
^Numpad3::
loop, 6
{
    Send, {U+002E}
}
Return

; "！？"
^Numpad4::
Send, {U+FF01}
Send, {U+FF1F}
Send, {Enter}
Return

#If

;//////////////////////////////////

#If, (keymode = 2)
; "「」"
^1::
Send, {U+300C}
Send, {U+300D}
Send, {Enter}
Send, {Left}
Return

; "『』"
^2::
Send, {U+300E}
Send, {U+300F}
Send, {Enter}
Send, {Left}
Return

; "......"
^3::
loop, 6
{
    Send, {U+002E}
}
Return

; "！？"
^4::
Send, {U+FF01}
Send, {U+FF1F}
Send, {Enter}
Return

#If


;//////////////////////////////////////////

GuiClose:
ExitApp
