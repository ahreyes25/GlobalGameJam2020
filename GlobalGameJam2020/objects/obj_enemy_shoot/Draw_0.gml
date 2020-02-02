if (facing == DIR.LEFT || facing == DIR.RIGHT)
	image_xscale = scale * facing;
image_yscale = scale;

switch (state) {
	case enemy_gun_state_move:
		sprite_index = spr_enemy_shoot_run;
		image_speed	= 1.0;
		break;
		
	default:
		sprite_index = spr_enemy_shoot_idle;
		image_speed = 1.0;
		break;
}
if (flashing)
	shader_set(shdr_flash_white);

draw_self();
shader_reset();
/*
draw_text(x, y, script_get_name(state));
draw_path(path, x, y, true);
draw_text(x, y + 10, "move: " + string(object_get_name(target_move.object_index)));
draw_text(x, y + 20, "shoot: " + string(object_get_name(target_shoot.object_index)));