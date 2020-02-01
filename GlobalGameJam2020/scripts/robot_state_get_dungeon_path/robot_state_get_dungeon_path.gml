if (!defined(target))
	target = obj_end.id;

if (path_get_number(dungeon_path) == 0)
	mp_grid_path(MP_GRID, dungeon_path, x, y, target.x, target.y, true);
	
state = robot_state_get_next_path;