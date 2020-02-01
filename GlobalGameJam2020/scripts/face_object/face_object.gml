/// @param id*
/// @param target

#region Arguments
if (argument_count == 2) {
	var _obj	= argument[0];
	var _target = argument[1];
}
else {
	var _obj	= id;
	var _target	= argument[0];
}
#endregion

if (exists(_obj) && exists(_target)) {
	if (_target.x > _obj.x)
		_obj.facing = DIR.RIGHT;
	else
		_obj.facing = DIR.LEFT;
}