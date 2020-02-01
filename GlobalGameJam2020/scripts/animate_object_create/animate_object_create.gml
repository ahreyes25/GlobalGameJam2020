/// @description	Create obj_animate_object
///					This object is created simply to animate a sprite x times, and then destroys itself.

/// @param x
/// @param y
/// @param sprite_index
/// @param depth
/// @param image_xscale
/// @param image_speed
/// @param owner
/// @param iterations
/// @param stick
/// @param state_bind*

#region Arguments
var _x		= argument[0];
var _y		= argument[1];
var _sprite	= argument[2];
var _depth	= argument[3];
var _scale	= argument[4];
var _speed	= argument[5];
var _owner	= argument[6];
var _iters  = argument[7];
var _stick	= argument[8];

if (argument_count == 10)
	var _state = argument[9];
else
	var _state = undefined;
#endregion
	
var _anim				= instance_create_layer(_x, _y, "Instances", obj_animate_object);
_anim.sprite_index		= _sprite;
_anim.max_iters			= _iters;
_anim.image_xscale		= _scale;
_anim.image_spd_base	= _speed;
_anim.owner				= _owner;
_anim.depth				= _depth;
_anim.stick				= _stick;
_anim.state_bind		= _state;
return _anim;