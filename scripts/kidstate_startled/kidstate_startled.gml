var temp_dir;
if(x > noise_x) temp_dir = -1;
else temp_dir = 1;
change_xscale(temp_dir);

if(time == 0) {
	switch(noise_type) {
		case NOISETYPE.Door:
			tension += 10;
			atmosphere += 0.001;
			break;
		case NOISETYPE.Break:
			tension += 15;
			atmosphere += 0.003;
			break; 
	}
	current_animation = KIDANIMATIONS.Idle; 
	noise_x = noise_id.x;
	scared_count[noise_type]++; 
	var barks;
	barks[0] = "What was that?";
	barks[1] = "I don't know anymore.";
	barks[2] = "Scary..."; 
	barks[3] = "What just happened?"
	barks[4] = "...";
	barks[5] = "!"; 
	barks[6] = "What?"; 
	barks[7] = "Huh?" 
	bark(barks[irandom_range(0, array_length_1d(barks)-1)]);
}

time++;
if(time >= TIMESCARED) {
	scare_timer[noise_type] = DEFAULTTIME * scared_count[noise_type]; 
	if(info[? "trait"] == TRAIT.Coward) dir = temp_dir * -1;
	else if(info[? "trait"] == TRAIT.Inquisitive) dir = temp_dir; 
	if(has_idol) state = KIDSTATE.Steal; 
	else state = KIDSTATE.Wander;
}