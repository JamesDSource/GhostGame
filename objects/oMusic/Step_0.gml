switch(room) {
	case Title:
		if(switched_room) {
			audio_play_sound(sdMenu_music, 1, true);
			switched_room = false; 
		}
		break;
	case Game_room:
		if(switched_room) {
			audio_play_sound(sdGame_default, 1, true);
			switched_room = false;
			intense_track = false;
		}
		if(oGolden_skull.carried_by != noone && !intense_track) {
			audio_stop_sound(sdGame_default);
			audio_play_sound(sdGame_tension, 1, true);
			intense_track = true; 
		}
		else if(intense_track && oGolden_skull.carried_by == noone) {
			audio_stop_sound(sdGame_tension);
			audio_play_sound(sdGame_default, 1, true);
			intense_track = false; 
		}
		break;
}