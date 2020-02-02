/// @description	Create obj_animate_object
///					This object is created simply to animate a sprite x times, and then destroys itself.

/// @param x
/// @param y
/// @param sprite_index
/// @param depth
/// @param image_xscale
/// @param owner
/// @param alpha_start
/// @param fade_speed
/// @param delay
/// @param image_color
/// @param image_angle
/// @param loop_anim?
/// @param stick?
/// @param image_index
/// @param state_bind*

#region Arguments
var _x		= argument[0];
var _y		= argument[1];
var _sprite	= argument[2];
var _depth	= argument[3];
var _scale	= argument[4];
var _owner	= argument[5];
var _alpha  = argument[6];
var _fade	= argument[7];
var _delay	= argument[8];
var _color	= argument[9];
var _angle	= argument[10];
var _loop	= argument[11];
var _stick	= argument[12];
var _image	= argument[13];

if (argument_count == 15)
	var _state = argument[14];
else
	var _state = undefined;
#endregion
	
var _fade_out			= instance_create_layer(_x, _y, "Instances", obj_fadeout_object);
_fade_out.sprite_index	= _sprite;
_fade_out.image_xscale	= _scale;
_fade_out.owner			= _owner;
_fade_out.depth			= _depth;
_fade_out.alpha			= _alpha;
_fade_out.fade_speed	= _fade;
_fade_out.image_angle	= _angle;
_fade_out.loop			= _loop;
_fade_out.stick			= _stick;

// Image Index
if (defined(_image))
	_fade_out.image_index = _image;
else
	_fade_out.image_index = 0;

// Color
_fade_out.color			= _color;
if (defined(_color))
	_fade_out.color_replace	= true;
	
// Delay
if (_delay > 0)
	_fade_out.delay	= _delay;
else
	_fade_out.delay = 1;
_fade_out.alarm[0] = _fade_out.delay;

// State Bind
if (defined(_state))
	_fade_out.state_bind = _state;
	
return _fade_out;