image_speed = image_spd_base;

// Replace Color Instead of Blending It
if (color_replace) {
	shader_set(shdr_solid_color);
	
	var _color_array = [
		color_get_red(color),
		color_get_green(color),
		color_get_blue(color)
	];
	shader_set_uniform_f_array(u_color, _color_array);
	shader_set_uniform_f(u_alpha, alpha);
	draw_self();
	shader_reset();
}
else 
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);