face_path_forward(id, path);
if (facing == DIR.LEFT || facing == DIR.RIGHT)
	image_xscale = scale * facing;
image_yscale = scale;

draw_sprite_ext(spr_shadow, 0, x, y, 2, 2, 0, c_white, 1);
	
mask_index = spr_robot_mask;	

switch (state) {
	case robot_state_idle:
		sprite_index	= spr_robot_idle_no_cactus;
		image_speed		= 0.5;
		if (flashing)
			shader_set(shdr_flash_white);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		shader_reset();
		
		if (flashing && glass_health <= 0)
			shader_set(shdr_flash_red);
		else if (flashing)
			shader_set(shdr_flash_white);
		draw_sprite_ext(spr_robot_idle_just_cactus, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		shader_reset();
		break;
		
	case robot_state_stun:
		sprite_index	= spr_robot_idle_no_cactus;
		image_speed		= 0.5;
		if (flashing)
			shader_set(shdr_flash_white);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		shader_reset();
		
		if (flashing && glass_health <= 0)
			shader_set(shdr_flash_red);
		else if (flashing)
			shader_set(shdr_flash_white);
		draw_sprite_ext(spr_robot_idle_just_cactus, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		shader_reset();
		break;
		
	case robot_state_walk:
		sprite_index	= spr_robot_walk_no_cactus;
		image_speed		= 0.3;
		if (flashing)
			shader_set(shdr_flash_white);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		shader_reset();
		
		if (flashing && glass_health <= 0)
			shader_set(shdr_flash_red);
		else if (flashing)
			shader_set(shdr_flash_white);
		draw_sprite_ext(spr_robot_walk_just_cactus, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		shader_reset();
		break;
		
	default:
		sprite_index	= spr_robot_walk_no_cactus;
		image_speed		= 0.3;
		if (flashing)
			shader_set(shdr_flash_white);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		shader_reset();
		
		if (flashing && glass_health <= 0)
			shader_set(shdr_flash_red);
		else if (flashing)
			shader_set(shdr_flash_white);
		draw_sprite_ext(spr_robot_walk_just_cactus, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
		shader_reset();
		break;
}

if (defined(target))
	draw_text(x, y + 10, object_get_name(target.object_index));
draw_set_color(c_purple);
draw_path(dungeon_path, x, y, true);
draw_set_color(c_white);
draw_path(path, x, y, true);