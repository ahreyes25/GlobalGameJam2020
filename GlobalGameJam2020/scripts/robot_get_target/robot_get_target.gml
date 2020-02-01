/// @param instance

var _robot = argument0;

if (chance(1 - (_robot.nav_health / 100)))
	_robot.target = nth_nearest_object(_robot.x, _robot.y, obj_solid, instance_number(obj_solid));
else
	_robot.target = nth_nearest_object(_robot.x, _robot.y, obj_end, 0);
return _robot.target;