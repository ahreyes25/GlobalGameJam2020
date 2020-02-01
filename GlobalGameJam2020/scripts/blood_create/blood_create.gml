/// @param x
/// @param y
/// @param n
/// @param depth*

#region Arguments
var _x		= argument[0];
var _y		= argument[1];
var _n		= argument[2];

if (argument_count == 4)
	var _depth = argument[3];
else
	var _depth = undefined;
#endregion

#region Exit Conditions
if (_n <= 0)
	return;
#endregion

repeat (_n) {
	var _blood = instance_create_layer(_x + random_range(-3, 3), _y + random_range(-5, 5), "Instances", obj_blood);
	_blood.sprite_index = spr_part_blood;
	
	if (defined(_depth))
		_blood.depth = _depth;
}