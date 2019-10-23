randomize(); 
state = KIDSTATE.Wander;
states[KIDSTATE.Wander] = kidstate_wander;
states[KIDSTATE.Stairs] = kidstate_stairs; 
dir = 1;
walking_speed = 1;
hsp = 0;
vsp = 0;
stair_direction = 1;
stair_path_index = noone; 
started_stairs = false;
stair_collision = false; 
stair_flip = 1; 

#region random traits
	traits = ds_map_create();
	var running_fast = false;
	if(chance(10)) {
		running_fast = true;
		var spd_bonus = 0.5
		walking_speed += spd_bonus; 
	}
	ds_map_add(traits, "fast_runner", running_fast); 
#endregion