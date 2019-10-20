#region movement
	hsp = dir * walking_speed;
	vsp += GRAVITY;
	if(place_meeting(x + hsp, y, oDoor)) {
		var door_inst = instance_place(x + hsp, y, oDoor);
		with(door_inst) {
			if(!opened) event_user(0);
		}
	}
	else if(place_meeting(x + hsp, y, oSolid)) {
		dir *= -1;
	}
	if(place_meeting(x, y + vsp, oSolid)) {
		while(!place_meeting(x, y + sign(vsp), oSolid)) y += sign(vsp);
		vsp = 0;
	}
	x += hsp;
	y += vsp;
	push_out(oSolid); 
#endregion
change_xscale(dir); 