state			= robot_state_idle;
target			= undefined;
target_goal		= obj_end;

glass_health	= 100;
shields_health	= 100;	
motor_health	= 100;
battery_health	= 100;
nav_health		= 100;
light_health	= 100;

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

lights				= light_double_create(x, y - sprite_height / 2);