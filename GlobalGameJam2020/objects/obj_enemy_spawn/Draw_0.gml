if (flashing)
	shader_set(shdr_flash_white);
draw_self();
if (flashing)
	shader_reset();