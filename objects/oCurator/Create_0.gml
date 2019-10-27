paycheck_barked = false;
intro_dialogue_done = false; 
dialogue = dialogue_create_system();
dialogue_add("This will be replaced with/nthe actual intro dialogue", dialogue, id);
dialogue_play(dialogue, false);
key_e = false; 
ds_list_add(global.hints, "Press \"E\" to continue dialogue");
with(instance_create_layer(x, y, "Lighting", oLight_circle)) {
	paired_object = other.id; 
	color = c_teal;
	radius = 100; 
	glow = true; 
}