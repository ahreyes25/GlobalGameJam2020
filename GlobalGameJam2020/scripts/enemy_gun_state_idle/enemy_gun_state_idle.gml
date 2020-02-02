// Check For Path To Move Target
if (exists(target_move) && mp_grid_path(MP_GRID, path, x, y, target_move.x, target_move.y, true)) {
	path_start(path, 0, path_action_stop, true);
	state = enemy_gun_state_move;
}
// Else, Get Random Target
else 
	target_move = nth_nearest_object(x, y, obj_rock, 3);