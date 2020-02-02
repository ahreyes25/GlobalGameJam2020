if (place_meeting(x, y, obj_player))
	if (exists(obj_robot) && obj_robot.plant_health > 0 && point_distance(x, y, obj_robot.x, obj_robot.y) < 100)
		next_level();