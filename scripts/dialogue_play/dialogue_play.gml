/// @desc dialogue_play(dialogueid, automatic)
/// @arg dialogueid to be played
/// @arg automatic dialogue scrolling
if(!instance_exists(oDialogue_system))
{
	with(instance_create_layer(0,0,"Above",oDialogue_system))
	{
		automatic = argument[1]; 
		dialogue = argument[0]; 
		event_user(0);
	}
}