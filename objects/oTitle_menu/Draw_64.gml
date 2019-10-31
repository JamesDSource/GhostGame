var shadow = 1;
var menu = pages[page];
var message_margin_y = -space*2;
draw_set_color(c_dkgray); 
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
if(page_messages[page] != 0) 
{
	var scaled_shadow = 2; 
	draw_text_transformed(menu_x + scaled_shadow, menu_y + message_margin_y + scaled_shadow, page_messages[page], 2, 2, 0);
	draw_set_color(c_ltgray); 
	draw_text_transformed(menu_x, menu_y + message_margin_y, page_messages[page], 2, 2, 0);
}
var change = 0.08;
var overextention_scale = 1.75;
var target_scale = 1.5;
if(!turning_point_met) select_scale_constant = approach(select_scale_constant, overextention_scale, change);
else select_scale_constant = approach(select_scale_constant, target_scale, change); 
if(select_scale_constant == overextention_scale) turning_point_met = true; 
//slide
var slide_amount = 50; 
menu_x = approach(menu_x, menu_x_ideal, slide_amount); 
passed_index = false; 
for(var i = 0; i < ds_grid_height(menu); i++)
{
	// txt shadow
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_set_font(fGame);
	// actual txt
	var select_scale; 
	var dash; 
	if(i == index) 
	{
		passed_index = true; 
		if(turning_point_met) draw_set_color(c_yellow);
		else draw_set_color(c_white);
		select_scale = select_scale_constant;
		dash = "- "
	}
	else 
	{
		draw_set_color(c_white);
		select_scale = 1;
		dash = ""; 
	}
	var vShift;
	if(i == index) vShift = 0;
	else if(passed_index) vShift = vShift_amount;
	else vShift = -vShift_amount; 
	shadow = select_scale;
	var col = draw_get_color(); 
	draw_set_color(c_gray); 
	draw_text_transformed(menu_x - shadow, menu_y + shadow + space*i + vShift, dash + menu[# 0, i], select_scale, select_scale, 0);
	draw_set_color(col); 
	draw_text_transformed(menu_x, menu_y + space*i + vShift, dash + menu[# 0, i], select_scale, select_scale, 0);
	draw_set_halign(fa_left);
	var front = "";
	var back = "";
	if(index == i && select_scale == target_scale && turning_point_met)
	{
		front = "< ";
		back = " >";
	}
	else if(i == index)
	{
		front = "  ";
		back = "  ";
	}
	switch(menu[# 1, i])
	{
		case ELEMENTTYPE.Slider:
			var x_buffer = 30; 
			var value = menu[# 2, i];
			value = variable_global_get(value);
			var range = menu[# 3, i];
			var max_ = range[1];
			var min_ = range[0];
			value = string(round((value - min_)*100/(max_ - min_))) + "%";
			draw_set_color(c_gray); 
			draw_text_transformed(menu_x + x_buffer - shadow, menu_y + shadow + space*i + vShift,front+value+back, select_scale, select_scale, 0);
			draw_set_color(col); 
			draw_text_transformed(menu_x + x_buffer, menu_y + space*i + vShift,front+value+back, select_scale, select_scale, 0);
			break;
		case ELEMENTTYPE.Toggle:
			var x_buffer = 30;
			value = variable_global_get(menu[# 2, i]);
			if(value) value = "ON";
			else value = "OFF";
			draw_set_color(c_gray); 
			draw_text_transformed(menu_x + x_buffer - shadow, menu_y + shadow + space*i + vShift,front+value+back, select_scale, select_scale, 0);
			draw_set_color(col); 
			draw_text_transformed(menu_x + x_buffer, menu_y + space*i + vShift,front+value+back, select_scale, select_scale, 0);
			break;
		
	}
}