audio_play_sound_on(prop_emitter, break_sound, false, 2);
repeat(pieces_amount) {
	var x_offset = irandom_range(-10, 10);
	var y_offset = irandom_range(-10, 10);
	with(instance_create_layer(x + x_offset, y + y_offset, "Instances", oPieces)) {
		sprite_index = other.pieces_sprite;
		image_speed = 0; 
		image_index = irandom_range(0, sprite_get_number(sprite_index)-1); 
	}
}
with(instance_create_depth(x, y, depth, oNoise)) {
	noise_type = NOISETYPE.Break;
	life = 10; 
}