/// @description Continues dialogue
/// @description Continues the dialogue
var txt = ds_queue_dequeue(dialogue);
if(is_undefined(txt)) instance_destroy();
else
{
	// setting properties
	color = txt[? "color"];
	scale = txt[? "scale"];
	obj = txt[? "object"];
	shadow_color = txt[? "background color"]; 
	message = txt[? "text"];
	time_between_letters = txt[? "speed"]; 
	// resetting 
	done = false;
	alarm[0] = time_between_letters;
	iteration = 1; 
	for(var i = 0; i < array_length_1d(message); i++) message[i] = ""; 
	ds_map_destroy(txt);
}