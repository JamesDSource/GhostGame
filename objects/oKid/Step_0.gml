// state
script_execute(states[state]);
// animation
if(set_animation != current_animation) {
	skeleton_animation_set(animations[current_animation]);
	set_animation = current_animation;	
}

tension += atmosphere;
if(tension < 25) anxiety_level = ANXIETY.Calm;
else if(tension < 50) anxiety_level = ANXIETY.OnEdge;
else if(tension < 100) anxiety_level = ANXIETY.Anxious;
else anxiety_level = ANXIETY.Terrified; 

for(var i = 0; i < array_length_1d(scare_timer); i++) {
	scare_timer[i]--; 
}