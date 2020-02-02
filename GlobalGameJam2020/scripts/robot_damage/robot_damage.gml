/// @param damage

if (!exists(obj_robot)) return;

var _damage = argument0;

if (obj_robot.glass_health > 0)
	obj_robot.glass_health = clamp(obj_robot.glass_health - _damage,	0, 100);
else {
	switch (irandom(4)) {
		case 0:		obj_robot.motor_health		= clamp(obj_robot.motor_health - _damage,	0, 100);	break;
		case 1:		obj_robot.battery_health	= clamp(obj_robot.battery_health - _damage,	0, 100);	break;
		case 2:		obj_robot.nav_health		= clamp(obj_robot.nav_health - _damage,		0, 100);	break;
		case 3:		obj_robot.light_health		= clamp(obj_robot.light_health - _damage,	0, 100);	break;
		case 4:		obj_robot.plant_health		= clamp(obj_robot.plant_health - _damage,	0, 100);	break;
	}
}
	
obj_robot.flashing	= true;
obj_robot.target	= robot_get_target(obj_robot.id);

if (obj_robot.target.object_index != obj_end)
	animate_object_create(obj_robot.x - (80 * sign(image_xscale)), obj_robot.y - 160, spr_nav_icon, obj_robot.depth - 1, 1, 0.25, obj_robot, 3, true);

with (obj_robot) {
	path_end();
	path_clear_points(path);
	path_clear_points(dungeon_path);
	path_position = 0;
	path_index_current = 0;
	state = robot_state_get_dungeon_path;
}