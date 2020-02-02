/// @param x
/// @param y
/// @param owner
/// @param scale
/// @param alpha
/// @param flicker?
/// @param flicker_amount


var _x				= argument0;
var _y				= argument1;
var _owner			= argument2;
var _scale			= argument3;
var _alpha			= argument4;
var _flicker		= argument5;
var _flicker_amount	= argument6;

var _light				= instance_create_layer(_x, _y, "Controllers", obj_circle_light);
_light.owner			= _owner;
_light.scale			= _scale;
_light.alpha			= _alpha;
_light.flicker			= _flicker;
_light.flicker_amount	= _flicker_amount;
_light.flicker_scale	= _scale;

return _light;