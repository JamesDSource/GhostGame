if(selected) {
	flash = wave(0.0, 0.5, 1.3, 0);
	var uniform = shader_get_uniform(shSelected, "flash");
	shader_set(shSelected);
	shader_set_uniform_f(uniform, flash);
}
else flash = 0.0; 
draw_self();
shader_reset();