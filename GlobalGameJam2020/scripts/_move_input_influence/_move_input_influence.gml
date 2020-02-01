// Move Right
if (key_right && !(key_up || key_down)) {
	if (hspd < move_speed)
		hspd += accel;
		
	facing = DIR.RIGHT;
}

// Move Left
if (key_left && !(key_up || key_down)) {
	if (hspd > -move_speed)
		hspd -= accel;
		
	facing = DIR.LEFT;
}

// Move Up
if (key_up && !(key_left || key_right)) {
	if (vspd > -move_speed)
		vspd -= accel;
		
	facing = DIR.UP;
}

// Move Down
if (key_down && !(key_left || key_right)) {
	if (vspd < move_speed)
		vspd += accel;
		
	facing = DIR.DOWN;
}

// Move Up Right 
if (key_up && key_right) {
	if (vspd > -move_speed * 0.75)
		vspd -= accel;
	if (hspd < move_speed * 0.75)
		hspd += accel;
	
	facing = DIR.UP;
}

// Move Up Left
if (key_up && key_left) {
	if (vspd > -move_speed * 0.75)
		vspd -= accel;
	if (hspd > -move_speed * 0.75)
		hspd -= accel;
	
	facing = DIR.UP;
}

// Move Down Right
if (key_down && key_right) {
	if (vspd < move_speed * 0.75)
		vspd += accel;
	if (hspd < move_speed * 0.75)
		hspd += accel;
	
	facing = DIR.DOWN;
}

// Move Down Left
if (key_down && key_left) {
	if (vspd < move_speed * 0.75)
		vspd += accel;
	if (hspd > -move_speed * 0.75)
		hspd -= accel;
	
	facing = DIR.LEFT;
}