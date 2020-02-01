/// @param i
/// @param j
/// @param room_width
/// @param room_height

var _i				= argument0;
var _j				= argument1;
var _room_width		= argument2;
var _room_height	= argument3;

var _i_start = irandom_range(-_room_width  + 1,  _room_width - 1);
var _j_start = irandom_range(-_room_height + 1, _room_height - 1);
var _i_diff	 = abs(abs(_i_start) - _room_width)  + 1;
var _j_diff	 = abs(abs(_j_start) - _room_height) + 1;

for (var i = _i + _i_start; i < _i + _i_diff; i++) {
	for (var j = _j + _j_start; j < _j + _j_diff; j++) {
		if (in_bounds(i, j, GRID)) {
			if (ds_grid_get(GRID, i, j) == LAND.SOLID) {
				SPACE++;
				ds_list_add(OPEN_SPACES, [i, j]);
			}
		}
			
		if (in_bounds(i, j, GRID))
			ds_grid_set(GRID, i, j, LAND.GROUND);
	}
}

// Random Exit Point
var _exit_i = irandom_range(_i + _i_start, _i + _i_diff);
var _exit_j = irandom_range(_j + _j_start, _j + _j_diff);

while (!in_bounds(_exit_i, _exit_j, GRID)) {
	if (_exit_i >= GRID_WIDTH)		_exit_i--;
	if (_exit_i < 0)				_exit_i++;
	if (_exit_j >= GRID_HEIGHT)		_exit_j--;
	if (_exit_j < 0)				_exit_j++;
}

return [_exit_i, _exit_j];