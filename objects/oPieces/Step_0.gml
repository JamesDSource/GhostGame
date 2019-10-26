vsp += GRAVITY;
for(var i = 0; i < array_length_1d(solids); i++) {
	if(place_meeting(x + hsp, y, solids[i])) {
		while(!place_meeting(x + sign(hsp), y, solids[i])) x += sign(hsp); 
		hsp = 0;
	}
	if(place_meeting(x, y + vsp, solids[i])) {
		if(place_meeting(x, y+1, solids[i])) {
			var fric = 0.5;
			hsp = approach(hsp, 0, fric);
		}
		while(!place_meeting(x, y + sign(vsp), solids[i])) y += sign(vsp);
		vsp = 0;
	}
	push_out(solids[i]);
}
x += hsp;
y += vsp;