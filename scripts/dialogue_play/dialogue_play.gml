/// @desc dialogue_play(dialogue_system)
/// @arg dialogue_system to be played
if(!instance_exists(oDialogue_system))
{
	with(instance_create_layer(0,0,"Above",oDialogue_system))
	{
		dialogue = argument[0]; 
		event_user(0);
	}
}