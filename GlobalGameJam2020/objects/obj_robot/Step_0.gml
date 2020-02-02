if (repairing)
	state = robot_state_idle;
	
if (plant_health <= 0)
	state = robot_state_die;

script_execute(state);

if (flashing && alarm[1] == -1)
	alarm[1] = flash_time;
	
// Check For Getting Hit By An Enemy
var _enemy_swarm = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_swarm, false, false);
if (defined(_enemy_swarm)) {
	camera_set_screen_shake(5, 30);
	robot_damage(_enemy_swarm.damage);
	instance_destroy(_enemy_swarm);
}

shader_pulse_color_step();