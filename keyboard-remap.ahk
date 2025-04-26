/* 
Capslock becomes a layer to enable hjkl navigation and give easier access 
to bracket symbols.
Navigation is on the middle row, symbols on the lower row
*/
#Requires AutoHotkey v2.0
SetCapsLockState "AlwaysOff"
; Pass-through CapsLock hotkey
*CapsLock::
{
    SetCapsLockState "AlwaysOff" ; Reset state to off
    return
}

; Ensure CapsLock can be used as a modifier
*CapsLock up::return ; Do nothing on release to allow modifier behavior

#HotIf GetKeyState("CapsLock", "P")
;Navigation
h::Left
j::Down
k::Up
l::Right
m::PgUp
ù::PgDn
q::Home
s::End
;Enter::Send '{Ctrl Alt Enter}'
; Scrolling (like mouse wheel)
u::Send "{WheelUp}"   ; Scroll up
i::Send "{WheelDown}" ; Scroll down
y::Send "{WheelUp 10}"   ; Scroll up
o::Send "{WheelDown 10}" ; Scroll down
;Symbols
n::`{  
,::}
`;::<
:::>
w::(
x::)
c::[
v::]
#HotIf

