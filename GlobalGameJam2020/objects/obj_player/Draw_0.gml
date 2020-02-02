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
}

//draw_sprite_ext(spr_shadow, 0, x, y, 1, 1, 0, c_white, 1);
draw_self();