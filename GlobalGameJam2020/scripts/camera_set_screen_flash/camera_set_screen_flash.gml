/// @param flash_alpha*
/// @param flash_color*
/// @param flash_decay*

var _camera = camera_get_current();

var _alpha = (argument_count >= 1) ? argument[0] : _camera.screen_flash_alpha_base;
var _color = (argument_count >= 2) ? argument[1] : _camera.screen_flash_color_base;
var _decay = (argument_count == 3) ? argument[2] : _camera.screen_flash_decay_base;	

_camera.screen_flash_alpha = _alpha * FLASH_MULT;
_camera.screen_flash_color = _color;
_camera.screen_flash_decay = _decay;