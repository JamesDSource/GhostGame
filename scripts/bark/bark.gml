/// @desc bark(line)
/// @arg line to bark
var dialogue  = dialogue_create_system();
dialogue_add(argument[0], dialogue, id);
dialogue_play(dialogue, true);
ds_queue_destroy(dialogue); 