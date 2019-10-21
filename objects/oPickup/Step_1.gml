event_inherited();
if(picked_up) {
	depth = oPlayer.depth -1;
	var x_;
	var y_;
	with(oPlayer) {
		x_ = x;
		y_ = y - sprite_yoffset;
	}
	x = x_;
	y = y_ - sprite_yoffset;
	if(place_meeting(x, y, oSolid)) {
		picked_up = false;
		push_out(oSolid);
	}
}
else {
	depth = depth_init; 
	vsp += GRAVITY;
	if(place_meeting(x + hsp, y, oSolid)) {
		while(!place_meeting(x + sign(hsp), y, oSolid)) x += sign(hsp);
		hsp = 0;
	}
	if(place_meeting(x, y + vsp, oSolid)) {
		while(!place_meeting(x, y + sign(vsp), oSolid)) y += sign(vsp);
		vsp = 0;
	}
	if(place_meeting(x, y +1, oSolid)) {
		var surface_friction = 0.1;
		hsp = approach(hsp, 0, surface_friction);
	}
	x += hsp;
	y += vsp; 
}