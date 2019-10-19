// state
state = PLAYERSTATE.Walk;
states[PLAYERSTATE.Float] = playerstate_float; 
states[PLAYERSTATE.Walk] = playerstate_walk;
// input
key_down = false;
key_up = false;
key_left = false;
key_right = false;
key_float_switch = false;
key_interact = false;
key_jump = false; 
// movement
vsp = 0;
hsp = 0;
target_xscale = 1; 
#macro FLOATACC 0.3
#macro FLOATDECELL 0.1
#macro FLOATMAXSPEED 3
#macro WALKACC 0.8
#macro WALKDECELL 0.6
#macro WALKMAXSPEED 4
#macro JUMPSPEED 6
// interactions
solid_list[1] = oDoor;
solid_list[0] = oSolid;
object_selected = noone;
// light
with(instance_create_layer(x, y, "Lighting", oLight_circle)) {
	paired_object = other.id; 
	color = c_teal;
	radius = 30; 
}