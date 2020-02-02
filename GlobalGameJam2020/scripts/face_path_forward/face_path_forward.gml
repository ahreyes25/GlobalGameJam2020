/// @description	Always Face Direction Moving On Path
/// @param object_instance*
/// @param path

#region Arguments
if (argument_count == 2) {
	var _obj  = argument[0];
	var _path = argument[1];
}
else {
	var _obj  = id;
	var _path = argument[0];	
}
#endregion

if (!exists(_obj))
	return;

with (_obj) {
	
	var _path_length = path_get_number(_path);
	var _current_path_point = floor(_path_length * path_position);

	if (_current_path_point + 1 <= _path_length - 1) {
		var _p1 = path_get_point_x(_path, _current_path_point);
		var _p2 = path_get_point_x(_path, _current_path_point + 1);
	
		if (_p2 > _p1)
			facing = DIR.RIGHT;
		else
			facing = DIR.LEFT;
	}
}