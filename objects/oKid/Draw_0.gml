draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
draw_set_font(fName); 
var y_offset = -10; 
draw_set_alpha(0.8);
draw_text_shadow(x, y-sprite_yoffset+y_offset, info[? "name"], 2);
draw_set_alpha(1); 
draw_self(); 