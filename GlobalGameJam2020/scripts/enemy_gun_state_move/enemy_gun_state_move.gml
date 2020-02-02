path_speed = move_speed;

// Check For Shoot Transition
var _solid  = collision_line(x, y, target_shoot.x, target_shoot.y, obj_solid, false, false);
var _target = collision_line(x, y, target_shoot.x, target_shoot.y, target, false, false);
var _nearby = point_distance(x, y, target_shoot.x, target_shoot.y) <= shoot_range;

if (_target && !_solid && _nearby) {
	state = enemy_gun_state_shoot;
	path_end();
	path_clear_points(path);
	path_position = 0;
}
face_path_forward(path);

if (alarm[1] == -1)
	state = enemy_gun_state_update_path;	