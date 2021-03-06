life		= obj_stats.enemy_spawn_life;
spawn_time	= obj_stats.enemy_spawn_time;
alarm[0]	= irandom(spawn_time);
flashing	= false;
image_xscale	= 0.75;
image_yscale	= 0.75;
sfx_emitter = audio_emitter_create();

var _spawn = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_spawn, false, true);
if (defined(_spawn)) {
	instance_destroy();
	return;
}

var _solid  = collision_line(x, y, obj_robot.x, obj_robot.y, obj_solid, false, false);
var _target = collision_line(x, y, obj_robot.x, obj_robot.y, obj_robot, false, false);
var _nearby = point_distance(x, y, obj_robot.x, obj_robot.y) <= 500;
var _shoot	= (_target && !_solid && _nearby);
if (_shoot) {
	instance_destroy();
	return;
}

obj_stats.n_spawners++;