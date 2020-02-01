// Check If GamePad Is Plugged In
if (defined(pid))
	gamepad_plugged_in = gamepad_is_connected(pid);

if (can_act) {
	input_get();
	move_stats_update();
	audio_emitter_position(sfx_emitter, x, y, 0);
}
else 
	input_clear();

depth_sort();
state_machine_exit();