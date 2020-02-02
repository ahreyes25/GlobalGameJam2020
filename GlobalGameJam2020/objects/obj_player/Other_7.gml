switch (state) {
	case player_state_roll:
		state = player_state_idle;
		path_end_all();
		break;
}