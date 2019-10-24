#region movement
	var vDir = key_down - key_up; 
	var hDir = key_right - key_left;
	var vAcc = FLOATACC;
	var hAcc = FLOATACC;
	if(vDir == 0) vAcc = FLOATDECELL;
	if(hDir == 0) hAcc = FLOATDECELL;
	vsp = approach(vsp, vDir * FLOATMAXSPEED, vAcc); 
	hsp = approach(hsp, hDir * FLOATMAXSPEED, hAcc); 
	if(place_meeting(x + hsp, y, oGhost_solid)) {
		while(!place_meeting(x + sign(hsp), y, oGhost_solid)) x += sign(hsp); 
		hsp = 0; 
	}
	if(place_meeting(x, y + vsp, oGhost_solid)) {
		while(!place_meeting(x, y + sign(vsp), oGhost_solid)) y += sign(vsp);
		vsp = 0; 
	}
	if(hsp != 0) {
		target_xscale = sign(hsp);
		current_animation = PLAYERANIMATIONS.Float;
	}
	else current_animation = PLAYERANIMATIONS.Idle; 
	x += hsp;
	y += vsp; 
#endregion
#region interactables
	with(oPickup) {
		if(picked_up) other.can_select = false;
		else other.can_select = true;
	}
	if(can_select) {
		var rad = 45;
		var collision_list = ds_list_create(); 
		var instances = collision_circle_list(x, y, rad, oInteractable, false, true, collision_list, true);
		if(instances > 0) {
			for(var i = ds_list_size(collision_list)-1; i >= 0; i--) {
				with(collision_list[| i]) if(can_select) {
					other.object_selected = id;
					break;
				}
			}
		}
		else object_selected = noone; 
		ds_list_destroy(collision_list);
		if(object_selected != noone && key_interact) with(object_selected) {
			event_user(0);
		}
	}
	else {
		object_selected = noone;
	}
	with(oInteractable) {
		if(id == other.object_selected) selected = true;
		else selected = false;
	}
#endregion
var layer_id = layer_get_id("Ghost");
if(layer != layer_id) layer = layer_id;