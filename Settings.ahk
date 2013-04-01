#SingleInstance force
#NoTrayIcon

Menu, Tray, Icon, GW2CM.ico

settings_file = settings.ini
IniRead, gui_profile, %settings_file%, top, CURRENT
iniReadSection( settings_file, gui_profile )

IniRead,       ini_profiles, %settings_file%
StringReplace, ini_profiles, ini_profiles, `n, |, All
StringReplace, ini_profiles, ini_profiles, top|,, All
ini_profiles .= "|"
Loop, parse, ini_profiles, |
  if ( A_LoopField = gui_profile )
    gui_profile_num = %A_Index%



; __________ POSITIONS OF WIDGETS _________________________________________ {{{1

height = 20
width  = 80

col1  = 42
col2 := col1 + width + 30
col3 := col2 + width + 30
col4 := col3 + width + 30
col5 := col4 + width + 30
col6 := col5 + width + 30

row1   = 30
row2  := row1  + height + 40
row3  := row2  + height + 50
row4  := row3  + height + 10
row5  := row4  + height + 20
row6  := row5  + height + 20
row7  := row6  + height + 20
row8  := row7  + height + 80
row9  := row8  + height + 20
row10 := row9  + height + 20
row11 := row10 + height + 20
row12 := row11 + height + 20
row13 := row12 + height + 20
row14 := row13 + height + 80
row15 := row14 + height + 20
row16 := row15 + height + 40



; __________ PROFILE SELECTION ____________________________________________ {{{1

Gui, Font, s9, Segoe UI
Gui, Add, ComboBox, x%col1% y%row1% w300 h%height% R5 vgui_profile Choose%gui_profile_num%, %ini_profiles%
Gui, Font, s10
Gui, Add, Button, x%col4% y%row1% w%width% h25, Load
Gui, Add, Button, x%col5% y%row1% w%width% h25, Save
Gui, Add, Button, x%col6% y%row1% w%width% h25, Delete



; __________ TOGGLE CM & TARGET LOCK ______________________________________ {{{1

Gui, Font, s11,
Gui, Add, Text, x%col1% y%row2% w%width% h%height% 0x200 +Right, Toggle CM
Gui, Add, Text, x%col3% y%row2% w%width% h%height% 0x200 +Right, Target Lock
Gui, Font, s9,
Gui, Add, Edit, x%col2% y%row2% w%width% h%height% vgui_toggle_key , %ini_toggle_key%
Gui, Add, Edit, x%col4% y%row2% w%width% h%height% vgui_target_lock, %ini_target_lock%



; __________ MOUSE CONTROLS _______________________________________________ {{{1

Gui, Font, s12,
Gui, Add, GroupBox, x32 y130 w660 h220 , Mouse Controls
Gui, Font, s11,
Gui, Add, Text, x%col1% y%row5% w%width% h%height% 0x200 +Right , Alt
Gui, Add, Text, x%col1% y%row6% w%width% h%height% 0x200 +Right , Shift
Gui, Add, Text, x%col1% y%row7% w%width% h%height% 0x200 +Right , Control
Gui, Add, Text, x%col2% y%row3% w%width% h%height% 0x200 +Center, Left   Click
Gui, Add, Text, x%col3% y%row3% w%width% h%height% 0x200 +Center, Right  Click
Gui, Add, Text, x+25    y%row3% w90      h%height% 0x200 +Center, Middle Click
Gui, Add, Text, x%col5% y%row3% w%width% h%height% 0x200 +Center, Scroll Up
Gui, Add, Text, x%col6% y%row3% w%width% h%height% 0x200 +Center, Scroll Down
Gui, Font, s9,
Gui, Add, Edit, x%col2% y%row4% w%width% h%height% vgui_left_click         , %ini_left_click%
Gui, Add, Edit, x%col2% y%row5% w%width% h%height% vgui_alt_left_click     , %ini_alt_left_click%
Gui, Add, Edit, x%col2% y%row6% w%width% h%height% vgui_shift_left_click   , %ini_shift_left_click%
Gui, Add, Edit, x%col2% y%row7% w%width% h%height% vgui_ctrl_left_click    , %ini_ctrl_left_click%
Gui, Add, Edit, x%col3% y%row4% w%width% h%height% vgui_right_click        , %ini_right_click%
Gui, Add, Edit, x%col3% y%row5% w%width% h%height% vgui_alt_right_click    , %ini_alt_right_click%
Gui, Add, Edit, x%col3% y%row6% w%width% h%height% vgui_shift_right_click  , %ini_shift_right_click%
Gui, Add, Edit, x%col3% y%row7% w%width% h%height% vgui_ctrl_right_click   , %ini_ctrl_right_click%
Gui, Add, Edit, x%col4% y%row4% w%width% h%height% vgui_middle_click       , %ini_middle_click%
Gui, Add, Edit, x%col4% y%row5% w%width% h%height% vgui_alt_middle_click   , %ini_alt_middle_click%
Gui, Add, Edit, x%col4% y%row6% w%width% h%height% vgui_shift_middle_click , %ini_shift_middle_click%
Gui, Add, Edit, x%col4% y%row7% w%width% h%height% vgui_ctrl_middle_click  , %ini_ctrl_middle_click%
Gui, Add, Edit, x%col5% y%row4% w%width% h%height% vgui_scroll_up          , %ini_scroll_up%
Gui, Add, Edit, x%col5% y%row5% w%width% h%height% vgui_alt_scroll_up      , %ini_alt_scroll_up%
Gui, Add, Edit, x%col5% y%row6% w%width% h%height% vgui_shift_scroll_up    , %ini_shift_scroll_up%
Gui, Add, Edit, x%col5% y%row7% w%width% h%height% vgui_ctrl_scroll_up     , %ini_ctrl_scroll_up%
Gui, Add, Edit, x%col6% y%row4% w%width% h%height% vgui_scroll_down        , %ini_scroll_down%
Gui, Add, Edit, x%col6% y%row5% w%width% h%height% vgui_alt_scroll_down    , %ini_alt_scroll_down%
Gui, Add, Edit, x%col6% y%row6% w%width% h%height% vgui_shift_scroll_down  , %ini_shift_scroll_down%
Gui, Add, Edit, x%col6% y%row7% w%width% h%height% vgui_ctrl_scroll_down   , %ini_ctrl_scroll_down%



; __________ PANEL DISABLES _______________________________________________ {{{1

Gui, Font, s12,
Gui, Add, GroupBox, x32 y370 w660 h280, Panels ( These will disable Combat Mode )
Gui, Font, s11,
Gui, Add, Text, x%col1% y%row8%  w%width% h%height% 0x200 +Right, Chat
Gui, Add, Text, x%col3% y%row8%  w%width% h%height% 0x200 +Right, Command
Gui, Add, Text, x%col5% y%row8%  w%width% h%height% 0x200 +Right, Guild
Gui, Add, Text, x%col1% y%row9%  w%width% h%height% 0x200 +Right, Hero
Gui, Add, Text, x%col3% y%row9%  w%width% h%height% 0x200 +Right, Information
Gui, Add, Text, x%col5% y%row9%  w%width% h%height% 0x200 +Right, Inventory
Gui, Add, Text, x%col1% y%row10% w%width% h%height% 0x200 +Right, Invite
Gui, Add, Text, x%col3% y%row10% w%width% h%height% 0x200 +Right, Logout
Gui, Add, Text, x%col5% y%row10% w%width% h%height% 0x200 +Right, Map
Gui, Add, Text, x%col1% y%row11% w%width% h%height% 0x200 +Right, Mail
Gui, Add, Text, x%col3% y%row11% w%width% h%height% 0x200 +Right, Menu
Gui, Add, Text, x%col5% y%row11% w%width% h%height% 0x200 +Right, Options
Gui, Add, Text, x%col1% y%row12% w%width% h%height% 0x200 +Right, Pet
Gui, Add, Text, x%col3% y%row12% w%width% h%height% 0x200 +Right, PvP
Gui, Add, Text, x%col5% y%row12% w%width% h%height% 0x200 +Right, Reply
Gui, Add, Text, x%col1% y%row13% w%width% h%height% 0x200 +Right, Social
Gui, Add, Text, x%col3% y%row13% w%width% h%height% 0x200 +Right, Trade
Gui, Add, Text, x%col5% y%row13% w%width% h%height% 0x200 +Right, WvW
Gui, Font, s9,
Gui, Add, Edit, x%col2% y%row8%  w%width% h%height% vgui_chat_key        , %ini_chat_key%
Gui, Add, Edit, x%col4% y%row8%  w%width% h%height% vgui_command_key     , %ini_command_key%
Gui, Add, Edit, x%col6% y%row8%  w%width% h%height% vgui_guild_key       , %ini_guild_key%
Gui, Add, Edit, x%col2% y%row9%  w%width% h%height% vgui_hero_key        , %ini_hero_key%
Gui, Add, Edit, x%col4% y%row9%  w%width% h%height% vgui_information_key , %ini_information_key%
Gui, Add, Edit, x%col6% y%row9%  w%width% h%height% vgui_inventory_key   , %ini_inventory_key%
Gui, Add, Edit, x%col2% y%row10% w%width% h%height% vgui_invite_key      , %ini_invite_key%
Gui, Add, Edit, x%col4% y%row10% w%width% h%height% vgui_logout_key      , %ini_logout_key%
Gui, Add, Edit, x%col6% y%row10% w%width% h%height% vgui_map_key         , %ini_map_key%
Gui, Add, Edit, x%col2% y%row11% w%width% h%height% vgui_mail_key        , %ini_mail_key%
Gui, Add, Edit, x%col4% y%row11% w%width% h%height% vgui_menu_key        , %ini_menu_key%
Gui, Add, Edit, x%col6% y%row11% w%width% h%height% vgui_options_key     , %ini_options_key%
Gui, Add, Edit, x%col2% y%row12% w%width% h%height% vgui_pet_key         , %ini_pet_key%
Gui, Add, Edit, x%col4% y%row12% w%width% h%height% vgui_pvp_key         , %ini_pvp_key%
Gui, Add, Edit, x%col6% y%row12% w%width% h%height% vgui_reply_key       , %ini_reply_key%
Gui, Add, Edit, x%col2% y%row13% w%width% h%height% vgui_social_key      , %ini_social_key%
Gui, Add, Edit, x%col4% y%row13% w%width% h%height% vgui_trade_key       , %ini_trade_key%
Gui, Add, Edit, x%col6% y%row13% w%width% h%height% vgui_wvw_key         , %ini_wvw_key%



; __________ CROSSHAIR OPTIONS ____________________________________________ {{{1

Gui, Font, s12,
Gui, Add, GroupBox, x32 y670 w660 h120 , Crosshair Options
Gui, Font, s11,
Gui, Add, Text,   x%col1% y%row14% w%width% h%height% 0x200 +Right, Position
Gui, Add, Text,   x%col3% y%row14% w%width% h%height% 0x200 +Right, Height
Gui, Font, s10
Gui, Add, Button, x%col6% y+17     w%width% h25 , Select
Gui, Font, s11,
Gui, Add, Text,   x%col1% y%row15% w%width% h%height% 0x200 +Right, Image
Gui, Font, s9,
Gui, Add, Edit,   x%col2% y%row14% w%width% h%height% vgui_xhair_yper   , %ini_xhair_yper%
Gui, Add, Edit,   x%col4% y%row14% w%width% h%height% vgui_xhair_height , %ini_xhair_height%
Gui, Add, Edit,   x%col2% y%row15% w410     h%height% vgui_xhair_img    , %ini_xhair_img%
; }}}1



Gui, Font, s11,
Gui, Add, Text,   x%col1% y%row16% w220 h%height%, For a full list of bindable keys
Gui, Font, s10
Gui, Add, Button, x262 y%row16%         w%width% h25 , Click Here



; Generated using SmartGUI Creator 4.0
Gui, Show, h860 w722, Guild Wars 2`, Combat Mod Settings
Return



