if (!exists(obj_cursor))
	return;

// Get Average Position of All Cursor Objects
var _cursor_xs = 0;
var _cursor_ys = 0;
var _cursor_n  = instance_number(obj_cursor);
	
if (_cursor_n > 1) {
	for (var i = 0; i < _cursor_n; i++) {
			
		var _cursor = nth_nearest_object(x, y, obj_cursor, i);
		if (defined(_cursor)) {
			_cursor_xs += _cursor.x;
			_cursor_ys += _cursor.y;
		}
	}
}
else {
	_cursor_xs = obj_cursor.x;
	_cursor_ys = obj_cursor.y;
}
	
var _cursor_avg_x	= _cursor_xs / _cursor_n;
var _cursor_avg_y	= _cursor_ys / _cursor_n;
var _cursor_weight	= 0.2;
var _cursor_diff_x	= (_cursor_avg_x - focus_target.x) * _cursor_weight;
var _cursor_diff_y	= (_cursor_avg_y - focus_target.y) * _cursor_weight;
	
x_to += _cursor_diff_x;
y_to += _cursor_diff_y;