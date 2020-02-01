room_restart();
ds_grid_clear(GRID, LAND.SOLID);

if (exists(obj_debug))
	obj_debug.automate_testing = false;
	
SPACE = 0;
ds_list_clear(OPEN_SPACES);
instance_destroy(obj_player);
obj_game_controller.player = undefined;

path_clear_points(obj_robot.path);
path_clear_points(obj_robot.dungeon_path);
obj_robot.target = undefined;
obj_robot.target = robot_state_idle;

surface_free(obj_game_controller.light_surface);