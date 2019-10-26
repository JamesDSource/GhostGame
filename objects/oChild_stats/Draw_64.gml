if(!surface_exists(stats_window)) stats_window = surface_create(surf_w, surf_h);
else {
	surface_set_target(stats_window);
	// draw rectangle
	draw_set_alpha(0.5);
	gpu_set_blendmode(bm_max);
	draw_set_color(c_teal);
	draw_rectangle(0, 0, surf_w, surf_h, false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1); 
	#region draw stats
		draw_set_color(c_white);
		draw_set_font(fGame);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top); 
		var margin = 20; 
		var kids_number = ds_list_size(kids); 
		for(var i = -1; i < kids_number; i++) {
			var invaders = "Invaders:"; 
			var seperation = 5 + string_height("Sample Text");
			var draw_y = string_height(invaders) + ((i+1)*margin) + ((surf_h/(kids_number+1)) * i);
			if(i >= 0) {
				// name
				draw_set_color(c_ltgray);
				var kid_id = ds_list_find_value(kids, i);
				var stat_map = kid_id.info;
				draw_text_shadow(margin, draw_y, stat_map[? "name"], 4);
				// trait
				var col = c_fuchsia;
				draw_y += seperation;
				draw_set_color(col); 
				draw_text_shadow(margin, draw_y, traits[stat_map[? "trait"]], 4);
				// tension level 
				draw_y += seperation;
				var aLevel = kid_id.anxiety_level;
				var anxiety_col; 
				switch(aLevel) {
					case ANXIETY.Calm: anxiety_col = c_lime; break;
					case ANXIETY.OnEdge: anxiety_col = c_yellow; break;
					case ANXIETY.Anxious: anxiety_col = c_orange; break;
					case ANXIETY.Terrified: anxiety_col = c_red; break;
				}
				var tension_lvl_string = "Tension Level: "; 
				draw_text_shadow(margin, draw_y, tension_lvl_string, 4); 
				draw_set_color(anxiety_col);
				draw_text_shadow(margin + string_width(tension_lvl_string), draw_y, anxiety[aLevel], 4); 
				draw_set_color(col); 
			}
			else {
				var y_margin = 4;
				draw_text_shadow(margin, y_margin, invaders, 5); 
			}
		
		}
	#endregion
	surface_reset_target();
	var slide = 10;
	if(global.show_stats) draw_x = approach(draw_x, 0, slide); 
	else draw_x = approach(draw_x, OFFSCREENX, slide); 
	if(draw_x != OFFSCREENX) draw_surface(stats_window, draw_x, 0);
}