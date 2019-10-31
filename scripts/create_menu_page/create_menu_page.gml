/// @desc create_menu_page
/// @arg ["Name1, type1, entries1...]
/// @arg ["Name2, type2, entries2...]

var max_data = 6; 
var arg;
for(var i = 0; i < argument_count; i++) arg[i] = argument[i];

var grid_id = ds_grid_create(max_data, argument_count); 

for(var i = 0; i < argument_count; i++)
{
	var array = arg[i];
	for(var xx = 0; xx < array_length_1d(array); xx++) grid_id[# xx, i] = array[xx]; 	
}

return grid_id;