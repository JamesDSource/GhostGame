draw_set_font(fHints);
draw_set_valign(fa_bottom);
draw_set_halign(fa_right); 
draw_set_color(c_white); 
var margin = 10;
var draw_x = display_get_gui_width() - margin;
var draw_y = display_get_gui_height() - margin;
var size = ds_list_size(global.hints)

if(size > 0) {
	var hint_string = "";
	for(var i = 0; i < size; i++) {
		hint_string = string_insert(global.hints[| i], hint_string, 0);
		if(i != size -1) hint_string = string_insert("\n", hint_string, 0); 
	}
	var alpha = wave(0, 1, 2, 0);
	draw_set_alpha(alpha);
	draw_text(draw_x, draw_y, hint_string);
	draw_set_alpha(1); 
}