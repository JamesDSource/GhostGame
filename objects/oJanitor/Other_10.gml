/// @description talk
var texts;
texts[0] = "I'm getting paid... /yright?";
texts[1] = "I /wlove cleaning why should/nI do anything else?"; 
texts[2] = "Officer.";
texts[3] = "Look at how much there is to clean.";
texts[4] = "Let those kids make a mess/nbefore scaring them away."; 
texts[5] = "Don't worry about breaking /s/ranything,/ni'll get right on it.";
texts[6] = "This makes me happy.";
texts[7] = "That old woman scares me.";
texts[8] = "Cleaning helps me hide/nmy inner demons.";
texts[9] = "I have /sa /slot of suppressed rage.";
if(dialogue_inst == noone || !instance_exists(dialogue_inst)) {
	var str = last_text; 
	while(str == last_text) str = texts[irandom_range(0, array_length_1d(texts)-1)];
	dialogue_inst = bark(str);
	last_text = str; 
}