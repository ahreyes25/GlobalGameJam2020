//ds_grid_draw(GRID, 10, 10, 10);

// Draw Robot GUI
if (exists(obj_robot)) {
	var _x1 = 50;
	var _y1 = 20;
	var _bar_length = 200;
	var _bar_height = 5;
	var _bar_space	= 5;
	
	var _colors = [
		make_color_rgb(190, 74, 47),	// shield color
		make_color_rgb(61, 137, 71),	// glass color
		make_color_rgb(99, 198, 77),	// battery color
		make_color_rgb(89, 104, 134),	// motor color
		make_color_rgb(228, 166, 114),	// nav color
		make_color_rgb(240, 177, 27),	// light color
	];
	
	var _values = [
		obj_robot.shields_health,
		obj_robot.glass_health,
		obj_robot.battery_health,
		obj_robot.motor_health,
		obj_robot.nav_health,
		obj_robot.light_health,
	];
	
	for (var i = 0; i < 6; i++)
		draw_healthbar(_x1, _y1 + (i * (_bar_space + _bar_height)), _x1 + _bar_length, _y1 + (i * (_bar_space + _bar_height)) + _bar_height, _values[i], c_black, _colors[i], _colors[i], 0, true, true);
}