if(!surface_exists(stats_window)) stats_window = surface_create(surf_w, surf_h);
else {
	surface_set_target(stats_window);
	// draw rectangle
	draw_set_color(c_teal);
	draw_rectangle(0, 0, surf_w, surf_h, false);
	// draw stats
	draw_set_color(c_white);
	draw_set_font(fGame);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle); 
	var margin = 20; 
	var kids_number = ds_list_size(kids); 
	for(var i = 0; i < kids_number+1; i ++) {
		var seperation = 5 + string_height("Sample Text");
		var draw_y = ((i+3)*margin) + ((surf_h/(kids_number+1)) * (i-1));
		if(i >= 1) {
			var kid_id = ds_list_find_value(kids, i-1);
			var stat_map = kid_id.info;
			draw_text(margin, draw_y, stat_map[? "name"]);
			draw_y += seperation;
			draw_text(margin, draw_y, "Trait");
		}
		else {
			draw_text(margin, 0 + margin, "Invaders:"); 
		}
		
	}
	surface_reset_target();
	var slide = 10;
	if(global.show_stats) draw_x = approach(draw_x, 0, slide); 
	else draw_x = approach(draw_x, OFFSCREENX, slide); 
	if(draw_x != OFFSCREENX) draw_surface(stats_window, draw_x, 0);
}