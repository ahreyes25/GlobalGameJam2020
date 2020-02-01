draw_sprite_ext(spr_shadow, 0, x, y, 1, 1, 0, c_white, 1);
draw_self();

if (defined(target))
	draw_text(x, y, target);
draw_text(x, y + 10, script_get_name(state));
draw_text(x, y + 20, "path_pos: " + string(path_position));
draw_text(x, y + 30, "path_speed: " + string(path_speed));
draw_set_color(c_purple);
draw_path(dungeon_path, x, y, true);
draw_set_color(c_white);
draw_path(path, x, y, true);