; __________ SUBROUTINES __________________________________________________ {{{1

ButtonLoad:   ; {{{2
  Gui, Submit, nohide                                     ; Put the text in ComboBox into gui_profile variable
  iniReadSection( settings_file, gui_profile )            ; Read all settings from settings_file
  guiUpdate()                                             ; Put values read from the ini file into the text fields
  IniWrite, %gui_profile%, %settings_file%, top, CURRENT  ; Update value of current profile in settings_file
return

ButtonSave:   ; {{{2
  Gui, Submit, nohide                                     ; Put the text in ComboBox into gui_profile variable
  if ( gui_profile = "Defaults" ){
    MsgBox,, GW2 Combat Mod, Can't overwrite the Default profile. Save with a different name
    return
  }
  iniWriteSection( settings_file, gui_profile )           ; Write all settings to the settings_file
  IniWrite, %gui_profile%, %settings_file%, top, CURRENT  ; Update value of current profile in settings_file
  Loop, parse, ini_profiles, |
    if ( A_LoopField = gui_profile )
      return
  ini_profiles .= gui_profile . "|"                       ; Add new entry to the drop-down list
  guicontrol, , gui_profile, %gui_profile%
return

ButtonDelete:   ; {{{2
  Gui, Submit, nohide                                     ; Put the text in ComboBox into gui_profile variable
  if ( gui_profile = "Defaults" ){
    MsgBox,, GW2 Combat Mod, Can't delete the Default profile
    return
  }
  IniDelete, %settings_file%, %gui_profile%               ; Remove section from settings_file
  StringReplace, ini_profiles, ini_profiles, %gui_profile%|,, All   ; Remove entry from drop-down list
  GuiControl,, gui_profile, |%ini_profiles%
  ; Change value of current profile to first profile in settings_file
  StringSplit, ini_profiles_arr, ini_profiles, |, %A_Space%
  IniWrite, %ini_profiles_arr1%, %settings_file%, top, CURRENT
return


ButtonSelect:   ; {{{2
  FileSelectFile, ini_xhair_img,,, Select an image to be used as Crosshair, *.bmp
  guicontrol, text, gui_xhair_img, %ini_xhair_img%
return


ButtonClickHere:
  Run, http://www.autohotkey.com/docs/KeyList.htm
  Run, http://www.autohotkey.com/docs/Hotkeys.htm
return


iniReadSection( inifile, section ){  ; {{{2
  ; Treat all variables, except parameters, as global unless explicitly specified as local
  global
  IniRead, ini_left_click        , %inifile%, %section%, LEFT         , %A_Space%
  IniRead, ini_alt_left_click    , %inifile%, %section%, A_LEFT       , %A_Space%
  IniRead, ini_shift_left_click  , %inifile%, %section%, S_LEFT       , %A_Space%
  IniRead, ini_ctrl_left_click   , %inifile%, %section%, C_LEFT       , %A_Space%
  IniRead, ini_right_click       , %inifile%, %section%, RIGHT        , %A_Space%
  IniRead, ini_alt_right_click   , %inifile%, %section%, A_RIGHT      , %A_Space%
  IniRead, ini_shift_right_click , %inifile%, %section%, S_RIGHT      , %A_Space%
  IniRead, ini_ctrl_right_click  , %inifile%, %section%, C_RIGHT      , %A_Space%
  IniRead, ini_middle_click      , %inifile%, %section%, MIDDLE       , %A_Space%
  IniRead, ini_alt_middle_click  , %inifile%, %section%, A_MIDDLE     , %A_Space%
  IniRead, ini_shift_middle_click, %inifile%, %section%, S_MIDDLE     , %A_Space%
  IniRead, ini_ctrl_middle_click , %inifile%, %section%, C_MIDDLE     , %A_Space%
  IniRead, ini_scroll_up         , %inifile%, %section%, UP           , %A_Space%
  IniRead, ini_alt_scroll_up     , %inifile%, %section%, A_UP         , %A_Space%
  IniRead, ini_shift_scroll_up   , %inifile%, %section%, S_UP         , %A_Space%
  IniRead, ini_ctrl_scroll_up    , %inifile%, %section%, C_UP         , %A_Space%
  IniRead, ini_scroll_down       , %inifile%, %section%, DOWN         , %A_Space%
  IniRead, ini_alt_scroll_down   , %inifile%, %section%, A_DOWN       , %A_Space%
  IniRead, ini_shift_scroll_down , %inifile%, %section%, S_DOWN       , %A_Space%
  IniRead, ini_ctrl_scroll_down  , %inifile%, %section%, C_DOWN       , %A_Space%
  IniRead, ini_toggle_key        , %inifile%, %section%, TOGGLE_CM    , %A_Space%
  IniRead, ini_target_lock       , %inifile%, %section%, TARGET_LOCK  , %A_Space%
  IniRead, ini_chat_key          , %inifile%, %section%, CHAT         , %A_Space%
  IniRead, ini_command_key       , %inifile%, %section%, COMMAND      , %A_Space%
  IniRead, ini_guild_key         , %inifile%, %section%, GUILD        , %A_Space%
  IniRead, ini_hero_key          , %inifile%, %section%, HERO         , %A_Space%
  IniRead, ini_information_key   , %inifile%, %section%, INFORMATION  , %A_Space%
  IniRead, ini_inventory_key     , %inifile%, %section%, INVENTORY    , %A_Space%
  IniRead, ini_invite_key        , %inifile%, %section%, INVITE       , %A_Space%
  IniRead, ini_logout_key        , %inifile%, %section%, LOGOUT       , %A_Space%
  IniRead, ini_mail_key          , %inifile%, %section%, MAIL         , %A_Space%
  IniRead, ini_map_key           , %inifile%, %section%, MAP          , %A_Space%
  IniRead, ini_menu_key          , %inifile%, %section%, MENU         , %A_Space%
  IniRead, ini_options_key       , %inifile%, %section%, OPTIONS      , %A_Space%
  IniRead, ini_pet_key           , %inifile%, %section%, PET          , %A_Space%
  IniRead, ini_pvp_key           , %inifile%, %section%, PVP          , %A_Space%
  IniRead, ini_reply_key         , %inifile%, %section%, REPLY        , %A_Space%
  IniRead, ini_social_key        , %inifile%, %section%, SOCIAL       , %A_Space%
  IniRead, ini_trade_key         , %inifile%, %section%, TRADE        , %A_Space%
  IniRead, ini_wvw_key           , %inifile%, %section%, WVW          , %A_Space%
  IniRead, ini_xhair_yper        , %inifile%, %section%, XHAIR_POS    , %A_Space%
  IniRead, ini_xhair_img         , %inifile%, %section%, XHAIR_IMG    , %A_Space%
  IniRead, ini_xhair_height      , %inifile%, %section%, XHAIR_HEIGHT , %A_Space%
}


iniWriteSection( inifile, section ){   ; {{{2
  ; Treat all variables, except parameters, as global unless explicitly specified as local
  global
  IniWrite, %gui_left_click%         , %inifile%, %section%, LEFT
  IniWrite, %gui_alt_left_click%     , %inifile%, %section%, A_LEFT
  IniWrite, %gui_shift_left_click%   , %inifile%, %section%, S_LEFT
  IniWrite, %gui_ctrl_left_click%    , %inifile%, %section%, C_LEFT
  IniWrite, %gui_right_click%        , %inifile%, %section%, RIGHT
  IniWrite, %gui_alt_right_click%    , %inifile%, %section%, A_RIGHT
  IniWrite, %gui_shift_right_click%  , %inifile%, %section%, S_RIGHT
  IniWrite, %gui_ctrl_right_click%   , %inifile%, %section%, C_RIGHT
  IniWrite, %gui_middle_click%       , %inifile%, %section%, MIDDLE
  IniWrite, %gui_alt_middle_click%   , %inifile%, %section%, A_MIDDLE
  IniWrite, %gui_shift_middle_click% , %inifile%, %section%, S_MIDDLE
  IniWrite, %gui_ctrl_middle_click%  , %inifile%, %section%, C_MIDDLE
  IniWrite, %gui_scroll_up%          , %inifile%, %section%, UP
  IniWrite, %gui_alt_scroll_up%      , %inifile%, %section%, A_UP
  IniWrite, %gui_shift_scroll_up%    , %inifile%, %section%, S_UP
  IniWrite, %gui_ctrl_scroll_up%     , %inifile%, %section%, C_UP
  IniWrite, %gui_scroll_down%        , %inifile%, %section%, DOWN
  IniWrite, %gui_alt_scroll_down%    , %inifile%, %section%, A_DOWN
  IniWrite, %gui_shift_scroll_down%  , %inifile%, %section%, S_DOWN
  IniWrite, %gui_ctrl_scroll_down%   , %inifile%, %section%, C_DOWN
  IniWrite, %gui_toggle_key%         , %inifile%, %section%, TOGGLE_CM
  IniWrite, %gui_target_lock%        , %inifile%, %section%, TARGET_LOCK
  IniWrite, %gui_chat_key%           , %inifile%, %section%, CHAT
  IniWrite, %gui_command_key%        , %inifile%, %section%, COMMAND
  IniWrite, %gui_guild_key%          , %inifile%, %section%, GUILD
  IniWrite, %gui_hero_key%           , %inifile%, %section%, HERO
  IniWrite, %gui_information_key%    , %inifile%, %section%, INFORMATION
  IniWrite, %gui_inventory_key%      , %inifile%, %section%, INVENTORY
  IniWrite, %gui_invite_key%         , %inifile%, %section%, INVITE
  IniWrite, %gui_logout_key%         , %inifile%, %section%, LOGOUT
  IniWrite, %gui_mail_key%           , %inifile%, %section%, MAIL
  IniWrite, %gui_map_key%            , %inifile%, %section%, MAP
  IniWrite, %gui_menu_key%           , %inifile%, %section%, MENU
  IniWrite, %gui_options_key%        , %inifile%, %section%, OPTIONS
  IniWrite, %gui_pet_key%            , %inifile%, %section%, PET
  IniWrite, %gui_pvp_key%            , %inifile%, %section%, PVP
  IniWrite, %gui_reply_key%          , %inifile%, %section%, REPLY
  IniWrite, %gui_social_key%         , %inifile%, %section%, SOCIAL
  IniWrite, %gui_trade_key%          , %inifile%, %section%, TRADE
  IniWrite, %gui_wvw_key%            , %inifile%, %section%, WVW
  IniWrite, %gui_xhair_yper%         , %inifile%, %section%, XHAIR_POS
  IniWrite, %gui_xhair_img%          , %inifile%, %section%, XHAIR_IMG
  IniWrite, %gui_xhair_height%       , %inifile%, %section%, XHAIR_HEIGHT
}


guiUpdate(){  ; {{{2
  ; Treat all variables, except parameters, as global unless explicitly specified as local
  global
  guicontrol, text, gui_left_click         , %ini_left_click%
  guicontrol, text, gui_alt_left_click     , %ini_alt_left_click%
  guicontrol, text, gui_shift_left_click   , %ini_shift_left_click%
  guicontrol, text, gui_ctrl_left_click    , %ini_ctrl_left_click%
  guicontrol, text, gui_right_click        , %ini_right_click%
  guicontrol, text, gui_alt_right_click    , %ini_alt_right_click%
  guicontrol, text, gui_shift_right_click  , %ini_shift_right_click%
  guicontrol, text, gui_ctrl_right_click   , %ini_ctrl_right_click%
  guicontrol, text, gui_middle_click       , %ini_middle_click%
  guicontrol, text, gui_alt_middle_click   , %ini_alt_middle_click%
  guicontrol, text, gui_shift_middle_click , %ini_shift_middle_click%
  guicontrol, text, gui_ctrl_middle_click  , %ini_ctrl_middle_click%
  guicontrol, text, gui_scroll_up          , %ini_scroll_up%
  guicontrol, text, gui_alt_scroll_up      , %ini_alt_scroll_up%
  guicontrol, text, gui_shift_scroll_up    , %ini_shift_scroll_up%
  guicontrol, text, gui_ctrl_scroll_up     , %ini_ctrl_scroll_up%
  guicontrol, text, gui_scroll_down        , %ini_scroll_down%
  guicontrol, text, gui_alt_scroll_down    , %ini_alt_scroll_down%
  guicontrol, text, gui_shift_scroll_down  , %ini_shift_scroll_down%
  guicontrol, text, gui_ctrl_scroll_down   , %ini_ctrl_scroll_down%
  guicontrol, text, gui_toggle_key         , %ini_toggle_key%
  guicontrol, text, gui_target_lock        , %ini_target_lock%
  guicontrol, text, gui_chat_key           , %ini_chat_key%
  guicontrol, text, gui_command_key        , %ini_command_key%
  guicontrol, text, gui_guild_key          , %ini_guild_key%
  guicontrol, text, gui_hero_key           , %ini_hero_key%
  guicontrol, text, gui_information_key    , %ini_information_key%
  guicontrol, text, gui_inventory_key      , %ini_inventory_key%
  guicontrol, text, gui_invite_key         , %ini_invite_key%
  guicontrol, text, gui_logout_key         , %ini_logout_key%
  guicontrol, text, gui_mail_key           , %ini_mail_key%
  guicontrol, text, gui_map_key            , %ini_map_key%
  guicontrol, text, gui_menu_key           , %ini_menu_key%
  guicontrol, text, gui_options_key        , %ini_options_key%
  guicontrol, text, gui_pet_key            , %ini_pet_key%
  guicontrol, text, gui_pvp_key            , %ini_pvp_key%
  guicontrol, text, gui_reply_key          , %ini_reply_key%
  guicontrol, text, gui_social_key         , %ini_social_key%
  guicontrol, text, gui_trade_key          , %ini_trade_key%
  guicontrol, text, gui_wvw_key            , %ini_wvw_key%
  guicontrol, text, gui_xhair_yper         , %ini_xhair_yper%
  guicontrol, text, gui_xhair_img          , %ini_xhair_img%
  guicontrol, text, gui_xhair_height       , %ini_xhair_height%
}
; }}}1


GuiClose:
ExitApp
