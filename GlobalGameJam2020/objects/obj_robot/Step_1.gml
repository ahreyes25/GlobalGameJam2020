depth_sort();

// Update Properties
move_speed	= 0.5 * (motor_health / 100);
light_scale = light_scale_base * (light_health / 100);

for (var i = 0; i < array_length_1d(lights); i++) {
	var _light = lights[i];
	
	if (i == 0) {
		_light.scale = clamp(light_scale, 3, 100);
		_light.flicker_scale = clamp(light_scale, 3, 100);
	}
	else {
		_light.scale = clamp(light_scale * 1.25, 3.25, 100);
		_light.flicker_scale = clamp(light_scale * 3.25, 1.25, 100);	
	}
}
