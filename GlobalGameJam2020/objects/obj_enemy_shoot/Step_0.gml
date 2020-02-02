if (!exists(target_move))	target_move = undefined;
if (!exists(target_shoot))	target_shoot = undefined;

if (!defined(target_move) && !defined(target_shoot))
	return;
	
camera_cull();

// Die
if (life <= 0) {
	instance_destroy();
	camera_set_screen_shake();
	return
}

script_execute(state);