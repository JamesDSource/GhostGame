#region movement
	if(priority == noone) {
		var hsp = dir * walking_speed;
		if(place_meeting(x + hsp, y, oDoor)) {
			var door_inst = instance_place(x + hsp, y, oDoor);
			with(door_inst) {
				if(!opened) event_user(0);
			}
		}
		else if(place_meeting(x + hsp, y, oSolid)) {
			dir *= -1;
		}
		x += hsp;
	}
#endregion
#region priority cheacking 
	if(priority == noone) {
		for(var i = 0; i < array_length_1d(prioritize); i++) {
			var collision_list = ds_list_create();
			var vision_x = 300 * dir; 
			var vision_y = 30;
			collision_ellipse_list(x, y, x + vision_x, y + vision_y, prioritize[i], false, true, collision_list, false);
			for(var ii = 0; ii < ds_list_size(collision_list); ii++) {
				var inst = collision_list[| ii];
				if(!collision_line(x, y, inst.x, inst.y, oSolid, false, true)) {
					ds_list_add(priorities, inst);
				}
			}
			ds_list_destroy(collision_list);
		}
		//var index = irandom_range(0, ds_list_size(priorities) -1);
		//priority = ds_list_find_index(priorities, index); 
		ds_list_clear(priorities);
	}
#endregion