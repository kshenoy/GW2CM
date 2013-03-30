#SingleInstance force

; ! - Alt
; + - Shift
; ^ - Ctrl
; # - Win

; __________ BINDINGS FOR COMBAT MODE __________________________________________

IniRead, left_click,        settings.ini, defaults, LEFT,        1
IniRead, right_click,       settings.ini, defaults, RIGHT,       v
IniRead, toggle_key_def,    settings.ini, defaults, TOGGLE_CM,   Tab
IniRead, target_lock_def,   settings.ini, defaults, TARGET_LOCK, x
IniRead, chat_key_def,      settings.ini, defaults, CHAT,        Enter
IniRead, escape_key_def,    settings.ini, defaults, ESCAPE,      Escape
IniRead, map_key_def,       settings.ini, defaults, MAP,         m
IniRead, guild_key_def,     settings.ini, defaults, GUILD,       g
IniRead, hero_key_def,      settings.ini, defaults, HERO,        h
IniRead, inventory_key_def, settings.ini, defaults, INVENTORY,   i
IniRead, invite_key_def,    settings.ini, defaults, INVITE,      p
IniRead, pvp_key_def,       settings.ini, defaults, PVP,
IniRead, reply_key_def,     settings.ini, defaults, REPLY,       BackSpace
IniRead, social_key_def,    settings.ini, defaults, SOCIAL,      y
IniRead, trade_key_def,     settings.ini, defaults, TRADE,       o
IniRead, wvw_key_def,       settings.ini, defaults, WVW,         Numpad6
IniRead, command_key_def,   settings.ini, defaults, COMMAND,     /

IniRead, left_click,         settings.ini, all, LEFT,     left_click_def
IniRead, alt_left_click,     settings.ini, all, A_LEFT,   alt_left_click_def
IniRead, shift_left_click,   settings.ini, all, S_LEFT,   shift_left_click_def
IniRead, ctrl_left_click,    settings.ini, all, C_LEFT,   ctrl_left_click_def
IniRead, right_click,        settings.ini, all, RIGHT,    right_click_def
IniRead, alt_right_click,    settings.ini, all, A_RIGHT,  alt_right_click_def
IniRead, shift_right_click,  settings.ini, all, S_RIGHT,  shift_right_click_def
IniRead, ctrl_right_click,   settings.ini, all, C_RIGHT,  ctrl_right_click_def
IniRead, middle_click,       settings.ini, all, MIDDLE,   middle_click_def
IniRead, alt_middle_click,   settings.ini, all, A_MIDDLE, alt_middle_click_def
IniRead, shift_middle_click, settings.ini, all, S_MIDDLE, shift_middle_click_def
IniRead, ctrl_middle_click,  settings.ini, all, C_MIDDLE, ctrl_middle_click_def
IniRead, scroll_up,          settings.ini, all, UP,       scroll_up_def
IniRead, alt_scroll_up,      settings.ini, all, A_UP,     alt_scroll_up_def
IniRead, shift_scroll_up,    settings.ini, all, S_UP,     shift_scroll_up_def
IniRead, ctrl_scroll_up,     settings.ini, all, C_UP,     ctrl_scroll_up_def
IniRead, scroll_down,        settings.ini, all, DOWN,     scroll_down_def
IniRead, alt_scroll_down,    settings.ini, all, A_DOWN,   alt_scroll_down_def
IniRead, shift_scroll_down,  settings.ini, all, S_DOWN,   shift_scroll_down_def
IniRead, ctrl_scroll_down,   settings.ini, all, C_DOWN,   ctrl_scroll_down_def

