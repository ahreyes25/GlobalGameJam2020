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
robot				= undefined;
light_surface		= surface_create(room_width, room_height);

global.part_system		= part_system_create();
global.pt_dust_smoke	= part_type_create();
var _pt		= global.pt_dust_smoke;
var _ps		= global.part_system;
var _dark	= make_color_rgb(63, 40, 50);
var _brown	= make_color_rgb(184, 111, 80);
part_type_color2(_pt, _brown, _dark);
part_type_shape(_pt, pt_shape_disk);
part_type_speed(_pt, 0.2, 1, -0.001, 0);
part_type_direction(_pt, 45, 135, 0, 0);
part_type_life(_pt, 600, 600);
part_type_alpha2(_pt, 1, 0.5);
part_type_size(_pt, 0.5, 1.5, -0.005, 0);