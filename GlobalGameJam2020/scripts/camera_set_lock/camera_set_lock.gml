/// @param xy_array
/// @param time*

var _camera		= camera_get_current();
var _coords		= argument[0];
var _time		= (argument_count == 2) ? argument[1] : -1;

_camera.lock_x		= _coords[0];
_camera.lock_y		= _coords[1];
_camera.lock_time_x	= _time;
_camera.lock_time_y	= _time;