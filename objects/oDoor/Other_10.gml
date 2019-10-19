/// @description open and close door
opened = !opened;
if(opened) image_index = 1;
else {
	screen_shake(2, 4); 
	image_index = 0;
}