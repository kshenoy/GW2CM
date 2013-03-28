#SingleInstance force

; ! - Alt
; + - Shift
; ^ - Ctrl
; # - Win


; __________ HOTKEY BINDINGS IN GW2 ____________________________________________

; Specify the in-game bindings used
skill_1 = r
skill_2 = q
skill_3 = e
skill_4 = !q
skill_5 = !e
skill_6 = f
skill_7 = z
skill_8 = x
skill_9 = c
skill_0 = v

dodge       = {MButton}
switch_weap = !r
stow_weap   = +r
take_target = t



; __________ BINDINGS FOR COMBAT MODE __________________________________________

left_click         = %skill_1%
alt_left_click     = %switch_weap%
ctrl_left_click    = %take_target%
shift_left_click   = %stow_weap%

right_click        = %dodge%
alt_right_click    = %skill_7%
shift_right_click  = %skill_8%
ctrl_right_click   = %skill_9%

middle_click       = %dodge%
alt_middle_click   = %skill_6%
shift_middle_click = %skill_0%

scroll_down        = %skill_2%
alt_scroll_down    = %skill_4%
ctrl_scroll_down   = {PgDn}
scroll_up          = %skill_3%
alt_scroll_up      = %skill_5%
ctrl_scroll_up     = {PgUp}

toggle_key         = !b
target_lock        = b
chat_key           = Enter
escape_key         = Escape
map_key            = m
guild_key          = Numpad9
hero_key           = Numpad5
inventory_key      = i
invite_key         = p
pvp_key            = Numpad4
reply_key          = BackSpace
social_key         = Numpad8
trade_key          = u
wvw_key            = Numpad6
command_key        = /



; __________ CROSSHAIR OPTIONS _________________________________________________

; xhair_yper : Location of Crosshair from top of screen, as a percentage.
;              0 = Top, 1 = Bottom of Screen
; xhair_ypos : Location of Crosshair in pixels with offset of ( size of xhair / 2 )
xhair_yper = 0.45
xhair_ypos := ( A_ScreenHeight*xhair_yper - 50 )
;xhair_img  = SmallXOrange.bmp
xhair_img  = Crosshair.bmp



; __________ COMBAT MODE SCRIPT. DON'T MODIFY ANYTHING BELOW THIS ______________

combat_mode  := false

#MaxHotkeysPerInterval 1000

Hotkey, IfWinActive, Guild Wars 2
Hotkey, %toggle_key%, toggle_combat_mode, UseErrorLevel 2
Hotkey, %target_lock%, target_lock, UseErrorLevel 2
Hotkey, %chat_key%, open_chat, UseErrorLevel 2
Hotkey, %command_key%, open_command, UseErrorLevel 2
Hotkey, %escape_key%, open_escape, UseErrorLevel 2
Hotkey, %guild_key%, open_guild, UseErrorLevel 2
Hotkey, %hero_key%, open_hero, UseErrorLevel 2
Hotkey, %inventory_key%, open_inventory, UseErrorLevel 2
Hotkey, %invite_key%, open_invite, UseErrorLevel 2
Hotkey, %map_key%, open_map, UseErrorLevel 2
Hotkey, %pvp_key%, open_pvp, UseErrorLevel 2
Hotkey, %reply_key%, open_reply, UseErrorLevel 2
Hotkey, %social_key%, open_social, UseErrorLevel 2
Hotkey, %trade_key%, open_trade, UseErrorLevel 2
Hotkey, %wvw_key%, open_wvw, UseErrorLevel 2
return


#IfWinActive ahk_class ArenaNet_Dx_Window_Class

toggle_combat_mode:
  if ( !combat_mode ){
    combat_mode := true
    BlockInput, MouseMove
    ; Move cursor to Crosshair location
    DllCall("SetCursorPos", int, ( A_ScreenWidth/2 - 4 ) , int, ( A_ScreenHeight * xhair_yper ))
    Send {RButton Down}
    MouseMove 4, 0, 0, R
    BlockInput, MouseMoveOff
    SplashImage, %xhair_img%,y%xhair_ypos% b,,,Crs
    WinSet, TransColor, White, Crs
    SplashImage, Show,,,Crs
    Sleep, 300
    ;Send, /s C-Mode ON
  } else {
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
    ;Send, /s C-Mode OFF
  }
return


target_lock:
if ( varExist( target_lock ) && combat_mode ) {
  Send, {%target_lock% Up}
  Sleep, 20
  Send, {%target_lock% Down}
  Sleep, 100
} else {
  Send, %target_lock%
}
return



; __________ LEFT-CLICK BINDINGS _______________________________________________

$LButton::
  if ( varExist( left_click ) && combat_mode ){
    Send, %left_click%
  } else {
    Click Down Left
    KeyWait, LButton
    Click Up Left
  }
return

; Alt+LeftClick
$!LButton::
  if ( varExist( alt_left_click ) && combat_mode ){
    Send, %alt_left_click%
  } else {
    Send, {Alt Down}
    Click Down Left
    KeyWait, LButton
    Click Up Left
    Send, {Alt Up}
  }
return

; Ctrl+LeftClick
;$^LButton::
  if ( varExist( ctrl_left_click ) && combat_mode ){
    Send, %ctrl_left_click%
  } else {
    Send, {Control Down}
    Click Down Left
    KeyWait, LButton
    Click Up Left
    Send, {Control Up}
  }
return

