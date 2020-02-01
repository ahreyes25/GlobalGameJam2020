/// @param id
/// @param previous_state
/// @param next_state
/// @param image_index
/// @param end_all_paths?*

var _id				= argument[0];
var _previous_state	= argument[1];
var _state			= argument[2];
var _image_index	= argument[3];
var _end_paths		= (argument_count == 5) ? argument[4] : false;

_id.previous_state	= _previous_state;
_id.state			= _state;
_id.ran_exit_state	= false;
_id.image_index		= _image_index;

if (_end_paths)	
	path_end_all(_id);