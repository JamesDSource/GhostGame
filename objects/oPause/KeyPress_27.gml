/// @description toggle pause
if(!game_over) {
	is_paused = !is_paused;

	if(is_paused) {
		var sw = surface_get_width(application_surface);
		var sh = surface_get_height(application_surface);
		pause_sprite = sprite_create_from_surface(application_surface, 0, 0, sw, sh, false, false, sw/2, sh/2); 
		instance_deactivate_all(true);
		page = PAGES.Main; 
	}
	else {
		pause_sprite = noone;
		menu_x = offscreen_position;
		instance_activate_all();	
	}
}