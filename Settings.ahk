#SingleInstance force
#NoTrayIcon

IniRead, ini_left_click        , settings.ini, current, LEFT
IniRead, ini_alt_left_click    , settings.ini, current, A_LEFT
IniRead, ini_shift_left_click  , settings.ini, current, S_LEFT
IniRead, ini_ctrl_left_click   , settings.ini, current, C_LEFT
IniRead, ini_right_click       , settings.ini, current, RIGHT
IniRead, ini_alt_right_click   , settings.ini, current, A_RIGHT
IniRead, ini_shift_right_click , settings.ini, current, S_RIGHT
IniRead, ini_ctrl_right_click  , settings.ini, current, C_RIGHT
IniRead, ini_middle_click      , settings.ini, current, MIDDLE
IniRead, ini_alt_middle_click  , settings.ini, current, A_MIDDLE
IniRead, ini_shift_middle_click, settings.ini, current, S_MIDDLE
IniRead, ini_ctrl_middle_click , settings.ini, current, C_MIDDLE
IniRead, ini_scroll_up         , settings.ini, current, UP
IniRead, ini_alt_scroll_up     , settings.ini, current, A_UP
IniRead, ini_shift_scroll_up   , settings.ini, current, S_UP
IniRead, ini_ctrl_scroll_up    , settings.ini, current, C_UP
IniRead, ini_scroll_down       , settings.ini, current, DOWN
IniRead, ini_alt_scroll_down   , settings.ini, current, A_DOWN
IniRead, ini_shift_scroll_down , settings.ini, current, S_DOWN
IniRead, ini_ctrl_scroll_down  , settings.ini, current, C_DOWN
IniRead, ini_toggle_key        , settings.ini, current, TOGGLE_CM
IniRead, ini_target_lock       , settings.ini, current, TARGET_LOCK
IniRead, ini_chat_key          , settings.ini, current, CHAT
IniRead, ini_command_key       , settings.ini, current, COMMAND
IniRead, ini_guild_key         , settings.ini, current, GUILD
IniRead, ini_hero_key          , settings.ini, current, HERO
IniRead, ini_inventory_key     , settings.ini, current, INVENTORY
IniRead, ini_invite_key        , settings.ini, current, INVITE
IniRead, ini_mail_key          , settings.ini, current, MAIL
IniRead, ini_map_key           , settings.ini, current, MAP
IniRead, ini_menu_key          , settings.ini, current, MENU
IniRead, ini_pet_key           , settings.ini, current, PET
IniRead, ini_pvp_key           , settings.ini, current, PVP
IniRead, ini_reply_key         , settings.ini, current, REPLY
IniRead, ini_social_key        , settings.ini, current, SOCIAL
IniRead, ini_trade_key         , settings.ini, current, TRADE
IniRead, ini_wvw_key           , settings.ini, current, WVW
IniRead, ini_xhair_yper        , settings.ini, current, XHAIR_POS
IniRead, ini_xhair_img         , settings.ini, current, XHAIR_IMG

#include Settings_GUI.ahk

