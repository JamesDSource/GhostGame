// input
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_interact = keyboard_check_pressed(ord("E"));
key_jump = keyboard_check_pressed(vk_space); 
// states
script_execute(states[state]); 
// animation
change_xscale(target_xscale);
if(current_animation != set_animation) {
	skeleton_animation_set(animations[current_animation]);
	set_animation = current_animation;
}
// selecting objects to interact with
var rad = 45;
var collision_list = ds_list_create(); 
var instances = collision_circle_list(x, y, rad, oInteractable, false, true, collision_list, true);
if(instances > 0) {
	for(var i = 0; i < ds_list_size(collision_list); i++) {
		with(collision_list[| i]) if(can_select) {
			selected = true;
			other.object_selected = id;
			break;
		}
	}
}
else object_selected = noone; 
ds_list_destroy(collision_list);
if(object_selected != noone && key_interact) with(object_selected) {
	event_user(0);
}

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height); 
if(y == room_height) vsp = 0; 
// audio
audio_listener_position(x,y,0);
audio_listener_set_orientation(0,0,1000,0,0,0,1);
// hints
if(object_selected != noone && interact_hint_pos == -1) {
	var hint = "Press \"E\" to interact";
	ds_list_add(global.hints, hint);
	interact_hint_pos = ds_list_find_index(global.hints, hint); 
}
else if(object_selected == noone && interact_hint_pos != -1) {
	ds_list_delete(global.hints, interact_hint_pos);
	interact_hint_pos = -1; 
}