state			= robot_state_get_dungeon_path;
target			= undefined;

// Stats
glass_health	= 100;
shields_health	= 100;	
motor_health	= 100;
battery_health	= 100;
nav_health		= 100;
light_health	= 100;

// Other
flashing		= false;
flash_time		= 3;
lights			= light_double_create(x, y - sprite_height / 2);

// Movement
move_speed		= 0.5 * (motor_health / 100);

// Pathing
dungeon_path	= path_add();
path_set_closed(dungeon_path, false);
path_set_kind(dungeon_path, false);
path			= path_add();
path_set_closed(path, false);
path_set_kind(path, false);

path_index_current	= 0;
path_point_x		= undefined;
path_point_y		= undefined;