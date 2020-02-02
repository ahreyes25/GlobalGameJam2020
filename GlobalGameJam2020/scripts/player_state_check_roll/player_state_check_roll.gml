/// @description	player_state_check_roll

if (keyboard_check_pressed(vk_space)) {
	
	// Build Roll Path
	if (!path_exists(path))
		path = path_add();
		
	path_clear_points(path);
	
	// If Not Moving, Roll Direction Facing Cursor
	if (hspd != 0 || vspd != 0)
		var _dir = point_direction(x, y, x + hspd, y + vspd);
	else
		var _dir = point_direction(x, y, cursor.x, cursor.y);
	
	var _x1  = x + lengthdir_x(roll_dist, _dir);
	var _y1  = y + lengthdir_y(roll_dist, _dir);
		
	mp_linear_path_object(path, _x1, _y1, 1, obj_solid);
	path_start(path, 0, path_action_stop, true);
	
	player_state_transition(id, state, player_state_roll, 0);
	return true;
}
return false;