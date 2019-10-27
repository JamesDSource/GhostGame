audio_falloff_set_model(audio_falloff_exponent_distance);
// number
var kid_instances;
kid_instances[0] = noone; 
with(oKid) {
	var length = array_length_1d(kid_instances);
	if(kid_instances[0] == noone) kid_instances[0] = id;
	else kid_instances[length] = id; 
}
for(var i = 0; i < array_length_1d(kid_instances); i++) {
	with(kid_instances[i]) number = i;
}