/// @param size*
/// @param duration*

var _camera = camera_get_current();

var _screen_shake_size = (argument_count >= 1) ? argument[0] : _camera.screen_shake_size_base;
var _screen_shake_time = (argument_count == 2) ? argument[1] : _camera.screen_shake_time_base;

_camera.screen_shake_size						= _screen_shake_size * SHAKE_MULT;
_camera.screen_shake_time						= _screen_shake_time;
_camera.alarm[_camera.alarm_screen_shake_time]	= _screen_shake_time / SLOW_FACTOR;