if (alarm[0] == -1) {
	alarm[0] = shoot_rate;
	
	// Shoot
	gun.shoot = true;
}

var _solid  = collision_line(gun_tip_x, gun_tip_y, target_shoot.x, target_shoot.y, obj_solid, false, false);
var _target = collision_line(gun_tip_x, gun_tip_y, target_shoot.x, target_shoot.y, target, false, false);
var _nearby = point_distance(gun_tip_x, gun_tip_y, target_shoot.x, target_shoot.y) <= shoot_range;
var _shoot	= (_target && !_solid && _nearby);

if (!_shoot) {
	state = enemy_gun_state_move;	
	if (mp_grid_path(MP_GRID, path, x, y, target_move.x, target_move.y, 1))
		path_start(path, 0, path_action_stop, true); 
}
face_object(target_shoot);