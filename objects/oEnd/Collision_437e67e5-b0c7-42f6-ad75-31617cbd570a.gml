if(!other.out_of_game) {
	object_set_visible(other, false);
	other.out_of_game = true;
	kids_out++;
}