#region movement
	hsp = dir * walking_speed;
	vsp += GRAVITY;
	if(place_meeting(x + hsp, y, oGate) && dir == -1) {
		dir *= -1; 	
	}
	else if(place_meeting(x + hsp, y, oDoor)) {
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
	if(place_meeting(x, y, oStairs) && !stair_collision) {
		stair_collision = true;
		var take_stairs;
		if((place_meeting(x,y,oStairs_bottom) && up_preferance)||(place_meeting(x,y,oStairs_top) && !up_preferance)) take_stairs = chance(80);
		else take_stairs = chance(35);
		if(take_stairs) state = KIDSTATE.Stairs; 
	}
	else if(!place_meeting(x, y, oStairs) && stair_collision) {
		stair_collision = false;
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
		flee = true; 
		state = KIDSTATE.RunAway;
	}
#endregion
// animation
current_animation = KIDANIMATIONS.Walk; 
change_xscale(dir); 