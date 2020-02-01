// Screen Flash
if (screen_flash_alpha > 0) {
	draw_set_alpha(screen_flash_alpha);
	draw_set_color(screen_flash_color);
	draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
}