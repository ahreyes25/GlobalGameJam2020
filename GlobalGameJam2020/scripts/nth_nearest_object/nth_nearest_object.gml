/// @param x
/// @param y
/// @param object
/// @param n

var _pointx	= argument0;
var _pointy	= argument1;
var _object	= argument2;
var _n		= argument3;

_n = min(max(1, _n), instance_number(_object));
var _list = ds_priority_create();
var _nearest = noone;

with (_object)
	ds_priority_add(_list, id, distance_to_point(_pointx, _pointy));
	
repeat (_n)
	_nearest = ds_priority_delete_min(_list);
	
ds_priority_destroy(_list);
return _nearest;