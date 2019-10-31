/// @desc lose game
with(oPause) {
	event_perform(ev_keypress, vk_escape);
	page = PAGES.Lose;
	game_over = true; 
}
