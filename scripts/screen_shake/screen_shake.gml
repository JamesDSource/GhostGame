/// @desc screen_shake(magnitude, frames)
/// @arg magnitude
/// @arg frames
with(oCamera) {
	if(shake_magnitude < argument[0]) shake_magnitude = argument[0];	
	if(shake_remain < argument[1]) shake_remain = argument[1];
	if(shake_frames < argument[1]) shake_frames = argument[1];
}