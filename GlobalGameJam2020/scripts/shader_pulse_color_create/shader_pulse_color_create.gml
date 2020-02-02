/// @description	Any object that uses the pulse_color shader needs to call this script in the create event.

/// @param id*

#region Arguments
if (argument_count == 1)
	var _obj = argument[0];
else
	var _obj = id;
#endregion

_obj.u_color = shader_get_uniform(shdr_pulse_color, "u_color");
_obj.u_alpha = shader_get_uniform(shdr_pulse_color, "u_alpha");
_obj.shader_pulse_alpha = undefined;
_obj.shader_pulse_speed	= 0.01;
_obj.pulsating = true;