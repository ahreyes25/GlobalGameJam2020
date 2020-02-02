if (state == player_state_cry) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	var _font_scale = 2;
	draw_text_transformed(window_get_width() / 2, window_get_height() / 2, "You Saved: " + string(obj_stats.points) + " Cactus...", _font_scale, _font_scale, 0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}