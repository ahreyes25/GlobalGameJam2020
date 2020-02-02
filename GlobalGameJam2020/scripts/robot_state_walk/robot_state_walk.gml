if (current_frame() == 4 || battery_health <= 0)
	path_speed = 0;
else
	path_speed = move_speed;

if (path_position >= 1) {
	path_end();
	path_clear_points(path);
	state = robot_state_get_next_path;
	return;
}