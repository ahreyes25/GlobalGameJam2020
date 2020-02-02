state			= robot_state_get_dungeon_path;
target			= undefined;
facing			= DIR.RIGHT;
scale			= 1;

// Stats
plant_health	= 100;
glass_health	= 100;	
motor_health	= 100;
battery_health	= 100;
nav_health		= 100;
light_health	= 100;

// Other
flashing			= false;
flash_time			= 3;
light_scale_base	= 10;
light_scale			= light_scale_base;
lights				= light_double_create(x, y);
repairing			= false;

// Movement
move_speed		= 0.5 * (motor_health / 100);

// Pathingw
dungeon_path	= path_add();
path_set_closed(dungeon_path, false);
path_set_kind(dungeon_path, false);
path			= path_add();
path_set_closed(path, false);
path_set_kind(path, false);

path_index_current	= 0;
path_point_x		= undefined;
path_point_y		= undefined;