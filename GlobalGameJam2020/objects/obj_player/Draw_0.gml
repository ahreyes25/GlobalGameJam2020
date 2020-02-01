#region Update Image X & Y scale
if (facing == DIR.LEFT || facing == DIR.RIGHT)
	image_xscale = scale * facing;
image_yscale = scale;
#endregion
mask_index = spr_player_mask;

draw_sprite_ext(spr_shadow, 0, x, y, 1, 1, 0, c_white, 1);
draw_self();
draw_text(x, y, script_get_name(state));