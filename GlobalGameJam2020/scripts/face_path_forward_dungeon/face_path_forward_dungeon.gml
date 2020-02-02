/// @description	Always Face Direction Moving On Path

with (obj_robot) {
	if (path_index_current + 1 <= path_get_number(dungeon_path) - 1) {
		var _x = path_get_x(dungeon_path, path_index_current + 1);
	
		if (_x > x)
			facing = DIR.RIGHT;
		else
			facing = DIR.LEFT;
	}
}