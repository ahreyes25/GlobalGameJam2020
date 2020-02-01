/// Call In Instances Begin Step

if (defined(state) && defined(previous_state) && state != previous_state && !ran_exit_state) {
	var _script = asset_get_index(string(script_get_name(previous_state)) + "_exit");
	if (defined(_script)) {
		script_execute(_script);
		ran_exit_state = true;
	}
}