path_speed = move_speed;

if (path_position >= 1) {
	path_end();
	path_clear_points(path);
	path_index_current++;
	state = robot_state_idle;
	return;
}