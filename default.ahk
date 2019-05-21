; =============== key bindings ==================
#t::Run Xshell.exe
#f::Run C:\Program Files\Mozilla Firefox\firefox.exe
#w::Run C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe
#c::Run C:\Users\ofey\AppData\Local\Programs\Microsoft VS Code\Code.exe
; #e::Run C:\Program Files (x86)\XYplorer\XYplorer.exe
!Space::
    {
        Send {Ctrl}  ; 自动重复由连续的按下事件组成 (没有弹起事件).
        Sleep 30  ; 在两次键击之间的毫秒数 (或使用 SetKeyDelay 设置).
    }
    Send {Ctrl}  ; 松开按键.
return

; ================ Fn 键的绑定 ==================
;#h::Send, {Left}
;#k::Send, {Right}
;#j::Send, {Down}
;#u::Send, {Up}
;#y::Send, {PgUp}
;#i::Send, {PgDn}

;#^h::Send, ^{Left}
;#^k::Send, ^{Right}
;#^j::Send, ^{Down}
;#^u::Send, ^{Up}
;#^y::Send, ^{PgUp}
;#^i::Send, ^{PgDn}

;#!h::Send, !{Left}
;#!k::Send, !{Right}
;#!j::Send, !{Down}
;#!u::Send, !{Up}
;#!y::Send, !{PgUp}
;#!i::Send, !{PgDn}

;$`::Send, ``
;$+`::Send, ~

$Space::Send {Space}

Space & j::
    GetKeyState, state, Alt
    if (state = "D"){
        SendInput !{Down}
    }
    else {
        GetKeyState, state, Control
        if (state = "D") {
            SendInput ^{Down}
        }
        else {
            GetKeyState, state, Lshift
            if (state = "D") {
                SendInput #{Down}
            } else {
                SendInput {Down}
            }
        }
    }
Return

Space & k::
    GetKeyState, state, Alt
    if (state = "D"){
        SendInput !{Up}
    }
    else {
        GetKeyState, state, Control
        if (state = "D") {
            SendInput ^{Up}
        }
        else {
            GetKeyState, state, Lshift
            if (state = "D") {
                SendInput #{Up}
            } else {
                SendInput {Up}
            }
        }
    }
Return

Space & h::
    GetKeyState, state, Alt
    if (state = "D"){
        SendInput !{Left}
    }
    else {
        GetKeyState, state, Control
        if (state = "D") {
            SendInput ^{Left}
        }
        else {
            GetKeyState, state, Lshift
            if (state = "D") {
                SendInput #{Left}
            } else {
                SendInput {Left}
            }
        }
    }
Return

Space & l::
    GetKeyState, state, Alt
    if (state = "D"){
        SendInput !{Right}
    }
    else {
        GetKeyState, state, Control
        if (state = "D") {
            SendInput ^{Right}
        }
        else {
            GetKeyState, state, Lshift
            if (state = "D") {
                SendInput #{Right}
            } else {
                SendInput {Right}
            }
        }
    }
Return

Space & u::
    GetKeyState, state, Alt
    if (state = "D"){
        SendInput !{PgUp}
    }
    else {
        GetKeyState, state, Control
        if (state = "D") {
            SendInput ^{PgUp}
        }
        else {
            SendInput {PgUp}
        }
    }
Return

Space & d::
    GetKeyState, state, Alt
    if (state = "D"){
        SendInput !{PgDn}
    }
    else {
        GetKeyState, state, Control
        if (state = "D") {
            SendInput ^{PgDn}
        }
        else {
            SendInput {PgDn}
        }
    }
Return

Space & x::Send {BackSpace}

Space & w::Send ^w

Space & q::Send !{F4}