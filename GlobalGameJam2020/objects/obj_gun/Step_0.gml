if (!exists(owner)) {
	instance_destroy();
	return;
}

if (owner.equipped != id)
	return;

if (alarm[0] == -1)
	x = owner.x + (10 * sign(owner.image_xscale));
y = (owner.bbox_top + owner.bbox_bottom) / 2 - 10;
depth = owner.depth - 1;
dir	= point_direction(x, y, owner.cursor.x, owner.cursor.y);
image_angle = dir;

if (dir >= 90 && dir <= 270)
	image_yscale = -1;
else
	image_yscale = 1;

if (mouse_check_button_pressed(mb_left) && !owner.repairing) {
	var _len = sprite_width / 2;
	var _bullet				= instance_create_layer(x + lengthdir_x(_len, dir), y + lengthdir_y(_len, dir), "Instances", obj_bullet);
	_bullet.travel_speed	= bullet_speed;
	_bullet.damage			= bullet_damage;
	
	_bullet.dir_x			= lengthdir_x(1, dir);
	_bullet.dir_y			= lengthdir_y(1, dir);
	_bullet.image_angle		= dir;
	
	camera_set_screen_shake();
	
	x -= lengthdir_x(10, dir);
	if (alarm[0] == -1)
		alarm[0] = 5;
	
	var _flash = animate_object_create(x + lengthdir_x(_len, dir), y + lengthdir_y(_len, dir), spr_muzzle_flash, owner.depth - 2, image_xscale, 2, id, 1, true);
	_flash.image_angle = dir;
	shell_create(x, y, 1);
}

if (exists(obj_player) && obj_player.state == player_state_cry)
	visible = false;