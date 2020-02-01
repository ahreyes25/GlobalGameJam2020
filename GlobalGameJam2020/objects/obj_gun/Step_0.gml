if (!exists(owner)) {
	instance_destroy();
	return;
}

x = owner.x;
y = owner.y - owner.sprite_height / 2;

if (mouse_check_button_pressed(mb_left)) {
	var _bullet				= instance_create_layer(x, y, "Instances", obj_bullet);
	_bullet.travel_speed	= bullet_speed;
	_bullet.damage			= bullet_damage;
	
	var _dir				= point_direction(x, y, owner.cursor.x, owner.cursor.y);
	_bullet.dir_x			= lengthdir_x(1, _dir);
	_bullet.dir_y			= lengthdir_y(1, _dir);
	_bullet.image_angle		= _dir;
	
	camera_set_screen_shake();
	
	var _flash = animate_object_create(x, y, spr_muzzle_flash, owner.depth - 1, image_xscale, 2, id, 1, true);
	_flash.image_angle = _dir;
	shell_create(x, y, 1);
}