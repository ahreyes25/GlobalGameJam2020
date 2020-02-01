/// @param instance

var _robot = argument0;

if (chance(_robot.nav_health / 100))
	_robot.target = obj_end.id;
else
	_robot.target = obj_start.id;//nth_nearest_object(_robot.x, _robot.y, obj_rock, instance_number(obj_solid));
return _robot.target;