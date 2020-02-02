//ds_grid_draw(GRID, 10, 10, 10);

#region Draw Robot GUI
if (exists(obj_robot)) {
	var _x1 = 50;
	var _y1 = 20;
	var _bar_length = 200;
	var _bar_height = 5;
	var _bar_space	= 2;
	
	var _colors = [
		make_color_rgb(140, 150, 179),	// glass color
		make_color_rgb(61, 137, 71),	// plant color
		make_color_rgb(99, 198, 77),	// battery color
		make_color_rgb(89, 104, 134),	// motor color
		make_color_rgb(228, 166, 114),	// nav color
		make_color_rgb(240, 177, 27),	// light color
	];
	
	var _values = [
		obj_robot.glass_health,
		obj_robot.plant_health,
		obj_robot.battery_health,
		obj_robot.motor_health,
		obj_robot.nav_health,
		obj_robot.light_health,
	];
	
	for (var i = 0; i < 6; i++)
		draw_healthbar(_x1, _y1 + (i * (_bar_space + _bar_height)), _x1 + _bar_length, _y1 + (i * (_bar_space + _bar_height)) + _bar_height, _values[i], c_black, _colors[i], _colors[i], 0, true, true);
}
#endregion

#region Draw Arrow To Goal
if (exists(obj_player))
	var _dir = point_direction(obj_player.x, obj_player.y, obj_end.x, obj_end.y);
else
	var _dir = 0;	

var _x = obj_camera.width - 64;

draw_sprite_ext(spr_compass, 0, _x, 64, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_goal_arrow, 0, _x, 64, 1, 1, _dir, c_white, 1);
#endregion