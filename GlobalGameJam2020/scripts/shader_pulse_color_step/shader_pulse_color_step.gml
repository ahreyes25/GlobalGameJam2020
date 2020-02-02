/// @description	Any object that uses the pulse_color shader needs to call this script in the step event.

/// @param id*

#region Arguments
if (argument_count == 1)
	var _obj = argument[0];
else
	var _obj = id;
#endregion

if (!exists(_obj))
	return;
	
if (_obj.pulsating) {
	if (_obj.shader_pulse_alpha < 1)
		_obj.shader_pulse_alpha += _obj.shader_pulse_speed;
	else
		_obj.shader_pulse_alpha = 0;
}