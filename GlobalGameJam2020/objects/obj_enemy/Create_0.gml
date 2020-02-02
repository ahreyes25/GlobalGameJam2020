life	= 3;


// Movement
target	= obj_robot;
path	= path_add();
path_set_kind(path, false);
path_set_closed(path, false);

move_speed = 3;
mask_index = spr_enemy_mask;