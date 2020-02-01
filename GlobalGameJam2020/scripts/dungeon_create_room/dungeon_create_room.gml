/// @param i
/// @param j
/// @param room_width
/// @param room_height

var _i				= argument0;
var _j				= argument1;
var _room_width		= argument2;
var _room_height	= argument3;

for (var i = _i; i < _i + _room_width; i++) {
	for (var j = _j; j < _j + _room_height; j++) {
		if (in_bounds(i, j, GRID)) {
			if (ds_grid_get(GRID, i, j) == LAND.SOLID) {
				SPACE++;
				ds_list_add(OPEN_SPACES, [i, j]);
			}
		}
			
		if (in_bounds(i, j, GRID))
			ds_grid_set(GRID, i, j, LAND.EMPTY);
	}
}

// Random Exit Point
var _exit_side = choose("left", "right", "top", "bottom");
var _exit_i;
var _exit_j;

switch (_exit_side) {
	case "left":
		_exit_i = _i;
		_exit_j = irandom_range(_j, _j + _room_height);
		break;
	
	case "right":
		_exit_i = _i + _room_width;
		_exit_j = irandom_range(_j, _j + _room_height);
		break;
	
	case "top":
		_exit_i = irandom_range(_i, _i + _room_width);
		_exit_j = _j;
		break;
	
	case "bottom":
		_exit_i = irandom_range(_i, _i + _room_width);
		_exit_j = _j + _room_height;
		break;
}

return [_exit_i, _exit_j];