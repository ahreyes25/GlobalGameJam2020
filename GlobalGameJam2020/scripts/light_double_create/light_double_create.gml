/// @param x
/// @param y
/// @param scale1*
/// @param scale2*

var _x		= argument[0];
var _y		= argument[1];
var _scale1 = (argument_count >= 3) ? argument[2] : 1.0;
var _scale2	= (argument_count == 4) ? argument[3] : 1.25;

var _light1 = light_create(_x, _y, id, _scale1, 0.75, true, 0.01);
var _light2 = light_create(_x, _y, id, _scale2, 0.50, true, 0.01);

return [_light1, _light2];