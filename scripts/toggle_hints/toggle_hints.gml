/// @desc toggle_hints(Condition, String, Hint)
/// @arg Condition
/// @arg String
/// @arg Hint
if(argument[0] && argument[1] == "") {
	ds_list_add(global.hints, argument[2]);
	return argument[2];
}
else if(!argument[0] && argument[1] != "") {
	ds_list_delete(global.hints, ds_list_find_index(global.hints, argument[2]));
	return "";
}
else return argument[1]; 