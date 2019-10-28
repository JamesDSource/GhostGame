/// @desc dialogue_play(dialogueid, automatic)
/// @arg dialogueid to be played
/// @arg automatic dialogue scrolling
var inst = instance_create_layer(0,0,"Above",oDialogue_system);
with(inst)
{
	automatic = argument[1]; 
	dialogue = argument[0]; 
	event_user(0);
}
return inst; 