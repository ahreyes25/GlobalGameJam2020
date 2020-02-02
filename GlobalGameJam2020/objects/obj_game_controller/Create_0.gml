randomize();

global_game_data();
global_player_data();
instance_create_layer(0, 0, "Controllers", obj_stats);

debug				= instance_create_layer(0, 0, "Controllers", obj_debug);
dungeon_created		= false;
player				= undefined;
camera				= undefined;
robot				= undefined;
start				= false;
light_surface		= surface_create(room_width, room_height);
instance_create_layer(0, 0, "Controllers", obj_dungeon_generator);

global.part_system		= part_system_create();
global.pt_dust_smoke	= part_type_create();
var _pt		= global.pt_dust_smoke;
var _ps		= global.part_system;
part_type_shape(_pt, pt_shape_disk);
part_type_speed(_pt, 1, 3, -0.1, 0);
part_type_direction(_pt, 45, 135, 0, 5);
part_type_life(_pt, 300, 600);
part_type_alpha2(_pt, 1, 0.1);
part_type_size(_pt, 1.5, 1.5, -0.01, 0);