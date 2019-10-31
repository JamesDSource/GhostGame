event_inherited();
pages[PAGES.Main] = create_menu_page(
	["Resume", ELEMENTTYPE.Script_runner, resume],
	["Quit to menu", ELEMENTTYPE.Script_runner, quit_to_title],
	["Quit to desktop", ELEMENTTYPE.Script_runner, stop_game]
);
pages[PAGES.Lose] = create_menu_page(
	["Restart", ELEMENTTYPE.Script_runner, game_reset],
	["Quit to menu", ELEMENTTYPE.Script_runner, quit_to_title],
	["Quit to desktop", ELEMENTTYPE.Script_runner, stop_game]
);
pages[PAGES.Win] = create_menu_page(
	["Restart", ELEMENTTYPE.Script_runner, game_reset],
	["Quit to menu", ELEMENTTYPE.Script_runner, quit_to_title],
	["Quit to desktop", ELEMENTTYPE.Script_runner, stop_game]
);
page_messages[PAGES.Win] = "Good job, you scared\naway all the kids!";
page_messages[PAGES.Lose] = "No good,\nyou lost your job.";
page_messages[PAGES.Main] = "Paused";
menu_y = display_get_gui_height()/2;
menu_x = display_get_gui_width()/2;
is_paused = false; 
game_over = false;
pause_sprite = noone; 
cam_x = 0;
cam_y = 0; 