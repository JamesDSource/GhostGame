// input
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_float_switch = keyboard_check_pressed(vk_shift); 
key_interact = keyboard_check_pressed(ord("E"));
key_jump = keyboard_check_pressed(vk_space); 
// states
script_execute(states[state]); 
// animation
change_xscale(target_xscale);
// selecting objects to interact with
var rad = 30;
var collision_list = ds_list_create(); 
var instances = collision_circle_list(x, y, rad, oInteractable, false, true, collision_list, true);
if(instances > 0) with(collision_list[| 0]) {
	selected = true;
	other.object_selected = id;
}
else object_selected = noone; 
ds_list_destroy(collision_list);
if(object_selected != noone && key_interact) with(object_selected) {
	event_user(0);
}