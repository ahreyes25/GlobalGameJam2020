if (instance_number(obj_stats) == 2) {
	instance_destroy();
	return;
}

points					= 0;
level					= 0;
n_spawners				= 0;

var _ratio = floor(level / 2);
n_spawns_allowed		= 10 + _ratio;
n_enemies_on_screen		= 0;
max_enemies_on_screen	= 30 + _ratio;
enemy_spawn_time		= 60 * 5 - _ratio;
enemy_bullet_damage		= 2 + _ratio;
enemy_explosion_damage	= 10 + _ratio;
rock_life				= 3 + _ratio;
enemy_spawn_life		= 10 + _ratio;
robot_walk_speed		= 1;
enemy_swarm_life		= 2 + _ratio;
enemy_shoot_life		= 3 + _ratio;
audio_play_sound(sfx_music_main, 0, 1);