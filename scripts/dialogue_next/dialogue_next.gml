/// @desc dialogue_next()
with(oDialogue_system) 
{
	if(done) event_user(0);
	else iteration = string_length(message) + 1; 
	audio_play_sound(sdText_continue, 1, false);
}