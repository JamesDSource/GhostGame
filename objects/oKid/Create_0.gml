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
floor_level = 0; 

info = ds_map_create();
ds_map_add(info, "name", "Name");