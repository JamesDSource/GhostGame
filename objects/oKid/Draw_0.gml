draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
draw_set_font(fName); 
var y_offset;
draw_set_alpha(0.8);
var x_ = x;
var y_ = y-sprite_yoffset;
if(!is_in_screen(x_, y_)) y_offset = -10 * number;
else y_offset = -10; 
y_ += y_offset;
x_ = clamp(x_, oCamera.x - VIEWWIDTH/2 + (string_width(info[? "name"])/2), oCamera.x + VIEWWIDTH/2 - (string_width(info[? "name"])/2));
y_ = clamp(y_, oCamera.y - VIEWHEIGHT/2, oCamera.y + VIEWHEIGHT/2);
if(!out_of_game) draw_text_shadow(x_, y_, info[? "name"], 2);
draw_set_alpha(1); 
draw_self(); 