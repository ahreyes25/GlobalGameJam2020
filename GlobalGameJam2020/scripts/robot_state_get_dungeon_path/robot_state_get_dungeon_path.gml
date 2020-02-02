if (!defined(target))
	target = obj_end.id;

var _x = x;
var _y = y;

if (path_get_number(dungeon_path) == 0)
	mp_grid_path(MP_GRID, dungeon_path, _x, _y, target.x, target.y, true);
	
if (mp_grid_path(MP_GRID, dungeon_path, _x, _y, target.x, target.y, true))
	state = robot_state_get_next_path;
else
	reset_level();