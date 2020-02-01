/// @param instance

var _robot = argument0;

//if (chance(_robot.nav_health / 100))
	_robot.target = obj_end.id;//nth_nearest_object(_robot.x, _robot.y, obj_end, 0);
//else
//	_robot.target = nth_nearest_object(_robot.x, _robot.y, obj_solid, instance_number(obj_solid));