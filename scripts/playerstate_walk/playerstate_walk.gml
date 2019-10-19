#region movement and collision
	var hDir = key_right - key_left;
	var Acc = WALKACC;
	if(hDir == 0) Acc = WALKDECELL;
	hsp = approach(hsp, hDir * WALKMAXSPEED, Acc);
	if(key_jump) {
		vsp -= JUMPSPEED;
	}
	vsp += GRAVITY;
	for(var i = 0; i < array_length_1d(solid_list); i++) {
		if(place_meeting(x, y + vsp, solid_list[i])) {
			while(!place_meeting(x, y + sign(vsp), solid_list[i])) y += sign(vsp);
			vsp = 0;
		}
		if(place_meeting(x + hsp, y, solid_list[i])) {
			while(!place_meeting(x + sign(hsp), y, solid_list[i])) x += sign(hsp);
			hsp = 0;
		}
		push_out(solid_list[i]); 
	}
	if(hsp != 0) target_xscale = sign(hsp);
	x += hsp;
	y += vsp;
#endregion
var layer_id = layer_get_id("Instances");
if(layer != layer_id) layer = layer_id;
if(key_float_switch) {
	state = PLAYERSTATE.Float;
}