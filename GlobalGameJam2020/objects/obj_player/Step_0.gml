#region Exit Repairing
if (repairing) {
	if (keyboard_check_pressed(ord("F"))) {
		repairing = false;
		instance_destroy(obj_repair);
		obj_robot.repairing = false;
		camera_set_cursor_influence(true);
		obj_robot.state = robot_state_get_dungeon_path;
		
		with (obj_robot) {
			path_end();
			path_clear_points(path);
			path_clear_points(dungeon_path);
			path_position = 0;
			path_index_current = 0;
			state = robot_state_get_dungeon_path;
		}
	}
	return;
}
#endregion

event_inherited();

if (exists(obj_robot) && obj_robot.plant_health <= 0) {
	state = player_state_cry;
	equipped = undefined;
	camera_set_focus_point(x, y);
	camera_set_zoom_factor(1);
	return;
}

if (exists(obj_robot)) {
	touching_robot = (point_distance(x, y, obj_robot.x, obj_robot.y) < 64);
	#region Start Repairing
	if (keyboard_check_pressed(ord("F")) && !repairing) {
		if (touching_robot) {
			obj_robot.repairing = true;
			instance_create_layer(0, 0, "Repair", obj_repair);
			repairing = true;
			camera_set_cursor_influence(false);
		}
	}
	#endregion
}

if (keyboard_check_pressed(ord(1)))
	equipped = gun;
if (keyboard_check_pressed(ord(2)))
	equipped = watering_can;
	
