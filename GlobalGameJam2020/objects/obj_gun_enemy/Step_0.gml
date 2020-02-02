if (!defined(owner) || !exists(owner)) {
	instance_destroy();
	return;
}

x = owner.x;
y = owner.y;

// Shoot
if (shoot) {
	dir	= point_direction(x, y, owner.target_shoot.x, owner.target_shoot.y);
	image_angle = dir;

	if (dir >= 90 && dir <= 270)
		image_yscale = -1;
	else
		image_yscale = 1;

	var _bullet				= instance_create_layer(x, y, "Instances", obj_bullet_enemy);
	_bullet.travel_speed	= bullet_speed;
	_bullet.damage			= bullet_damage;
	
	_bullet.dir_x			= lengthdir_x(1, dir);
	_bullet.dir_y			= lengthdir_y(1, dir);
	_bullet.image_angle		= dir;
	
	camera_set_screen_shake();
	
	x -= lengthdir_x(10, dir);
	if (alarm[0] == -1)
		alarm[0] = 5;
	
	var _len = sprite_width / 2;
	var _flash = animate_object_create(x + lengthdir_x(_len, dir), y + lengthdir_y(_len, dir), spr_muzzle_flash, owner.depth - 2, image_xscale, 2, id, 1, true);
	_flash.image_angle = dir;
	shell_create(x, y, 1);
	
	shoot = false;
}