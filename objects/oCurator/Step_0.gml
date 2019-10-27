key_e = keyboard_check_pressed(ord("E"));
if(!instance_exists(CuratorPlant) && !paycheck_barked) {
	bark("That's coming out of your paycheck.");
	paycheck_barked = true; 
}
if(!instance_exists(oDialogue_system) && !intro_dialogue_done) {
	oPlayer.state = PLAYERSTATE.Float;
	ds_list_delete(global.hints, ds_list_find_index(global.hints, "Press \"E\" to continue dialogue"));
	ds_list_add(global.hints, oHint_messages.stat_hint);
	intro_dialogue_done = true; 
}
if(!intro_dialogue_done && key_e) dialogue_next(); 