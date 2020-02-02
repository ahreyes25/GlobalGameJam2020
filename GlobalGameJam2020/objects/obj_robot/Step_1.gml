depth_sort();

// Update Properties
move_speed	= 0.5 * (motor_health / 100);
light_scale = light_scale_base * (light_health / 100);

for (var i = 0; i < array_length_1d(lights); i++) {
	var _light = lights[i];
	
	if (i == 0) {
		_light.scale = light_scale;
		_light.flicker_scale = light_scale;
	}
	else {
		_light.scale = light_scale * 1.25;
		_light.flicker_scale = light_scale * 1.25;	
	}
}
