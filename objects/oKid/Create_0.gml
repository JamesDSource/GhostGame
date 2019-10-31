randomize(); 
state = KIDSTATE.Static;
states[KIDSTATE.Wander] = kidstate_wander;
states[KIDSTATE.Stairs] = kidstate_stairs; 
states[KIDSTATE.RunAway] = kidstate_runaway;
states[KIDSTATE.Startled] = kidstate_startled;
states[KIDSTATE.Steal] = kidstate_steal; 
states[KIDSTATE.Static] = kidstate_static; 
flee = false; 
dir = 1;
walking_speed = 0.5;
running_speed = 3;
hsp = 0;
vsp = 0;
stair_direction = 1;
stair_path_index = noone; 
started_stairs = false;
stair_collision = false; 
stair_flip = 1; 
floor_level = 0;
anxiety_level = ANXIETY.Calm;
tension = 0;
atmosphere = 0.0005;
has_idol = false; 
out_of_game = false; 
// name
var names = file_text_open_read(NAMESFILE);
repeat(irandom_range(0, 212)) file_text_readln(names);
var name = file_text_read_string(names);
file_text_close(names);
var trait = kid_get_trait(); 

info = ds_map_create();
ds_map_add(info, "name", name);
ds_map_add(info, "trait", trait); 

number = 0; 
if(info[? "trait"] == TRAIT.Coward) tension = 25;

noise_id = noone;
#macro TIMESCARED room_speed * 3
time = 0;
noise_x = 0;
hearing_radius = 300;
if(info[? "trait"] == TRAIT.GoodHearing) hearing_radius = 500;

animations[KIDANIMATIONS.Walk] = "walk";
animations[KIDANIMATIONS.Run] = "run"; 
animations[KIDANIMATIONS.Idle] = "idle"; 
skeleton_animation_set("walk");
current_animation = KIDANIMATIONS.Walk;
set_animation = KIDANIMATIONS.Walk;

scared_count[NOISETYPE.Door] = 1;
scared_count[NOISETYPE.Break] = 1;
scare_timer[NOISETYPE.Door] = 0;
scare_timer[NOISETYPE.Break] = 0;
noise_type = 0; 
#macro DEFAULTTIME room_speed * 3
if(info[? "trait"] != TRAIT.Inquisitive) up_preferance = true; 
else up_preferance = false;

if(info[? "trait"] == TRAIT.FastWalker) walking_speed = 1; 