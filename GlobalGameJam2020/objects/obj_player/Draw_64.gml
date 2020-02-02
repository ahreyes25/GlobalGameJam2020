if (state == player_state_cry) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	var _font_scale = 2;
	var _x = obj_camera.width / 2;
	var _y = obj_camera.height / 2;
	draw_text_transformed(_x, _y, "You Saved: " + string(obj_stats.points) + " Cactus...", _font_scale, _font_scale, 0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}