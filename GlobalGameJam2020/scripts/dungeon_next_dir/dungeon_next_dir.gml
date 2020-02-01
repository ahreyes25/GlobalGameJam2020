/// @param i
/// @param j
/// @param last_dir

var _i			= argument0;
var _j			= argument1;
var _last_dir	= argument2;
var _next_i		= _i;
var _next_j		= _j;
var _next_dir;

var _new_last_dir = _last_dir;
// Get Next Dir
switch (_new_last_dir) {
	case DIR.LEFT:	_next_dir = choose(DIR.DOWN, DIR.RIGHT, DIR.UP);	break;
	case DIR.RIGHT:	_next_dir = choose(DIR.LEFT, DIR.DOWN, DIR.UP);		break;
	case DIR.UP:	_next_dir = choose(DIR.LEFT, DIR.RIGHT, DIR.DOWN);	break;
	case DIR.DOWN:	_next_dir = choose(DIR.LEFT, DIR.RIGHT, DIR.UP);	break;
}

switch (_next_dir) {
	case DIR.LEFT:	_next_i--; break;
	case DIR.RIGHT:	_next_i++; break;
	case DIR.UP:	_next_j--; break;
	case DIR.DOWN:	_next_j++; break;
}

// Loop Until Not Out Of Bounds
var _loop_count = 0;
while (!in_bounds(_next_i, _next_j, GRID)) {
	_next_i			= _i;
	_next_j			= _j;
	_new_last_dir	= _last_dir;
	
	switch (_new_last_dir) {
		case DIR.LEFT:	_next_dir = choose(DIR.DOWN, DIR.RIGHT, DIR.UP);	break;
		case DIR.RIGHT:	_next_dir = choose(DIR.LEFT, DIR.DOWN, DIR.UP);		break;
		case DIR.UP:	_next_dir = choose(DIR.LEFT, DIR.RIGHT, DIR.DOWN);	break;
		case DIR.DOWN:	_next_dir = choose(DIR.LEFT, DIR.RIGHT, DIR.UP);	break;
	}
	
	switch (_next_dir) {
		case DIR.LEFT:	_next_i--; break;
		case DIR.RIGHT:	_next_i++; break;
		case DIR.UP:	_next_j--; break;
		case DIR.DOWN:	_next_j++; break;
	}
	
	_loop_count++;
	
	if (_loop_count >= 100) {
		_next_dir = irandom(3);
		break;
	}
}

// Return New next Direction
var _new_last_dir;
switch (_next_dir) {
	case DIR.LEFT:	_new_last_dir = DIR.RIGHT;	break;
	case DIR.RIGHT:	_new_last_dir = DIR.LEFT;	break;
	case DIR.UP:	_new_last_dir = DIR.DOWN;	break;
	case DIR.DOWN:	_new_last_dir = DIR.UP;		break;
}

return [_next_i, _next_j, _new_last_dir];
































