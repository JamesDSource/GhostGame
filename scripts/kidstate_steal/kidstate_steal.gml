#region movement
	hsp = (walking_speed + 0.5) * dir;
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
#region stairs
	if(place_meeting(x, y, oStairs_bottom) && floor_level < 0) {
		state = KIDSTATE.Stairs; 
	}
	else if(place_meeting(x, y, oStairs_top) && floor_level > 0) {
		state = KIDSTATE.Stairs;
	}
	else if(floor_level == 0) {
		dir = -1;
	}
#endregion
#region anxiety
	// hearing
	var noise = collision_circle(x, y, hearing_radius, oNoise, false, true);
	if(noise != noone && scare_timer[noise.noise_type] <= 0) {
		noise_type = noise.noise_type; 
		noise_id = noise;
		time = 0;
		state = KIDSTATE.Startled;
	}
	if(anxiety_level == ANXIETY.Terrified) {
		has_idol = false; 
		flee = true; 
		state = KIDSTATE.RunAway;
	}
#endregion
// animations
current_animation = KIDANIMATIONS.Walk; 
change_xscale(dir); 