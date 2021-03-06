if (!exists(target))
	return;
	
camera_cull();

// Move
if (mp_grid_path(MP_GRID, path, x, y, target.x, target.y, true)) {
	path_start(path, 0, path_action_stop, true);
}
path_speed = move_speed;

// Die
if (life <= 0) {
	instance_destroy();
	camera_set_screen_shake();
	return
}

if (exists(obj_player) && obj_player.state == player_state_cry)
	visible = false;
	
audio_emitter_position(sfx_emitter, x, y, 0)