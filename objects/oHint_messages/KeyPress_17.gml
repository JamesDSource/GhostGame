if(ds_list_find_index(global.hints, stat_hint) != -1){
	ds_list_delete(global.hints, ds_list_find_index(global.hints, stat_hint));
	ds_list_add(global.hints, stat_close_hint); 
}
else if(ds_list_find_index(global.hints, stat_close_hint) != -1) {
	ds_list_delete(global.hints, ds_list_find_index(global.hints, stat_close_hint));
}