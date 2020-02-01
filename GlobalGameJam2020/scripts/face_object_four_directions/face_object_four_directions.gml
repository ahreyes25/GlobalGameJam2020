/// @param from_object_inst*
/// @param to_object_inst

#region Arguments
if (argument_count == 2) {
	var _from	= argument[0];
	var _to		= argument[1];
}
else {
	var _from	= id;
	var _to		= argument[0];
}
#endregion

// Exit If Owner Doesnt Have Facing Variable
if (!variable_instance_exists(_from, "facing"))
	return;

var _dir = point_direction(_from.x, _from.y, _to.x, _to.y);

if (_dir > 45 && _dir < 135)
	_from.facing = DIR.UP;
else if (_dir > 135 && _dir < 225)
	_from.facing = DIR.LEFT;
else if (_dir > 225 && _dir < 315)
	_from.facing = DIR.DOWN;
else
	_from.facing = DIR.RIGHT;