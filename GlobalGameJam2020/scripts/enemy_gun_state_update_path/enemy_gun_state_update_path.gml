path_end();
path_clear_points(path);
path_position = 0;
mp_grid_path(MP_GRID, path, x, y, target_move.x, target_move.y, true);
state = enemy_gun_state_move;
path_start(path, 0, path_action_stop, true);
alarm[1] = 60 * 5;