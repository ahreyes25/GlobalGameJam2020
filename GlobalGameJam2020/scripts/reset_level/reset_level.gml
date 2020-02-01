room_restart();
ds_grid_clear(GRID, LAND.SOLID);

if (exists(obj_debug))
	obj_debug.automate_testing = false;
	
SPACE = 0;
ds_list_clear(OPEN_SPACES);
instance_destroy(obj_player);
obj_game_controller.player = undefined;