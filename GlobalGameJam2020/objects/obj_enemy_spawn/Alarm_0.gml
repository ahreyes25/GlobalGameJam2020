if (global.n_enemies_on_screen < global.max_enemies_on_screen) {
	var _spawn	= choose(obj_enemy_shoot, obj_enemy_swarm);
	var _en		= instance_create_layer(x, y, "Instances", _spawn);
	_en.depth	= depth - 1;
	alarm[0]	= spawn_time;
	global.n_enemies_on_screen++;
}
else 
	alarm[0] = 1;