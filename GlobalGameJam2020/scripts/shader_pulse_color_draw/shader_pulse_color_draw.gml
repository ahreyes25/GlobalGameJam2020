/// @description	Any object that uses the pulse_color shader needs to call this script in the draw event.

/// @param color
/// @param id*

#region Arguments
if (argument_count == 2) {
	var _color	= argument[0];
	var _obj	= argument[1];
}
else if (argument_count == 1) {
	var _obj	= id;
	var _color	= argument[0];
}
#endregion

if (_obj.pulsating) {
	shader_set(shdr_pulse_color);

var _color_array = [
		color_get_red(_color),
		color_get_green(_color),
		color_get_blue(_color)
	];

	shader_set_uniform_f_array(_obj.u_color, _color_array);
	shader_set_uniform_f(_obj.u_alpha, shader_pulse_alpha);
	
	// make sure to call shader_reset(); after this script
}