ButtonSave:
  Gui, Submit, nohide
  IniWrite, %gui_left_click%        , settings.ini, current, LEFT
  IniWrite, %gui_alt_left_click%    , settings.ini, current, A_LEFT
  IniWrite, %gui_shift_left_click%  , settings.ini, current, S_LEFT
  IniWrite, %gui_ctrl_left_click%   , settings.ini, current, C_LEFT
  IniWrite, %gui_right_click%       , settings.ini, current, RIGHT
  IniWrite, %gui_alt_right_click%   , settings.ini, current, A_RIGHT
  IniWrite, %gui_shift_right_click% , settings.ini, current, S_RIGHT
  IniWrite, %gui_ctrl_right_click%  , settings.ini, current, C_RIGHT
  IniWrite, %gui_middle_click%      , settings.ini, current, MIDDLE
  IniWrite, %gui_alt_middle_click%  , settings.ini, current, A_MIDDLE
  IniWrite, %gui_shift_middle_click%, settings.ini, current, S_MIDDLE
  IniWrite, %gui_ctrl_middle_click% , settings.ini, current, C_MIDDLE
  IniWrite, %gui_scroll_up%         , settings.ini, current, UP
  IniWrite, %gui_alt_scroll_up%     , settings.ini, current, A_UP
  IniWrite, %gui_shift_scroll_up%   , settings.ini, current, S_UP
  IniWrite, %gui_ctrl_scroll_up%    , settings.ini, current, C_UP
  IniWrite, %gui_scroll_down%       , settings.ini, current, DOWN
  IniWrite, %gui_alt_scroll_down%   , settings.ini, current, A_DOWN
  IniWrite, %gui_shift_scroll_down% , settings.ini, current, S_DOWN
  IniWrite, %gui_ctrl_scroll_down%  , settings.ini, current, C_DOWN
  IniWrite, %gui_toggle_key%        , settings.ini, current, TOGGLE_CM
  IniWrite, %gui_target_lock%       , settings.ini, current, TARGET_LOCK
  IniWrite, %gui_chat_key%          , settings.ini, current, CHAT
  IniWrite, %gui_command_key%       , settings.ini, current, COMMAND
  IniWrite, %gui_guild_key%         , settings.ini, current, GUILD
  IniWrite, %gui_hero_key%          , settings.ini, current, HERO
  IniWrite, %gui_inventory_key%     , settings.ini, current, INVENTORY
  IniWrite, %gui_invite_key%        , settings.ini, current, INVITE
  IniWrite, %gui_mail_key%          , settings.ini, current, MAIL
  IniWrite, %gui_map_key%           , settings.ini, current, MAP
  IniWrite, %gui_menu_key%          , settings.ini, current, MENU
  IniWrite, %gui_pet_key%           , settings.ini, current, PET
  IniWrite, %gui_pvp_key%           , settings.ini, current, PVP
  IniWrite, %gui_reply_key%         , settings.ini, current, REPLY
  IniWrite, %gui_social_key%        , settings.ini, current, SOCIAL
  IniWrite, %gui_trade_key%         , settings.ini, current, TRADE
  IniWrite, %gui_wvw_key%           , settings.ini, current, WVW
  IniWrite, %gui_xhair_yper%        , settings.ini, current, XHAIR_POS
  IniWrite, %gui_xhair_img%         , settings.ini, current, XHAIR_IMG
return

