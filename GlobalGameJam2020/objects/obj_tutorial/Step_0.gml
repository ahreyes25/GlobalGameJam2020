if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left)) {
	room_goto_next();
	audio_stop_sound(sfx_music_menu);
}