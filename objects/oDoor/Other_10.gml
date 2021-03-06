/// @description open and close door
opened = !opened;
if(opened) {
	image_index = 1;
	audio_play_sound_on(emitter, sdDoor_open, false, 2);
}
else if(!place_meeting(x, y, oKid)){
	screen_shake(2, 4); 
	image_index = 0;
	audio_play_sound_on(emitter, sdDoor_close, false, 2);
	with(instance_create_depth(x, y, depth, oNoise)) {
		life = room_speed;
		noise_type = NOISETYPE.Door; 
	}
}
else opened = true;