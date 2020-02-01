if (!exists(target))
	return;

// Move
if (mp_grid_path(MP_GRID, path, x, y, target.x, target.y, true)) {
	path_start(path, 0, path_action_stop, true);
}
path_speed = move_speed;