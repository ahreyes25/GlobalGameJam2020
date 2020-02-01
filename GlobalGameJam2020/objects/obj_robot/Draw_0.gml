draw_sprite_ext(spr_shadow, 0, x, y, 1, 1, 0, c_white, 1);

if (flashing)
	shader_set(shdr_flash_white);

draw_self();
shader_reset();

if (defined(target))
	draw_text(x, y + 10, object_get_name(target.object_index));
draw_set_color(c_purple);
draw_path(dungeon_path, x, y, true);
draw_set_color(c_white);
draw_path(path, x, y, true);

draw_text(x, y + 50, script_get_name(state));