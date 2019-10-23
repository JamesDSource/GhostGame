/// @description typewritter
if(iteration == string_length(message) + 1) {
	done = true;
	if(automatic) {
		alarm[1] = room_speed * seconds_after_done;
	}
}
else {
	iteration++;
	if(string_char_at(message, iteration - 1) == "/") iteration += 2; 
	alarm[0] = iteration_time;
	drop = drop_max;
}
if(string_char_at(message, iteration-1) != " " && string_char_at(message, iteration) != "") {
	var pitch = 1 + random_range(-0.1, 0.1); 
	audio_sound_pitch(sdText_scroll, pitch);
	if(obj != oPlayer) audio_play_sound_on(emitter, sdText_scroll, false, 1); 
	else audio_play_sound(sdText_scroll, 1, false);
}