ButtonDefaults:
  IniRead, ini_left_click        , settings.ini, defaults, LEFT       , %A_Space%
  IniRead, ini_alt_left_click    , settings.ini, defaults, A_LEFT     , %A_Space%
  IniRead, ini_shift_left_click  , settings.ini, defaults, S_LEFT     , %A_Space%
  IniRead, ini_ctrl_left_click   , settings.ini, defaults, C_LEFT     , %A_Space%
  IniRead, ini_right_click       , settings.ini, defaults, RIGHT      , %A_Space%
  IniRead, ini_alt_right_click   , settings.ini, defaults, A_RIGHT    , %A_Space%
  IniRead, ini_shift_right_click , settings.ini, defaults, S_RIGHT    , %A_Space%
  IniRead, ini_ctrl_right_click  , settings.ini, defaults, C_RIGHT    , %A_Space%
  IniRead, ini_middle_click      , settings.ini, defaults, MIDDLE     , %A_Space%
  IniRead, ini_alt_middle_click  , settings.ini, defaults, A_MIDDLE   , %A_Space%
  IniRead, ini_shift_middle_click, settings.ini, defaults, S_MIDDLE   , %A_Space%
  IniRead, ini_ctrl_middle_click , settings.ini, defaults, C_MIDDLE   , %A_Space%
  IniRead, ini_scroll_up         , settings.ini, defaults, UP         , %A_Space%
  IniRead, ini_alt_scroll_up     , settings.ini, defaults, A_UP       , %A_Space%
  IniRead, ini_shift_scroll_up   , settings.ini, defaults, S_UP       , %A_Space%
  IniRead, ini_ctrl_scroll_up    , settings.ini, defaults, C_UP       , %A_Space%
  IniRead, ini_scroll_down       , settings.ini, defaults, DOWN       , %A_Space%
  IniRead, ini_alt_scroll_down   , settings.ini, defaults, A_DOWN     , %A_Space%
  IniRead, ini_shift_scroll_down , settings.ini, defaults, S_DOWN     , %A_Space%
  IniRead, ini_ctrl_scroll_down  , settings.ini, defaults, C_DOWN     , %A_Space%
  IniRead, ini_toggle_key        , settings.ini, defaults, TOGGLE_CM  , %A_Space%
  IniRead, ini_target_lock       , settings.ini, defaults, TARGET_LOCK, %A_Space%
  IniRead, ini_chat_key          , settings.ini, defaults, CHAT       , %A_Space%
  IniRead, ini_command_key       , settings.ini, defaults, COMMAND    , %A_Space%
  IniRead, ini_guild_key         , settings.ini, defaults, GUILD      , %A_Space%
  IniRead, ini_hero_key          , settings.ini, defaults, HERO       , %A_Space%
  IniRead, ini_inventory_key     , settings.ini, defaults, INVENTORY  , %A_Space%
  IniRead, ini_invite_key        , settings.ini, defaults, INVITE     , %A_Space%
  IniRead, ini_mail_key          , settings.ini, defaults, MAIL       , %A_Space%
  IniRead, ini_map_key           , settings.ini, defaults, MAP        , %A_Space%
  IniRead, ini_menu_key          , settings.ini, defaults, MENU       , %A_Space%
  IniRead, ini_pet_key           , settings.ini, defaults, PET        , %A_Space%
  IniRead, ini_pvp_key           , settings.ini, defaults, PVP        , %A_Space%
  IniRead, ini_reply_key         , settings.ini, defaults, REPLY      , %A_Space%
  IniRead, ini_social_key        , settings.ini, defaults, SOCIAL     , %A_Space%
  IniRead, ini_trade_key         , settings.ini, defaults, TRADE      , %A_Space%
  IniRead, ini_wvw_key           , settings.ini, defaults, WVW        , %A_Space%
  IniRead, ini_xhair_yper        , settings.ini, defaults, XHAIR_POS  , %A_Space%
  IniRead, ini_xhair_img         , settings.ini, defaults, XHAIR_IMG  , %A_Space%

  guicontrol, text, gui_left_click        , %ini_left_click%
  guicontrol, text, gui_alt_left_click    , %ini_alt_left_click%
  guicontrol, text, gui_shift_left_click  , %ini_shift_left_click%
  guicontrol, text, gui_ctrl_left_click   , %ini_ctrl_left_click%
  guicontrol, text, gui_right_click       , %ini_right_click%
  guicontrol, text, gui_alt_right_click   , %ini_alt_right_click%
  guicontrol, text, gui_shift_right_click , %ini_shift_right_click%
  guicontrol, text, gui_ctrl_right_click  , %ini_ctrl_right_click%
  guicontrol, text, gui_middle_click      , %ini_middle_click%
  guicontrol, text, gui_alt_middle_click  , %ini_alt_middle_click%
  guicontrol, text, gui_shift_middle_click, %ini_shift_middle_click%
  guicontrol, text, gui_ctrl_middle_click , %ini_ctrl_middle_click%
  guicontrol, text, gui_scroll_up         , %ini_scroll_up%
  guicontrol, text, gui_alt_scroll_up     , %ini_alt_scroll_up%
  guicontrol, text, gui_shift_scroll_up   , %ini_shift_scroll_up%
  guicontrol, text, gui_ctrl_scroll_up    , %ini_ctrl_scroll_up%
  guicontrol, text, gui_scroll_down       , %ini_scroll_down%
  guicontrol, text, gui_alt_scroll_down   , %ini_alt_scroll_down%
  guicontrol, text, gui_shift_scroll_down , %ini_shift_scroll_down%
  guicontrol, text, gui_ctrl_scroll_down  , %ini_ctrl_scroll_down%
  guicontrol, text, gui_toggle_key        , %ini_toggle_key%
  guicontrol, text, gui_target_lock       , %ini_target_lock%
  guicontrol, text, gui_chat_key          , %ini_chat_key%
  guicontrol, text, gui_command_key       , %ini_command_key%
  guicontrol, text, gui_guild_key         , %ini_guild_key%
  guicontrol, text, gui_hero_key          , %ini_hero_key%
  guicontrol, text, gui_inventory_key     , %ini_inventory_key%
  guicontrol, text, gui_invite_key        , %ini_invite_key%
  guicontrol, text, gui_mail_key          , %ini_mail_key%
  guicontrol, text, gui_map_key           , %ini_map_key%
  guicontrol, text, gui_menu_key          , %ini_menu_key%
  guicontrol, text, gui_pet_key           , %ini_pet_key%
  guicontrol, text, gui_pvp_key           , %ini_pvp_key%
  guicontrol, text, gui_reply_key         , %ini_reply_key%
  guicontrol, text, gui_social_key        , %ini_social_key%
  guicontrol, text, gui_trade_key         , %ini_trade_key%
  guicontrol, text, gui_wvw_key           , %ini_wvw_key%
  guicontrol, text, gui_xhair_yper        , %ini_xhair_yper%
  guicontrol, text, gui_xhair_img         , %ini_xhair_img%
return
