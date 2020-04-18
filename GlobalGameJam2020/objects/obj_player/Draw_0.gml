#region Update Image X & Y scale
if (facing == DIR.LEFT || facing == DIR.RIGHT)
	image_xscale = scale * facing;
image_yscale = scale;
#endregion
mask_index = spr_player_mask;

switch (state) {
	case player_state_idle:
		sprite_index = spr_player_idle;
		image_speed = 1.0;
		break;
		
	case player_state_run:
		sprite_index = spr_player_run;
		image_speed = 1.0;
		break;	
		
	case player_state_cry:
		sprite_index = spr_player_cry;
		image_speed = 1.0;
		break;
		
	case player_state_roll:
		sprite_index = spr_player_roll;
		image_speed = 1.0;
		break;
}

//draw_sprite_ext(spr_shadow, 0, x, y, 1, 1, 0, c_white, 1);
draw_self();

//draw_text(x, y + 10, script_get_name(state));

if (touching_robot && exists(obj_robot)) {
	draw_sprite_ext(spr_f, 0, obj_robot.x + 64, obj_robot.y - 64, 0.5, 0.5, 0, c_white, 0.75);	
}
