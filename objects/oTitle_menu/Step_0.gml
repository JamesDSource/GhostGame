var menu = pages[page];
// inputs
menu_down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || mouse_wheel_down();
menu_up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || mouse_wheel_up();
menu_left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
menu_right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
select = keyboard_check_pressed(ord("E"));

// keyboard scrolling
var max_ = ds_grid_height(menu) - 1;
if(menu_up || menu_down)
{
	if(menu_up && index != 0) index--;
	else if(menu_up) index = max_;
	else if(menu_down && index != max_) index++;
	else if(menu_down) index = 0; 
}

//reset scale and menu_x
if(last_index != index)
{
	select_scale_constant = 1; 
	last_index = index;
	turning_point_met = false; 
}

switch(menu[# 1, index])
{
	case ELEMENTTYPE.Transfer: 
		if(select)
		{
			menu_x = offscreen_position;
			page = menu[# 2, index]; 
			index = 0; 
			select_scale_constant = 1;
		}
		break;
	case ELEMENTTYPE.Script_runner:
		if(select) script_execute(menu[# 2, index]);
		break;
	case ELEMENTTYPE.Slider:
		var value = variable_global_get(menu[# 2, index]);
		var array = menu[# 3, index];
		var min_ = array[0];
		var max_ = array[1];
		var change = menu[# 4, index];
		if(menu_right && value < max_) value += change;
		else if(menu_left && value > min_) value -= change;
		variable_global_set(menu[# 2, index], value);
		break;
	case ELEMENTTYPE.Toggle:
		var value = variable_global_get(menu[# 2, index]);
		if(menu_left || menu_right || select)
		{
			value = !value;
			variable_global_set(menu[# 2, index], value);
		}
		break;
}