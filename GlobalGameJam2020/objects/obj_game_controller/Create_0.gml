randomize();

global_game_data();
global_player_data();

surf_width			= room_width  * 3;
surf_height			= room_height * 3;
surface				= surface_create(surf_width, surf_height);
draw_black_surface	= false;
debug				= instance_create_layer(0, 0, "Controllers", obj_debug);
dungeon_created		= false;
player				= undefined;
camera				= undefined;