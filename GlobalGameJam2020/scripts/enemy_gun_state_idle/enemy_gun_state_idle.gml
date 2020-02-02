if (defined(target_move)) {
	if (mp_grid_path(MP_GRID, path, x, y, target_move.x, target_move.y, 1)) {
		path_start(path, 0, path_action_stop, false);
		state = enemy_gun_state_move;
	}
}