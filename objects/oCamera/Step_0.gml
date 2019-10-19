#region follow
	if(follow != noone && instance_exists(follow))
	{
		x_target = follow.x;
		y_target = follow.y; 
	}
#endregion
#region camera pos
	if(abs(x_target - x)/slow >= 0.1 || abs(y_target - y)/slow >= 0.1 || shake_remain != 0) {
		x += random_range(-shake_remain, shake_remain) + (x_target-x)/slow;
		y += random_range(-shake_remain, shake_remain) + (y_target-y)/slow;
	}
	shake_remain = max(0, shake_remain-((1/shake_frames)*shake_magnitude));
	x = clamp(x, VIEWWIDTH/2, room_width - VIEWWIDTH/2);
	y = clamp(y, VIEWHEIGHT/2, room_height - VIEWHEIGHT/2); 
	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	camera_set_view_mat(cam,vm);
#endregion