/// @description	player_state_check_idle

var _no_key	= !key_down && !key_up && !key_left && !key_right;

if (_no_key) {
	player_state_transition(id, state, player_state_idle, 0);
	return true;
}
return false;