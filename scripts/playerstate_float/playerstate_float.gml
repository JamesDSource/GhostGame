#region movement
	var vDir = key_down - key_up; 
	var hDir = key_right - key_left;
	var vAcc = FLOATACC;
	var hAcc = FLOATACC;
	if(vDir == 0) vAcc = FLOATDECELL;
	if(hDir == 0) hAcc = FLOATDECELL;
	vsp = approach(vsp, vDir * FLOATMAXSPEED, vAcc); 
	hsp = approach(hsp, hDir * FLOATMAXSPEED, hAcc); 
	if(hsp != 0) {
		target_xscale = sign(hsp);
		current_animation = PLAYERANIMATIONS.Float;
	}
	else current_animation = PLAYERANIMATIONS.Idle; 
	x += hsp;
	y += vsp; 
#endregion
var layer_id = layer_get_id("Ghost");
if(layer != layer_id) layer = layer_id;