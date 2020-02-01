var _spd = 2;
if (sprite_index == spr_rock_small)
	animate_object_create(x, y, spr_rock_small_explode, depth - 1, image_xscale, _spd, id, 1, false);
else if (sprite_index == spr_rock_medium)
	animate_object_create(x, y, spr_rock_med_explode, depth - 1, image_xscale, _spd, id, 1, false);
else if (sprite_index == spr_rock_tall)
	animate_object_create(x, y, spr_rock_tall_explode, depth - 1, image_xscale, _spd, id, 1, false);
else
	animate_object_create(x, y, spr_rock_big_explode, depth - 1, image_xscale, _spd, id, 1, false);
	
var _scorch = instance_create_layer(x, (bbox_bottom + bbox_top) / 2, "Instances", obj_scorch);
_scorch.image_alpha = 0.5
_scorch.image_xscale = choose(-1, 1);