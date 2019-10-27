if(!started_stairs) {
	var spd = walking_speed; 
	if(flee) spd = running_speed; 
	path_start(stair_path_index, spd * stair_direction, path_action_stop, true);
	started_stairs = true;
	var point_path_lookat;
	if(stair_direction == 1) {
		point_path_lookat = 1;
	}
	else {
		point_path_lookat = 0;
	}
	if(x > path_get_point_x(stair_path_index, point_path_lookat)) {
		stair_flip = -1; 
	}
	else stair_flip = 1;
	floor_level += -stair_direction; 
}
else if(path_index == -1 && started_stairs) {
	started_stairs = false;
	dir = 0;
	while(dir == 0) dir = irandom_range(-1, 1); 
	if(!flee) state = KIDSTATE.Wander;
	else state = KIDSTATE.RunAway; 
}
change_xscale(stair_flip); 
