/// @desc dialogue_add(dialogue, message, object)
/// @arg message added to the dialogue system
/// @arg dialogue system to add to
/// @arg object to play the dialogue
var dialogue = ds_map_create();
ds_map_add(dialogue, "text", argument[0]);
ds_map_add(dialogue, "color", make_colour_rgb(255, 255, 255));
ds_map_add(dialogue, "soundFx", noone); 
ds_map_add(dialogue, "object", argument[2]); 
ds_map_add(dialogue, "scale", 1); 
ds_map_add(dialogue, "speed", 5); 
ds_map_add(dialogue, "background color", c_gray); 
ds_queue_enqueue(argument[1], dialogue); 
return dialogue; 