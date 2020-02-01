/// @param i
/// @param j
/// @param hall_width
/// @param hall_length

var _i				= argument0;
var _j				= argument1;
var _hall_width		= argument2;
var _hall_length	= argument3;

var _hall_dir = choose("horiz", "vert");

if (_hall_dir == "horiz") {
	var _end_i = _hall_length + 1;
	var _end_j = _hall_width;
	_i--;
}
else {
	var _end_i = _hall_width;
	var _end_j = _hall_length + 1;
	_j--;
}

for (var i = _i; i <_i + _end_i; i++) {
	for (var j = _j; j < _j + _end_j; j++) {
		if (in_bounds(i, j, GRID)) {
			if (ds_grid_get(GRID, i, j) == LAND.SOLID)
				SPACE++;
		}
			
		if (in_bounds(i, j, GRID))
			ds_grid_set(GRID, i, j, LAND.EMPTY);
	}
}

var _exit_i = irandom_range(_i, _i + _end_i - 1);
var _exit_j = irandom_range(_j, _j + _end_j - 1);

while (!in_bounds(_exit_i, _exit_j, GRID)) {
	if (_exit_i >= GRID_WIDTH)		_exit_i--;
	if (_exit_i < 0)				_exit_i++;
	if (_exit_j >= GRID_HEIGHT)		_exit_j--;
	if (_exit_j < 0)				_exit_j++;
}

if (in_bounds(_exit_i, _exit_j, GRID)) {
	if (ds_grid_get(GRID, _exit_i, _exit_j) == LAND.SOLID)
		SPACE++;
}

if (in_bounds(_exit_i, _exit_j, GRID))
	ds_grid_set(GRID, _exit_i, _exit_j, LAND.EMPTY);
	
return [_exit_i, _exit_j];