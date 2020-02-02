if (keyboard_check(vk_shift)) {
	if (keyboard_check_pressed(ord("R"))) 
		reset_level();
	
	if (keyboard_check_pressed(vk_escape))
		game_end();
	
	if (keyboard_check_pressed(vk_f5))
		window_set_fullscreen(!window_get_fullscreen());
	
	if (keyboard_check(vk_shift)) {
		if (keyboard_check_pressed(ord("T"))) {
			automate_testing = true;
			alarm[0] = 1;
		}
	}
}