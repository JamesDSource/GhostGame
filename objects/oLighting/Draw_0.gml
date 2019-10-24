if(lighting_surface == -1) lighting_surface = surface_create(room_width, room_height);
else {
	draw_surface(lighting_surface, 0, 0); 
	surface_set_target(lighting_surface);
	var darkness = 0.7;
	draw_set_alpha(darkness);
	var b = c_black;
	var w = surface_get_width(lighting_surface);
	var h = surface_get_height(lighting_surface);
	draw_rectangle_color(0, 0, w, h, b, b, b, b, false);
	gpu_set_blendmode(bm_max);
	with(oLight) event_perform(ev_draw, 0);
	gpu_set_blendmode(bm_normal); 
	draw_set_alpha(1);
	surface_reset_target();
}