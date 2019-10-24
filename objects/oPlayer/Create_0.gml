// state
state = PLAYERSTATE.Float;
states[PLAYERSTATE.Float] = playerstate_float; 
// input
key_down = false;
key_up = false;
key_left = false;
key_right = false;
key_interact = false;
key_jump = false; 
// movement
vsp = 0;
hsp = 0;
target_xscale = image_xscale; 
#macro FLOATACC 0.3
#macro FLOATDECELL 0.1
#macro FLOATMAXSPEED 3
// interactions
solid_list[1] = oDoor;
solid_list[0] = oSolid;
object_selected = noone;
interact_hint = ""; 
drop_hint = "";
throw_hint = ""; 
can_select = true; 
// light
with(instance_create_layer(x, y, "Lighting", oLight_circle)) {
	paired_object = other.id; 
	color = c_teal;
	radius = 25; 
	glow = true; 
}
// animations
set_animation = -1;
current_animation = PLAYERANIMATIONS.Idle;
animations[PLAYERANIMATIONS.Float] = "float";
animations[PLAYERANIMATIONS.Idle] = "idle"; 
skeleton_animation_mix("idle", "float", 0.2);
skeleton_animation_mix("float", "idle", 0.2);


dialogue = dialogue_create_system();
