/// @description Draws text
t++;
draw_set_font(fGame);
draw_set_valign(fa_top);
draw_set_halign(fa_middle);
var verticle_shift = 14 * scale; 
var horizontal_margin = 10 * scale;
draw_set_alpha(0.5);
draw_rectangle_color(draw_x - horizontal_margin, draw_y, draw_x + rec_end_width + horizontal_margin, draw_y + (string_height(message) * scale) + verticle_shift + y_offset, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1); 
draw_rectangle_color(draw_x - horizontal_margin, draw_y, draw_x + rec_end_width + horizontal_margin, draw_y + (string_height(message) * scale) + verticle_shift + y_offset, c_white, c_white, c_white, c_white, true);
draw_x = obj.x - rec_end_width/2;
draw_y = obj.y - obj.sprite_yoffset - y_offset - (string_height(message) * scale) - verticle_shift; 
depth = obj.depth-1000;
modifier = TEXTMODIFIERS.None;
rec_end_width = 0; 
distance_from_line = 0; 
y_offset = 0;
drop = approach(drop, 0, drop_max/time_between_letters);
for(var i = 1; i < iteration; i++)
{
	iteration_time = time_between_letters;
	draw_set_color(color);
	if(string_char_at(message, i) == "/")
	{
		if(spoiled) modifier = TEXTMODIFIERS.None; 
		spoiled = false; 
		var add_modifier;
		switch(string_char_at(message, i+1))
		{
			case"s": add_modifier = TEXTMODIFIERS.Shake; break;
			case"w": add_modifier = TEXTMODIFIERS.Wave; break;
			case"y": add_modifier = TEXTMODIFIERS.Yellow_recolor; break; 
			case"c": 
				add_modifier = TEXTMODIFIERS.Crawl;
				iteration_time = time_between_letters * 4;
				break;
			case"q": add_modifier = TEXTMODIFIERS.Quick; break;
			case"h": add_modifier = TEXTMODIFIERS.Wiggle; break; 
			case"r": add_modifier = TEXTMODIFIERS.Rainbow; break; 
			case"n": 
				add_modifier = TEXTMODIFIERS.New_line; 
				distance_from_line = 0; 
				break; 
		}
		modifier[array_length_1d(modifier) + 1] = add_modifier;
		i++;
	}
	else {
		var reset; 
		reset[4] = " ";
		reset[3] = ",";
		reset[2] = "?";
		reset[1] = ".";
		reset[0] = "!"; 
		for(var ii = 0; ii < array_length_1d(reset); ii++) {
			if(string_char_at(message, i) == reset[ii]) modifier = TEXTMODIFIERS.None;
		}
		if(!spoiled && modifier != TEXTMODIFIERS.None) spoiled = true; 
		var offset_x;
		offset_x = string_width(string_copy(message, 1, distance_from_line)) * scale;
		var mod_x = 0;
		var mod_y = 0;
		for(var ii = 0; ii < array_length_1d(modifier); ii++)
		{
			switch(modifier[ii])
			{
				case TEXTMODIFIERS.Shake:
					mod_x = irandom_range(-1 * scale, 1 * scale);
					mod_y = irandom_range(-1 * scale, 1 * scale);
					break;
				case TEXTMODIFIERS.Wave:
					var frequency = 2 * scale;
					var amplitude = 6 * scale;
					var letter_distance = 2 * scale;
					mod_y = sin(((t + (i * letter_distance)) * pi * frequency)/room_speed) * amplitude;
					break;
				case TEXTMODIFIERS.Yellow_recolor:
					draw_set_color(c_yellow);
					break;
				case TEXTMODIFIERS.Crawl:
					iteration_time = time_between_letters * 4;
					break;
				case TEXTMODIFIERS.Quick:
					iteration_time = max(1, floor(time_between_letters/4));
					break;
				case TEXTMODIFIERS.Wiggle:
					mod_x = irandom_range(-1 * scale, 1 * scale);
					break;
				case TEXTMODIFIERS.Rainbow:
					var end_range = 255; 
					var red = wave(0, end_range, abs(sin(1 * i)), 0);
					var green = wave(0, end_range, abs(sin(2 * i)), 0);
					var blue = wave(0, end_range, abs(sin(3 * i)), 0);
					draw_set_color(make_color_rgb(red, green, blue)); 
					break;
				case TEXTMODIFIERS.New_line:
					y_offset += string_height(message) + verticle_shift;
					modifier[ii] = -1;
					break;
				}
		}
		var go_back_color = draw_get_color();
		var temp_scale = scale;
		if(i == iteration -1 && !done) {
			mod_y -= drop;
			temp_scale = scale * abs(1- (drop/drop_max));
		}
		if(scale >= 1) {
			draw_set_color(shadow_color);
			for(var ii = 0; ii < scale; ii++) draw_text_transformed(draw_x + offset_x + mod_x -(ii + 1), draw_y + y_offset + mod_y + verticle_shift/2 -(ii + 1), string_char_at(message, i), temp_scale, temp_scale, 0);
		}
		draw_set_color(go_back_color); 
		draw_text_transformed(draw_x + offset_x + mod_x, draw_y + y_offset + mod_y + verticle_shift/2, string_char_at(message, i), temp_scale, temp_scale, 0);
		if(offset_x > rec_end_width) rec_end_width = offset_x; 
		distance_from_line++;
	}
}