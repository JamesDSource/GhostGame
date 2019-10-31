var radius = 20;
var inst = collision_circle(x, y, radius, oKid, false, true); 
if(inst != noone && inst.anxiety_level != ANXIETY.Terrified && carried_by == noone) {
	carried_by = inst;
	with(carried_by) {
		state = KIDSTATE.Steal;
		has_idol = true;
	}
}
if(carried_by != noone) {
	x = carried_by.x;
	y = carried_by.y - carried_by.sprite_yoffset;
	image_xscale = -carried_by.image_xscale;
	if(carried_by.anxiety_level == ANXIETY.Terrified) {
		carried_by = noone; 
		ystart = y; 
	}
}
else {
	y = ystart + wave(-10, 10, 3, 0);	
}