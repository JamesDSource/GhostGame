state = KIDSTATE.Wander;
states[KIDSTATE.Wander] = kidstate_wander; 
dir = 1;
walking_speed = 1;
priorities = ds_list_create();
prioritize[0] = oDoor; 
priority = noone; 