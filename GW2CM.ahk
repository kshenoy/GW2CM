#SingleInstance force

; ! - Alt
; + - Shift
; ^ - Ctrl
; # - Win

; __________ CROSSHAIR OPTIONS ____________________________________________ {{{1

; xhair_yper : Location of Crosshair from top of screen, as a percentage.
;              0 = Top, 1 = Bottom of Screen
; xhair_ypos : Location of Crosshair in pixels with offset of ( size of xhair / 2 )
IniRead, xhair_yper, settings.ini, current, XHAIR_POS
IniRead, xhair_img,  settings.ini, current, XHAIR_IMG

xhair_ypos := ( A_ScreenHeight*xhair_yper - 12 )



; __________ READ SETTINGS ________________________________________________ {{{1

IniRead, left_click,         settings.ini, current, LEFT
IniRead, alt_left_click,     settings.ini, current, A_LEFT
IniRead, shift_left_click,   settings.ini, current, S_LEFT
IniRead, ctrl_left_click,    settings.ini, current, C_LEFT
IniRead, right_click,        settings.ini, current, RIGHT
IniRead, alt_right_click,    settings.ini, current, A_RIGHT
IniRead, shift_right_click,  settings.ini, current, S_RIGHT
IniRead, ctrl_right_click,   settings.ini, current, C_RIGHT
IniRead, middle_click,       settings.ini, current, MIDDLE
IniRead, alt_middle_click,   settings.ini, current, A_MIDDLE
IniRead, shift_middle_click, settings.ini, current, S_MIDDLE
IniRead, ctrl_middle_click,  settings.ini, current, C_MIDDLE
IniRead, scroll_up,          settings.ini, current, UP
IniRead, alt_scroll_up,      settings.ini, current, A_UP
IniRead, shift_scroll_up,    settings.ini, current, S_UP
IniRead, ctrl_scroll_up,     settings.ini, current, C_UP
IniRead, scroll_down,        settings.ini, current, DOWN
IniRead, alt_scroll_down,    settings.ini, current, A_DOWN
IniRead, shift_scroll_down,  settings.ini, current, S_DOWN
IniRead, ctrl_scroll_down,   settings.ini, current, C_DOWN
IniRead, toggle_key,         settings.ini, current, TOGGLE_CM
IniRead, target_lock,        settings.ini, current, TARGET_LOCK
IniRead, chat_key,           settings.ini, current, CHAT
IniRead, command_key,        settings.ini, current, COMMAND
IniRead, guild_key,          settings.ini, current, GUILD
IniRead, hero_key,           settings.ini, current, HERO
IniRead, inventory_key,      settings.ini, current, INVENTORY
IniRead, invite_key,         settings.ini, current, INVITE
IniRead, mail_key,           settings.ini, current, MAIL
IniRead, map_key,            settings.ini, current, MAP
IniRead, menu_key,           settings.ini, current, MENU
IniRead, pet_key,            settings.ini, current, PET
IniRead, pvp_key,            settings.ini, current, PVP
IniRead, reply_key,          settings.ini, current, REPLY
IniRead, social_key,         settings.ini, current, SOCIAL
IniRead, trade_key,          settings.ini, current, TRADE
IniRead, wvw_key,            settings.ini, current, WVW



; __________ COMBAT MODE SCRIPT. DON'T MODIFY ANYTHING BELOW THIS _________ {{{1

combat_mode  := false

#MaxHotkeysPerInterval 1000

Hotkey, IfWinActive, Guild Wars 2
Hotkey, %toggle_key%, toggle_combat_mode, UseErrorLevel 2
Loop, parse, target_lock, :
  Hotkey, %A_LoopField%, target_lock, UseErrorLevel 2
Loop, parse, chat_key, :
  Hotkey, %A_LoopField%, open_chat%A_index%, UseErrorLevel 2
Loop, parse, command_key, :
  Hotkey, %A_LoopField%, open_command%A_index%, UseErrorLevel 2
Loop, parse, menu_key, :
  Hotkey, %A_LoopField%, open_menu%A_index%, UseErrorLevel 2
Loop, parse, guild_key, :
  Hotkey, %A_LoopField%, open_guild%A_index%, UseErrorLevel 2
Loop, parse, hero_key, :
  Hotkey, %A_LoopField%, open_hero%A_index%, UseErrorLevel 2
Loop, parse, inventory_key, :
  Hotkey, %A_LoopField%, open_inventory%A_index%, UseErrorLevel 2
Loop, parse, invite_key, :
  Hotkey, %A_LoopField%, open_invite%A_index%, UseErrorLevel 2
Loop, parse, mail_key, :
  Hotkey, %A_LoopField%, open_mail%A_index%, UseErrorLevel 2
Loop, parse, map_key, :
  Hotkey, %A_LoopField%, open_map%A_index%, UseErrorLevel 2
Loop, parse, pet_key, :
  Hotkey, %A_LoopField%, open_pet%A_index%, UseErrorLevel 2
Loop, parse, pvp_key, :
  Hotkey, %A_LoopField%, open_pvp%A_index%, UseErrorLevel 2
Loop, parse, reply_key, :
  Hotkey, %A_LoopField%, open_reply%A_index%, UseErrorLevel 2
Loop, parse, social_key, :
  Hotkey, %A_LoopField%, open_social%A_index%, UseErrorLevel 2
Loop, parse, trade_key, :
  Hotkey, %A_LoopField%, open_trade%A_index%, UseErrorLevel 2
Loop, parse, wvw_key, :
  Hotkey, %A_LoopField%, open_wvw%A_index%, UseErrorLevel 2
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
  StringSplit, key, keys, :, %A_Space%
  if ( varExist( target_lock ) && combat_mode ) {
    Send, {%target_lock% Up}
    Sleep, 20
    Send, {%target_lock% Down}
    Sleep, 100
  } else {
    Send, %target_lock%
  }
return



; __________ LEFT-CLICK BINDINGS __________________________________________ {{{1

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



; __________ RIGHT-CLICK BINDINGS _________________________________________ {{{1

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



; __________ MIDDLE-CLICK BINDINGS ________________________________________ {{{1

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



; __________ MOUSEWHEEL BINDINGS __________________________________________ {{{1

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



; __________ PANEL KEYS ___________________________________________________ {{{1

open_chat1:
  openPanel( chat_key, 1 )
return
open_chat2:
  openPanel( chat_key, 2 )
return


open_command1:
  openPanel( command_key, 1 )
return
open_command2:
  openPanel( command_key, 2 )
return


open_menu1:
  openPanel( menu_key, 1 )
return
open_menu2:
  openPanel( menu_key, 2 )
return


open_guild1:
  openPanel( guild_key, 1 )
return
open_guild2:
  openPanel( guild_key, 2 )
return


open_hero1:
  openPanel( hero_key, 1 )
return
open_hero2:
  openPanel( hero_key, 2 )
return


open_inventory1:
  openPanel( inventory_key, 1 )
return
open_inventory2:
  openPanel( inventory_key, 2 )
return


open_invite1:
  openPanel( invite_key, 1 )
return
open_invite2:
  openPanel( invite_key, 2 )
return


open_mail1:
  openPanel( mail_key, 1 )
return
open_mail2:
  openPanel( mail_key, 2 )
return


open_map1:
  openPanel( map_key, 1 )
return
open_map2:
  openPanel( map_key, 2 )
return


open_pet1:
  openPanel( pet_key, 1 )
return
open_pet2:
  openPanel( pet_key, 2 )
return


open_pvp1:
  openPanel( pvp_key, 1 )
return
open_pvp2:
  openPanel( pvp_key, 2 )
return


open_reply1:
  openPanel( reply_key, 1 )
return
open_reply2:
  openPanel( reply_key, 2 )
return


open_social1:
  openPanel( social_key, 1 )
return
open_social2:
  openPanel( social_key, 2 )
return


open_trade1:
  openPanel( trade_key, 1 )
return
open_trade2:
  openPanel( trade_key, 2 )
return


open_wvw1:
  openPanel( wvw_key, 1 )
return
open_wvw2:
  openPanel( wvw_key, 2 )
return



; __________ WINDOW SWAP __________________________________________________ {{{1

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



; __________ FUNCTIONS ____________________________________________________ {{{1
varExist(ByRef v) { ; Requires 1.0.46+
  return &v = &n ? false : v = "" ? false : true
}

openPanel( keys, index ){
  StringSplit, key, keys, :, %A_Space%
  global combat_mode
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  if ( index = 1 )
    Send, {%key1%}
  else if ( index = 2 )
    Send, {%key2%}
}
