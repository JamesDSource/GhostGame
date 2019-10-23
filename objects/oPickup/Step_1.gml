// input
key_drop = keyboard_check_pressed(ord("E")); 
if(picked_up) {
	depth = oPlayer.depth -1;
	var x_;
	var y_;
	with(oPlayer) {
		x_ = x;
		y_ = y - sprite_yoffset;
	}
	x = x_ - (sprite_width - sprite_xoffset)/2;
	y = y_ - sprite_height;
	for(var i = 0; i < array_length_1d(solids); i++) {
		if(place_meeting(x, y, solids[i])) {
			event_user(0);
			push_out(solids[i]);
		}
	}
	can_select = false; 
	// dropping
	if(key_drop) event_user(0); 
}
else {
	depth = depth_init; 
	vsp += GRAVITY;
	for(var i = 0; i < array_length_1d(solids); i++) {
		if(place_meeting(x + hsp, y, solids[i])) {
			while(!place_meeting(x + sign(hsp), y, solids[i])) x += sign(hsp);
			hsp = 0;
		}
		if(place_meeting(x, y + vsp, solids[i])) {
			while(!place_meeting(x, y + sign(vsp), solids[i])) y += sign(vsp);
			vsp = 0;
		}
	}
	if(place_meeting(x, y +1, oSolid)) {
		var surface_friction = 0.1;
		hsp = approach(hsp, 0, surface_friction);
	}
	x += hsp;
	y += vsp; 
	can_select = true;
}