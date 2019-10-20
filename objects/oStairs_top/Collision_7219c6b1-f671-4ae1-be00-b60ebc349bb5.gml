with(other) {
	if(state != KIDSTATE.Stairs) {
		state = KIDSTATE.Stairs;
		stair_direction = 1;
		stair_path_index = other.stair_path;
	}
}