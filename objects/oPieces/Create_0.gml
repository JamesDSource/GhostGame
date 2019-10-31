dir = irandom_range(0, 180);
image_angle = irandom_range(0, 360); 
spd = 3;
vsp = lengthdir_y(spd, dir);
hsp = lengthdir_x(spd, dir);
solids[1] = oDoor; 
solids[0] = oSolid;
alarm[0] = room_speed * irandom_range(5, 30); 