/// @description	player_state_check_run

if (key_right || key_left || key_up || key_down) {
	player_state_transition(id, state, player_state_run, 0);
	return true;
}
return false;