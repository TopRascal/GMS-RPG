/// move_state
//Direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get Length
if (xaxis == 0) && (yaxis == 0) {
	len = 0;	
} else {
	len = spd;	
}

//get speed vars
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//h collisions
if (place_meeting(x+hspd, y, obj_wall)) {
	while (!place_meeting(x+sign(hpsd), y, obj_wall))	{
		x+=sign(hspd);
	}
	hspd = 0;
}

x += hspd;

//v collisions
if (place_meeting(x, y+vspd, obj_wall)) {
	while (!place_meeting(x, y+sign(vpsd), obj_wall))	{
		y += sign(vspd);
	}
	vspd = 0;
}

y += vspd;