IniRead, toggle_key,    settings.ini, all, TOGGLE_CM,   toggle_key_def
IniRead, target_lock,   settings.ini, all, TARGET_LOCK, target_lock_def
IniRead, chat_key,      settings.ini, all, CHAT,        chat_key_def
IniRead, escape_key,    settings.ini, all, ESCAPE,      escape_key_def
IniRead, map_key,       settings.ini, all, MAP,         map_key_def
IniRead, guild_key,     settings.ini, all, GUILD,       guild_key_def
IniRead, hero_key,      settings.ini, all, HERO,        hero_key_def
IniRead, inventory_key, settings.ini, all, INVENTORY,   inventory_key_def
IniRead, invite_key,    settings.ini, all, INVITE,      invite_key_def
IniRead, pvp_key,       settings.ini, all, PVP,         pvp_key_def
IniRead, reply_key,     settings.ini, all, REPLY,       reply_key_def
IniRead, social_key,    settings.ini, all, SOCIAL,      social_key_def
IniRead, trade_key,     settings.ini, all, TRADE,       trade_key_def
IniRead, wvw_key,       settings.ini, all, WVW,         wvw_key_def
IniRead, command_key,   settings.ini, all, COMMAND,     command_key_def



; __________ CROSSHAIR OPTIONS _________________________________________________

; xhair_yper : Location of Crosshair from top of screen, as a percentage.
;              0 = Top, 1 = Bottom of Screen
; xhair_ypos : Location of Crosshair in pixels with offset of ( size of xhair / 2 )
IniRead, xhair_yper_def, settings.ini, defaults, XHAIR_POS, 0.4
IniRead, xhair_img_def,  settings.ini, defaults, XHAIR_IMG, Ring.bmp
IniRead, xhair_yper,     settings.ini, all,      XHAIR_POS, xhair_yper_def
IniRead, xhair_img,      settings.ini, all,      XHAIR_IMG, xhair_img_def

xhair_ypos := ( A_ScreenHeight*xhair_yper - 12 )



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
    DllCall("SetCursorPos", int, ( A_ScreenWidth/2-4 ) , int, ( A_ScreenHeight * xhair_yper ))
    Send {RButton Down}
    ; WHY: Move cursor 4 pixels to the right relative to current location
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


$^LButton::
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
;  if ( varExist( ctrl_left_click ) && combat_mode ){
;    Send, %ctrl_left_click%
;  } else {
;    Send, {Control Down}
;    Click Down Left
;    KeyWait, LButton
;    Click Up Left
;    Send, {Control Up}
;  }
;return

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
    SplashImage, Off
  }
  Send, {%chat_key%}
return


open_command:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%command_key%}
return


open_escape:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  } else {
    Send, {%escape_key%}
  }
return


open_guild:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%guild_key%}
return


open_hero:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%hero_key%}
return


open_inventory:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%inventory_key%}
return


open_invite:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%invite_key%}
return


open_map:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%map_key%}
return


open_pvp:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%pvp_key%}
return


open_reply:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%reply_key%}
return


open_social:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%social_key%}
return


open_trade:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%trade_key%}
return


open_wvw:
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  Send, {%wvw_key%}
return



; __________ WINDOW SWAP _______________________________________________________

; NOTE For Alt+Tab and Ctrl+Alt+Del, we just exit combat mode and don't Send
; those keypresses explicitly. This is done by using the "~" key which performs
; the actions in addition to allowing the original functionality

; Alt+Tab
*!TAB::
  combat_mode := false
  SplashImage, Off
  Send, {RButton Up}
  Send, {LAlt Down}{Tab}
  sleep 10
  Send, {LAlt Up}
return

; Ctrl+Alt+Del
~^!DEL::
  combat_mode := false
  SplashImage, Off
  Send, {RButton Up}
return

~LWin::
  combat_mode := false
  SplashImage, Off
  Send, {RButton Up}
  Send, {LWin}
return

~RWin::
  combat_mode := false
  SplashImage, Off
  Send, {RButton Up}
  Send, {RWin}
return


#IfWinActive



; __________ FUNCTIONS _________________________________________________________
varExist(ByRef v) { ; Requires 1.0.46+
  return &v = &n ? false : v = "" ? false : true
}
