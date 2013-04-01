#SingleInstance force

; ! - Alt
; + - Shift
; ^ - Ctrl
; # - Win

settings_file = settings.ini
IniRead, curr_profile, %settings_file%, top, CURRENT



; __________ MENU OPTIONS _________________________________________________ {{{1

Menu, Tray, Icon, GW2CM.ico
Menu, Tray, NoStandard
Menu, Tray, Add, Settings, _settings
Menu, Tray, Add, Exit, _exit
onexit _exit



; __________ READ SETTINGS ________________________________________________ {{{1

IniRead, left_click         , %settings_file%, %curr_profile%, LEFT        , %A_Space%
IniRead, alt_left_click     , %settings_file%, %curr_profile%, A_LEFT      , %A_Space%
IniRead, shift_left_click   , %settings_file%, %curr_profile%, S_LEFT      , %A_Space%
IniRead, ctrl_left_click    , %settings_file%, %curr_profile%, C_LEFT      , %A_Space%
IniRead, right_click        , %settings_file%, %curr_profile%, RIGHT       , %A_Space%
IniRead, alt_right_click    , %settings_file%, %curr_profile%, A_RIGHT     , %A_Space%
IniRead, shift_right_click  , %settings_file%, %curr_profile%, S_RIGHT     , %A_Space%
IniRead, ctrl_right_click   , %settings_file%, %curr_profile%, C_RIGHT     , %A_Space%
IniRead, middle_click       , %settings_file%, %curr_profile%, MIDDLE      , %A_Space%
IniRead, alt_middle_click   , %settings_file%, %curr_profile%, A_MIDDLE    , %A_Space%
IniRead, shift_middle_click , %settings_file%, %curr_profile%, S_MIDDLE    , %A_Space%
IniRead, ctrl_middle_click  , %settings_file%, %curr_profile%, C_MIDDLE    , %A_Space%
IniRead, scroll_up          , %settings_file%, %curr_profile%, UP          , %A_Space%
IniRead, alt_scroll_up      , %settings_file%, %curr_profile%, A_UP        , %A_Space%
IniRead, shift_scroll_up    , %settings_file%, %curr_profile%, S_UP        , %A_Space%
IniRead, ctrl_scroll_up     , %settings_file%, %curr_profile%, C_UP        , %A_Space%
IniRead, scroll_down        , %settings_file%, %curr_profile%, DOWN        , %A_Space%
IniRead, alt_scroll_down    , %settings_file%, %curr_profile%, A_DOWN      , %A_Space%
IniRead, shift_scroll_down  , %settings_file%, %curr_profile%, S_DOWN      , %A_Space%
IniRead, ctrl_scroll_down   , %settings_file%, %curr_profile%, C_DOWN      , %A_Space%
IniRead, toggle_key         , %settings_file%, %curr_profile%, TOGGLE_CM   , %A_Space%
IniRead, target_lock        , %settings_file%, %curr_profile%, TARGET_LOCK , %A_Space%
IniRead, chat_key           , %settings_file%, %curr_profile%, CHAT        , %A_Space%
IniRead, command_key        , %settings_file%, %curr_profile%, COMMAND     , %A_Space%
IniRead, guild_key          , %settings_file%, %curr_profile%, GUILD       , %A_Space%
IniRead, hero_key           , %settings_file%, %curr_profile%, HERO        , %A_Space%
IniRead, information_key    , %settings_file%, %curr_profile%, INFORMATION , %A_Space%
IniRead, inventory_key      , %settings_file%, %curr_profile%, INVENTORY   , %A_Space%
IniRead, invite_key         , %settings_file%, %curr_profile%, INVITE      , %A_Space%
IniRead, logout_key         , %settings_file%, %curr_profile%, LOGOUT      , %A_Space%
IniRead, mail_key           , %settings_file%, %curr_profile%, MAIL        , %A_Space%
IniRead, map_key            , %settings_file%, %curr_profile%, MAP         , %A_Space%
IniRead, menu_key           , %settings_file%, %curr_profile%, MENU        , %A_Space%
IniRead, options_key        , %settings_file%, %curr_profile%, OPTIONS     , %A_Space%
IniRead, pet_key            , %settings_file%, %curr_profile%, PET         , %A_Space%
IniRead, pvp_key            , %settings_file%, %curr_profile%, PVP         , %A_Space%
IniRead, reply_key          , %settings_file%, %curr_profile%, REPLY       , %A_Space%
IniRead, social_key         , %settings_file%, %curr_profile%, SOCIAL      , %A_Space%
IniRead, trade_key          , %settings_file%, %curr_profile%, TRADE       , %A_Space%
IniRead, wvw_key            , %settings_file%, %curr_profile%, WVW         , %A_Space%



; __________ CROSSHAIR OPTIONS ____________________________________________ {{{1

; xhair_yper : Location of Crosshair from top of screen, as a percentage.
;              0 = Top, 1 = Bottom of Screen
; xhair_ypos : Location of Crosshair in pixels with offset of ( size of xhair / 2 )
IniRead, xhair_yper,   %settings_file%, %curr_profile%, XHAIR_POS
IniRead, xhair_img,    %settings_file%, %curr_profile%, XHAIR_IMG
IniRead, xhair_height, %settings_file%, %curr_profile%, XHAIR_HEIGHT

xhair_ypos := ( A_ScreenHeight*xhair_yper - xhair_height/2 )



; __________ COMBAT MODE SCRIPT. DON'T MODIFY ANYTHING BELOW THIS _________ {{{1

combat_mode  := false

#MaxHotkeysPerInterval 1000

Hotkey, IfWinActive, Guild Wars 2
Hotkey, %toggle_key%, toggle_combat_mode, UseErrorLevel 2
Loop, parse, target_lock, :
  Hotkey, %A_LoopField%, target_lock_%A_index%, UseErrorLevel 2
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
Loop, parse, information_key, :
  Hotkey, %A_LoopField%, open_information%A_index%, UseErrorLevel 2
Loop, parse, inventory_key, :
  Hotkey, %A_LoopField%, open_inventory%A_index%, UseErrorLevel 2
Loop, parse, invite_key, :
  Hotkey, %A_LoopField%, open_invite%A_index%, UseErrorLevel 2
Loop, parse, logout_key, :
  Hotkey, %A_LoopField%, open_logout%A_index%, UseErrorLevel 2
Loop, parse, mail_key, :
  Hotkey, %A_LoopField%, open_mail%A_index%, UseErrorLevel 2
Loop, parse, map_key, :
  Hotkey, %A_LoopField%, open_map%A_index%, UseErrorLevel 2
Loop, parse, options_key, :
  Hotkey, %A_LoopField%, open_options%A_index%, UseErrorLevel 2
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


target_lock_1:
  StringSplit, target_lock_arr, target_lock, :, %A_Space%
  if ( combat_mode ) {
    Send, {%target_lock_arr1% Up}
    Sleep, 20
    Send, {%target_lock_arr1% Down}
    Sleep, 100
  } else {
    Send, %target_lock_arr1%
  }
return
target_lock_2:
  StringSplit, target_lock_arr, target_lock, :, %A_Space%
  ;MsgBox, %target_lock_arr2%
  if ( combat_mode ) {
    Send, {%target_lock_arr1% Up}
    Sleep, 20
    Send, {%target_lock_arr1% Down}
    Sleep, 100
  } else {
    Send, %target_lock_arr2%
  }
return



; __________ LEFT-CLICK BINDINGS __________________________________________ {{{1

$LButton::
  if ( combat_mode ){
    Send, %left_click%
  } else {
    Click Down Left
    KeyWait, LButton
    Click Up Left
  }
return

; Alt+LeftClick
$!LButton::
  if ( combat_mode ){
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
$^LButton::
  if ( combat_mode ){
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
  if ( combat_mode ){
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
  if ( combat_mode ){
    Send, %right_click%
  } else {
    Click Down Right
    KeyWait, RButton
    Click Up Right
  }
return

; Alt+RightClick
$!RButton::
  if ( combat_mode ){
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
  if ( combat_mode ){
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
  if ( combat_mode ){
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
  if ( combat_mode ){
    Send, %middle_click%
  } else {
    Click Down Middle
    KeyWait, MButton
    Click Up Middle
  }
return

; Alt+MiddleClick
$!MButton::
  if ( combat_mode ){
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
  if ( combat_mode ){
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
  if ( combat_mode ){
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

; Shift+ScrollUp
$+WheelUp::
  if ( combat_mode ){
    Send, %shift_scroll_up%
  } else {
    Send, {+WheelUp}
  }
return

; Shift+ScrollDown
$+WheelDown::
  if ( combat_mode ){
    Send, %shift_scroll_down%
  } else {
    Send, {+WheelDown}
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


open_information1:
  openPanel( information_key, 1 )
return
open_information2:
  openPanel( information_key, 2 )
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


open_logout1:
  openPanel( logout_key, 1 )
return
open_logout2:
  openPanel( logout_key, 2 )
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


open_options1:
  openPanel( options_key, 1 )
return
open_options2:
  openPanel( options_key, 2 )
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


openPanel( key_str, index ){
  StringSplit, key_arr, key_str, :, %A_Space%
  global combat_mode
  if ( combat_mode ){
    combat_mode := false
    Send, {RButton Up}
    SplashImage, Off
  }
  if ( index = 1 )
    Send, {%key_arr1%}
  else if ( index = 2 )
    Send, {%key_arr2%}
}


_settings:
Run, Settings.ahk
return


_exit:
process, Close, Settings.ahk
exitApp
