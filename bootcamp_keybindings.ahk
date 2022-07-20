; Apple Keyboard Boot Camp Script

;Key Remappings

LWin::LCtrl
Rwin::RCtrl
LCtrl::LWin

; at and double quote
"::@
@::"

; backslash and backtick
\::`
#::\

; alt-3 makes a hash
!3::Send {#}

; tilde and bar
|::~
~::|

;Hot Key Mappings

;This isn't working for cmd-tab
;^Tab:: AltTab

^BS::Send {Del}
^o::Send {Enter}
^i::!Enter
^Space::Send, {lwin down}s{lwin up}
^Up::Send, !{up}
^q::Send !{F4}
^!escape::Run taskmgr.exe
;^+q::Shutdown, 0

