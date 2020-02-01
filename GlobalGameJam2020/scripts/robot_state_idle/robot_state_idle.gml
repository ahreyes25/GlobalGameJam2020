// Get Target 
if (!defined(target)) {
	target = robot_get_target(id);
	mp_grid_path(GRID, dungeon_path, x, y, target.x, target.y, true);
	path_index_current = 1;
}

// Move On Small Path Segment
if (defined(target)) {
	
	path_point_x = path_get_point_x(dungeon_path, path_index_current);
	path_point_y = path_get_point_y(dungeon_path, path_index_current);
	
	if (mp_linear_path_object(path, path_point_x, path_point_y, move_speed, obj_solid)) {
		path_position = 0;
		path_start(path, 0, path_action_stop, false);
		path_speed = move_speed;
		state = robot_state_walk;
		return;
	}
	else {
		state = robot_state_stun;
		if (alarm[0] == -1)
			alarm[0] = 60;
	}
}
