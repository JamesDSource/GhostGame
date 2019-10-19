if(paired_object != noone && instance_exists(paired_object)) {
	x = paired_object.x;
	y = paired_object.y;
}
else if(paired_object != noone && !instance_exists(paired_object)) instance_destroy();