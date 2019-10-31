if(other.info[? "trait"] == TRAIT.Leader && state == KIDSTATE.Wander) {
	dir = other.dir; 
	x += walking_speed * dir * 3;
}