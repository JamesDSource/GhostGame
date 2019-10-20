
if(!started_stairs) {
	path_start(stair_path_index, walking_speed * stair_direction, path_action_stop, true);
	started_stairs = true;
	var point_path_lookat;
	if(stair_direction == 1) {
		point_path_lookat = 2;
	}
	else {
		point_path_lookat = 1;
	}
	if(x > path_get_point_x(stair_path_index, point_path_lookat)) {
		stair_flip = -1; 
		show_debug_message("happening");
	}
	else stair_flip = 1;
	//ideal_angle = point_direction(x, y, path_get_point_x(stair_path_index, point_path_lookat), path_get_point_y(stair_path_index, point_path_lookat));
}
else if(path_index == -1 && started_stairs) {
	ideal_angle = 0; 
	started_stairs = false;
	dir = 0;
	while(dir == 0) dir = irandom_range(-1, 1); 
	state = KIDSTATE.Wander;
}
change_xscale(stair_flip); 
