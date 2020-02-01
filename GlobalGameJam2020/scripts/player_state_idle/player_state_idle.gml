/// @description	player_state_idle

can_be_hurt = true;

apply_friction();
clipping_check();
face_object_four_directions(cursor);

// State Transitions
player_state_check_run();