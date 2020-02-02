if (!defined(owner) || !exists(owner)) {
	instance_destroy();
	return;
}

x = owner.x;
y = (owner.bbox_top + owner.bbox_bottom) / 2 - 10;
depth = owner.depth - 1;

if (owner.state == enemy_gun_state_move || owner.state == enemy_gun_state_idle)
	image_xscale = owner.image_xscale;
else
	image_xscale = 1;

// Shoot
if (shoot) {
	var _len = sprite_width / 2;
	var _gun_tip_x = x + lengthdir_x(_len, dir);
	var _gun_tip_y = y + lengthdir_y(_len, dir);
	owner.gun_tip_x = _gun_tip_x;
	owner.gun_tip_y = _gun_tip_y;
	
	dir	= point_direction(_gun_tip_x, _gun_tip_y, owner.target_shoot.x, owner.target_shoot.y);
	image_angle = dir;

	if (dir >= 90 && dir <= 270)
		image_yscale = -1;
	else
		image_yscale = 1;

	var _bullet				= instance_create_layer(_gun_tip_x, _gun_tip_y, "Instances", obj_bullet_enemy);
	_bullet.travel_speed	= bullet_speed;
	_bullet.damage			= bullet_damage;
	
	_bullet.dir_x			= lengthdir_x(1, dir);
	_bullet.dir_y			= lengthdir_y(1, dir);
	_bullet.image_angle		= dir;
	
	camera_set_screen_shake();
	
	x -= lengthdir_x(10, dir);
	if (alarm[0] == -1)
		alarm[0] = 5;
	
	var _flash = animate_object_create(_gun_tip_x, _gun_tip_y, spr_muzzle_flash, owner.depth - 2, image_xscale, 2, id, 1, true);
	_flash.image_angle = dir;
	shell_create(x, y, 1);
	
	shoot = false;
}

if (exists(obj_player) && obj_player.state == player_state_cry)
	visible = false;