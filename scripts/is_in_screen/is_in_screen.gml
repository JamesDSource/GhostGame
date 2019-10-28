/// @desc is_in_screen(x, y)
/// @arg x
/// @arg y

var fits_horizontal = false;
var fits_verticle = false;
var x_ = argument[0];
var y_ = argument[1]; 
var cam_x = oCamera.x;
var cam_y = oCamera.y;

if(x_ > cam_x - VIEWWIDTH/2 && x_ < cam_x + VIEWWIDTH/2) {
	fits_horizontal = true;
}
if(y_ > cam_y - VIEWHEIGHT/2 && y_ < cam_y + VIEWHEIGHT/2) {
	fits_verticle = true;
}

if(fits_verticle && fits_horizontal) return true;
else return false; 