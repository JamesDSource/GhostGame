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
anxiety_level = ANXIETY.Calm; 
// name
var names = file_text_open_read(NAMESFILE);
repeat(irandom_range(0, 212)) file_text_readln(names);
var name = file_text_read_string(names);
file_text_close(names);
var trait = kid_get_trait(); 

info = ds_map_create();
ds_map_add(info, "name", name);
ds_map_add(info, "trait", trait); 

if(info[? "trait"] == TRAIT.Coward) anxiety_level = ANXIETY.OnEdge;