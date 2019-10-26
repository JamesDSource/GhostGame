/// @desc draw_text_shadow(x, y, text, shadow)
/// @arg x
/// @arg y
/// @arg text
/// @arg shadow
var x_ = argument[0]; 
var y_ = argument[1];
var txt = argument[2];
var shadow = argument[3];
var col = draw_get_color();
for(var i = 0; i < shadow; i++) {
	draw_set_color(c_black);
	draw_text(x_-i, y_-i, txt);
}
draw_set_color(col);
draw_text(x_, y_, txt); 