/// @description	player_state_run

can_be_hurt = true;

move_speed	= run_speed;
move_and_collide_with_input();
clipping_check();

// State Transitions
player_state_check_idle();