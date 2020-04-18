if (room != rm_title && room != rm_tutorial) {
	audio_stop_all();
	audio_play_sound(choose(sfx_music_main, sfx_music_main_2), 0, 1);
}
else if (room != rm_tutorial) {
	audio_stop_all();
	audio_play_sound(sfx_music_menu, 0, 0);
}