; Shift+LeftClick
$+LButton::
  if ( varExist( shift_left_click ) && combat_mode ){
    Send, %shift_left_click%
  } else {
    Send, {Shift Down}
    Click Down Left
    KeyWait, LButton
    Click Up Left
    Send, {Shift Up}
  }
return



; __________ RIGHT-CLICK BINDINGS ______________________________________________

$RButton::
  if ( varExist( right_click ) && combat_mode ){
    Send, %right_click%
  } else {
    Click Down Right
    KeyWait, RButton
    Click Up Right
  }
return

; Alt+RightClick
$!RButton::
  if ( varExist( alt_right_click ) && combat_mode ){
    Send, %alt_right_click%
  } else {
    Send, {Alt Down}
    Click Down Right
    KeyWait, RButton
    Click Up Right
    Send, {Alt Up}
  }
return

; Ctrl+RightClick
$^RButton::
  if ( varExist( ctrl_right_click ) && combat_mode ){
    Send, %ctrl_right_click%
  } else {
    Send, {Control Down}
    Click Down Right
    KeyWait, RButton
    Click Up Right
    Send, {Control Up}
  }
return

; Shift+RightClick
$+RButton::
  if ( varExist( shift_right_click ) && combat_mode ){
    Send, %shift_right_click%
  } else {
    Send, {Shift Down}
    Click Down Right
    KeyWait, RButton
    Click Up Right
    Send, {Shift Up}
  }
return



; __________ MIDDLE-CLICK BINDINGS _____________________________________________

$MButton::
  if ( varExist( middle_click ) && combat_mode ){
    Send, %middle_click%
  } else {
    Click Down Middle
    KeyWait, MButton
    Click Up Middle
  }
return

; Alt+MiddleClick
$!MButton::
  if ( varExist( alt_middle_click ) && combat_mode ){
    Send, %alt_middle_click%
  } else {
    Send, {Alt Down}
    Click Down Middle
    KeyWait, MButton
    Click Up Middle
    Send, {Alt Up}
  }
return

; Ctrl+MiddleClick
$^MButton::
  if ( varExist( ctrl_middle_click ) && combat_mode ){
    Send, %ctrl_middle_click%
  } else {
    Send, {Control Down}
    Click Down Middle
    KeyWait, MButton
    Click Up Middle
    Send, {Control Up}
  }
return

; Shift+MiddleClick
$+MButton::
  if ( varExist( shift_middle_click ) && combat_mode ){
    Send, %shift_middle_click%
  } else {
    Send, {Shift Down}
    Click Down Middle
    KeyWait, MButton
    Click Up Middle
    Send, {Shift Up}
  }
return



; __________ MOUSEWHEEL BINDINGS _______________________________________________

$WheelUp::
  if ( combat_mode ){
    Send, %scroll_up%
  } else {
    Send, {WheelUp}
  }
return

$WheelDown::
  if ( combat_mode ){
    Send, %scroll_down%
  } else {
    Send, {WheelDown}
  }
return

; Alt+ScrollUp
$!WheelUp::
  if ( combat_mode ){
    Send, %alt_scroll_up%
  } else {
    Send, {!WheelUp}
  }
return

; Alt+ScrollDown
$!WheelDown::
  if ( combat_mode ){
    Send, %alt_scroll_down%
  } else {
    Send, {!WheelDown}
  }
return

; Ctrl+ScrollUp
$^WheelUp::
  if ( combat_mode ){
    Send, %ctrl_scroll_up%
  } else {
    Send, {^WheelUp}
  }
return

; Ctrl+ScrollDown
$^WheelDown::
  if ( combat_mode ){
    Send, %ctrl_scroll_down%
  } else {
    Send, {^WheelDown}
  }
return



; __________ PANEL KEYS _______________________________________________________

open_chat:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%chat_key%}
return


open_command:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%command_key%}
return


open_escape:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%escape_key%}
return


open_guild:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%guild_key%}
return


open_hero:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%hero_key%}
return


open_inventory:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%inventory_key%}
return


open_invite:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%invite_key%}
return


open_map:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%map_key%}
return


open_pvp:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%pvp_key%}
return


open_reply:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%reply_key%}
return


open_social:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%social_key%}
return


open_trade:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%trade_key%}
return


open_wvw:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    ;MouseMove pointer_x, pointer_y
    SplashImage, Off
  }
  Send, {%wvw_key%}
return



; __________ WINDOW SWAP _______________________________________________________

; NOTE For Alt+Tab and Ctrl+Alt+Del, we just exit combat mode and don't Send
; those keypresses explicitly. This is done by using the "~" key which performs
; the actions in addition to allowing the original functionality

; Alt+Tab
~!TAB::
; Ctrl+Alt+Del
~^!DEL::
if ( combat_mode )
  combat_mode := false
  SplashImage, Off
  Send, {RButton Up}
  ;MouseMove pointer_x, pointer_y
  SplashImage, Off
return

~LWin::
  combat_mode := false
  Send, {RButton Up}
  ;MouseMove pointer_x, pointer_y
  SplashImage, Off
  Send, {LWin}
return

~RWin::
if ( combat_mode )
  combat_mode := false
  Send, {RButton Up}
  ;MouseMove pointer_x, pointer_y
  SplashImage, Off
  Send, {RWin}
return


#IfWinActive



; __________ FUNCTIONS _________________________________________________________
varExist(ByRef v) { ; Requires 1.0.46+
  return &v = &n ? false : v = "" ? false : true
}
