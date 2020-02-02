ds_grid_clear(GRID, LAND.SOLID);

if (exists(obj_debug))
	obj_debug.automate_testing = false;
	
SPACE = 0;
ds_list_clear(OPEN_SPACES);
instance_destroy(obj_player);
obj_game_controller.player = undefined;

if (exists(obj_robot)) {
	path_clear_points(obj_robot.path);
	path_clear_points(obj_robot.dungeon_path);
	obj_robot.target = undefined;
	obj_robot.target = robot_state_idle;
}

surface_free(obj_game_controller.light_surface);

var _ratio = floor(obj_stats.level / 2);
obj_stats.n_spawns_allowed			= 10 + _ratio;
obj_stats.n_enemies_on_screen		= 0;
obj_stats.max_enemies_on_screen		= 30 + _ratio;
obj_stats.enemy_spawn_time			= 60 * 5 - _ratio;
obj_stats.enemy_bullet_damage		= 3 + _ratio;
obj_stats.enemy_explosion_damage	= 10 + _ratio;
obj_stats.rock_life					= 3 + _ratio;
obj_stats.enemy_spawn_life			= 10 + _ratio;
obj_stats.robot_walk_speed			= 1;
obj_stats.enemy_swarm_life			= 2 + _ratio;
obj_stats.enemy_shoot_life			= 3 + _ratio;
obj_stats.n_spawners				= 0;

room_restart();