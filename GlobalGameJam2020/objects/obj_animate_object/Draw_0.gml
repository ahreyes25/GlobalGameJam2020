image_speed = image_spd_base;

if (!defined(draw_script) && defined(sprite_index))
	draw_self();
else
	script_execute(draw_script);