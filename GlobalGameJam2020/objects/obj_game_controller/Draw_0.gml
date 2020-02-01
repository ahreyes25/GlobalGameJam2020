if (draw_black_surface) {
	if (!surface_exists(surface))
		surface = surface_create(surf_width, surf_height);
	
	surface_set_target(surface);
	draw_clear_alpha(c_black, 1);
	
	gpu_set_blendmode(bm_subtract);
	draw_rectangle((surf_width / 3) - UNIT_SIZE + 16, (surf_height / 3) - UNIT_SIZE + 16, (surf_width * (2/3)) + UNIT_SIZE - 16, (surf_height * (2/3)) + UNIT_SIZE - 16, false);
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
	draw_surface(surface, -surf_width / 3, -surf_height / 3);
}