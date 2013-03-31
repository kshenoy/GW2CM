Gui, Font, s11, 
Gui, Add, Text, x62 y80 w70 h20 +Right, Toggle CM
Gui, Add, Text, x272 y80 w80 h20 +Right, Target Lock
Gui, Font, s10, 
Gui, Add, Edit, x162 y80 w80 h20 vgui_toggle_key, %ini_toggle_key%
Gui, Add, Edit, x382 y80 w80 h20 vgui_target_lock, %ini_target_lock%
Gui, Font, s12, 
Gui, Add, GroupBox, x52 y120 w650 h220 , Mouse Controls
Gui, Font, s11, 
Gui, Add, Text, x72 y220 w60 h20 +Right, Alt
Gui, Add, Text, x72 y260 w60 h20 +Right, Shift
Gui, Add, Text, x72 y300 w60 h20 +Right, Control
Gui, Add, Text, x162 y150 w80 h20 +Center, Left Click
Gui, Add, Text, x272 y150 w80 h20 +Center, Right Click
Gui, Add, Text, x382 y150 w80 h20 +Center, Middle Click
Gui, Add, Text, x492 y150 w80 h20 +Center, Scroll Up
Gui, Add, Text, x602 y150 w80 h20 +Center, Scroll Down
Gui, Font, s10, 
Gui, Add, Edit, x162 y180 w80 h20 vgui_left_click, %ini_left_click%
Gui, Add, Edit, x162 y220 w80 h20 vgui_alt_left_click, %ini_alt_left_click%
Gui, Add, Edit, x162 y260 w80 h20 vgui_shift_left_click, %ini_shift_left_click%
Gui, Add, Edit, x162 y300 w80 h20 vgui_ctrl_left_click, %ini_ctrl_left_click%
Gui, Add, Edit, x272 y180 w80 h20 vgui_right_click, %ini_right_click%
Gui, Add, Edit, x272 y220 w80 h20 vgui_alt_right_click, %ini_alt_right_click%
Gui, Add, Edit, x272 y260 w80 h20 vgui_shift_right_click, %ini_shift_right_click%
Gui, Add, Edit, x272 y300 w80 h20 vgui_ctrl_right_click, %ini_ctrl_right_click%
Gui, Add, Edit, x382 y180 w80 h20 vgui_middle_click, %ini_middle_click%
Gui, Add, Edit, x382 y220 w80 h20 vgui_alt_middle_click, %ini_alt_middle_click%
Gui, Add, Edit, x382 y260 w80 h20 vgui_shift_middle_click, %ini_shift_middle_click%
Gui, Add, Edit, x382 y300 w80 h20 vgui_ctrl_middle_click, %ini_ctrl_middle_click%
Gui, Add, Edit, x492 y180 w80 h20 vgui_scroll_up, %ini_scroll_up%
Gui, Add, Edit, x492 y220 w80 h20 vgui_alt_scroll_up, %ini_alt_scroll_up%
Gui, Add, Edit, x492 y260 w80 h20 vgui_shift_scroll_up, %ini_shift_scroll_up%
Gui, Add, Edit, x492 y300 w80 h20 vgui_ctrl_scroll_up, %ini_ctrl_scroll_up%
Gui, Add, Edit, x602 y180 w80 h20 vgui_scroll_down, %ini_scroll_down%
Gui, Add, Edit, x602 y220 w80 h20 vgui_alt_scroll_down, %ini_alt_scroll_down%
Gui, Add, Edit, x602 y260 w80 h20 vgui_shift_scroll_down, %ini_shift_scroll_down%
Gui, Add, Edit, x602 y300 w80 h20 vgui_ctrl_scroll_down, %ini_ctrl_scroll_down%
Gui, Font, s12, 
Gui, Add, GroupBox, x52 y360 w650 h240 , Panels (These will disable Combat Mode)
Gui, Font, s11, 
Gui, Add, Text, x62 y400 w70 h20 +Right, Chat
Gui, Add, Text, x62 y440 w70 h20 +Right, Command
Gui, Add, Text, x62 y480 w70 h20 +Right, Guild
Gui, Add, Text, x62 y520 w70 h20 +Right, Hero
Gui, Add, Text, x62 y560 w70 h20 +Right, Inventory
Gui, Add, Text, x302 y400 w50 h20 +Right, Invite
Gui, Add, Text, x302 y440 w50 h20 +Right, Map
Gui, Add, Text, x302 y480 w50 h20 +Right, Mail
Gui, Add, Text, x302 y520 w50 h20 +Right, Menu
Gui, Add, Text, x302 y560 w50 h20 +Right, Pet
Gui, Add, Text, x522 y400 w50 h20 +Right, PvP
Gui, Add, Text, x522 y440 w50 h20 +Right, Reply
Gui, Add, Text, x522 y480 w50 h20 +Right, Social
Gui, Add, Text, x522 y520 w50 h20 +Right, Trade
Gui, Add, Text, x522 y560 w50 h20 +Right, WvW
Gui, Font, s10, 
Gui, Add, Edit, x162 y400 w80 h20 vgui_chat_key, %ini_chat_key%
Gui, Add, Edit, x162 y440 w80 h20 vgui_command_key, %ini_command_key%
Gui, Add, Edit, x162 y480 w80 h20 vgui_guild_key, %ini_guild_key%
Gui, Add, Edit, x162 y520 w80 h20 vgui_hero_key, %ini_hero_key%
Gui, Add, Edit, x162 y560 w80 h20 vgui_inventory_key, %ini_inventory_key%
Gui, Add, Edit, x382 y400 w80 h20 vgui_invite_key, %ini_invite_key%
Gui, Add, Edit, x382 y440 w80 h20 vgui_mail_key, %ini_mail_key%
Gui, Add, Edit, x382 y480 w80 h20 vgui_map_key, %ini_map_key%
Gui, Add, Edit, x382 y520 w80 h20 vgui_menu_key, %ini_menu_key%
Gui, Add, Edit, x382 y560 w80 h20 vgui_pet_key, %ini_pet_key%
Gui, Add, Edit, x602 y400 w80 h20 vgui_pvp_key, %ini_pvp_key%
Gui, Add, Edit, x602 y440 w80 h20 vgui_reply_key, %ini_reply_key%
Gui, Add, Edit, x602 y480 w80 h20 vgui_social_key, %ini_social_key%
Gui, Add, Edit, x602 y520 w80 h20 vgui_trade_key, %ini_trade_key%
Gui, Add, Edit, x602 y560 w80 h20 vgui_wvw_key, %ini_wvw_key%
Gui, Font, s12, 
Gui, Add, GroupBox, x52 y620 w650 h80 , Crosshair Options
Gui, Font, s11, 
Gui, Add, Text, x82 y660 w50 h20 +Right, Position
Gui, Add, Text, x302 y660 w50 h20 +Right, Image
Gui, Font, s10, 
Gui, Add, Edit, x162 y660 w80 h20 vgui_xhair_yper, %xhair_yper%
Gui, Add, Edit, x382 y660 w300 h20 vgui_xhair_img, %xhair_img%
Gui, Add, Button, x512 y720 w80 h30 , Save
Gui, Add, Button, x622 y720 w80 h30 , Defaults
; Generated using SmartGUI Creator 4.0
Gui, Show, x254 y131 h839 w1195, New GUI Window
Return

GuiClose:
ExitApp
