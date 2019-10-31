display_set_gui_size(display_get_width(), display_get_height()); 
page = PAGES.Main;
pages[PAGES.Main] = create_menu_page(
	["Play", ELEMENTTYPE.Script_runner, game_start],
	["Quit", ELEMENTTYPE.Transfer, PAGES.Quit]
);
pages[PAGES.Quit] = create_menu_page(
	["Yes, Quit game", ELEMENTTYPE.Script_runner, stop_game],
	["No, take me back", ELEMENTTYPE.Transfer, PAGES.Main]
);
index = 0; 
page_messages[PAGES.Quit] = "";
turning_point_met = false; 
menu_down = false;
menu_up = false;
select = false;
menu_y = display_get_gui_height()/1.5;
offscreen_position = display_get_gui_width();
menu_x = display_get_gui_width(); 
menu_x_ideal = display_get_gui_width()/1.75; 
space = 55; 
select_scale_constant = 1; 
last_index = index; 
passed_index = false; 
vShift_amount = 20;