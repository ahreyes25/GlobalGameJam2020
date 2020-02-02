// Draw Hazard
var _x = 32;
var _y = 26;
var _thresh = 99;
var _scale = 0.25;
var _space = 15;
var _space_x = 20;
	
if (glass_health <= _thresh)
	draw_sprite_ext(spr_hazard,		image_index, _x - _space_x, _y,	_scale, _scale, 0, c_white, 1);
draw_sprite_ext(spr_glass_icon,		0, _x, _y,	_scale, _scale, 0, c_white, 1);
	
if (plant_health <= _thresh)
	draw_sprite_ext(spr_hazard,		image_index, _x - _space_x, _y + _space,	_scale, _scale, 0, c_white, 1);
draw_sprite_ext(spr_plant_icon,		0, _x, _y + _space,	_scale, _scale, 0, c_white, 1);

if (battery_health <= _thresh)
	draw_sprite_ext(spr_hazard,		image_index, _x - _space_x, _y + _space * 2,	_scale, _scale, 0, c_white, 1);
draw_sprite_ext(spr_batter_icon,	0, _x, _y + _space * 2,	_scale, _scale, 0, c_white, 1);

if (motor_health <= _thresh)
	draw_sprite_ext(spr_hazard,		image_index, _x - _space_x, _y + _space * 3,	_scale, _scale, 0, c_white, 1);
draw_sprite_ext(spr_motor_icon,		0, _x, _y + _space * 3,	_scale, _scale, 0, c_white, 1);

if (nav_health <= _thresh)
	draw_sprite_ext(spr_hazard,		image_index, _x - _space_x, _y + _space * 4,	_scale, _scale, 0, c_white, 1);
draw_sprite_ext(spr_nav_icon,		0, _x, _y + _space * 4,	_scale, _scale, 0, c_white, 1);

if (light_health <= _thresh)
	draw_sprite_ext(spr_hazard,		image_index, _x - _space_x, _y + _space * 5,	_scale, _scale, 0, c_white, 1);
draw_sprite_ext(spr_light_icon,		0, _x, _y +  _space * 5,	_scale, _scale, 0, c_white, 1);

// Draw Bars
var _x1 = 50;
var _y1 = 20;
var _bar_length = 100;
var _bar_height = 10;
var _bar_space	= 5;
	
var _green	= make_color_rgb(61, 137, 71);
var _red	= make_color_rgb(158, 40, 53);
	
var _values = [
	obj_robot.glass_health,
	obj_robot.plant_health,
	obj_robot.battery_health,
	obj_robot.motor_health,
	obj_robot.nav_health,
	obj_robot.light_health,
];
	
for (var i = 0; i < 6; i++)
	draw_healthbar(_x1, _y1 + (i * (_bar_space + _bar_height)), _x1 + _bar_length, _y1 + (i * (_bar_space + _bar_height)) + _bar_height, _values[i], c_black, _red, _green, 0, true, true);