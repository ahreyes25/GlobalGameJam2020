if (abs(zoom_factor - zoom_factor_target) <= 1 && alarm_stopped(alarm_zoom_time)) {
	alarm[alarm_zoom_time] = zoom_time;
	zoom_time = undefined;
}