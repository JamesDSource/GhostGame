paycheck_barked = false;
intro_dialogue_done = false; 
dialogue = dialogue_create_system();
dialogue_add("Tonight I trust /wyou with the building.", dialogue, id);
dialogue_add("If any children come snooping,/nknow it is /syour duty to/nscare them away.", dialogue, id);
dialogue_add("If the golden skull gets stolen,/nyou will bare all the blame.", dialogue, id);
dialogue_add("So make sure that does not happen.", dialogue, id);
dialogue_add("To scare them try and do ghost things./nLike randomly shutting doors.", dialogue, id);
dialogue_add("You can also break random objects.", dialogue, id);
dialogue_add("Good luck officer.", dialogue, id);
dialogue_play(dialogue, false);
key_e = false; 
ds_list_add(global.hints, "Press \"E\" to continue dialogue");
with(instance_create_layer(x, y, "Lighting", oLight_circle)) {
	paired_object = other.id; 
	color = c_teal;
	radius = 100; 
	glow = true; 
}