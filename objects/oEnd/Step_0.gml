if(kids_out >= 3) {
	with(oPause) {
		event_perform(ev_keypress, vk_escape);
		page = PAGES.Win;
		game_over = true; 
	}
}