/// @param x
/// @param time*

var _camera		= camera_get_current();
var _x			= argument[0];
var _time		= (argument_count == 2) ? argument[1] : -1;

_camera.lock_x		= _x;
_camera.lock_time_x	= _time;