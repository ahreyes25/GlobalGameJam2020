obj_cursor.depth = depth - 1;

var _x1 = obj_camera.x - obj_camera.width;
var _y1 = obj_camera.y - obj_camera.height;

if (mouse_check_button_pressed(mb_left)) {
	for (var i = ds_list_size(left_nodes) - 1; i >= 0; i--) {
		var _node_left		= left_nodes[| i];
		var _node_right		= right_nodes[| i];
		var _left_coord		= left_coords[_node_left.list_index];
		var _right_coord	= right_coords[_node_right.list_index];
	
		var _lx	= _x1 + _left_coord[0] * 4;
		var _ly	= _y1 + _left_coord[1] * 4;
		var _rx	= _x1 + _right_coord[0] * 4;
		var _ry	= _y1 + _right_coord[1] * 4;
		var _cush = 48;
	
		// Clicking On Left Node
		if (mouse_x > _lx - _cush && mouse_x < _lx + _cush && mouse_y > _ly - _cush && mouse_y < _ly + _cush) {
			_node_left.clicked = true;
			node_clicked_on = _node_left;
			audio_play_sound(sfx_sounds_repair_select, 0, 0);
			audio_play_sound(sfx_sounds_repair_wire, 0, 0);
			break;
		}
		// Clicking On Right Node
		else if (mouse_x > _rx - _cush && mouse_x < _rx + _cush && mouse_y > _ry - _cush && mouse_y < _ry + _cush) {
			_node_right.clicked = true;
			node_clicked_on = _node_right;
			audio_play_sound(sfx_sounds_repair_select, 0, 0);
			audio_play_sound(sfx_sounds_repair_wire, 0, 0);
			break;
		}
	}
}
else if (mouse_check_button_released(mb_left)) {
	// Check For Connection
	for (var i = ds_list_size(left_nodes) - 1; i >= 0; i--) {
		var _node_left		= left_nodes[| i];
		var _node_right		= right_nodes[| i];
		var _left_coord		= left_coords[_node_left.list_index];
		var _right_coord	= right_coords[_node_right.list_index];
	
		var _lx	= _x1 + _left_coord[0] * 4;
		var _ly	= _y1 + _left_coord[1] * 4;
		var _rx	= _x1 + _right_coord[0] * 4;
		var _ry	= _y1 + _right_coord[1] * 4;
		var _cush = 48;
	
		// Clicking On Left Node
		if (mouse_x > _lx - _cush && mouse_x < _lx + _cush && mouse_y > _ly - _cush && mouse_y < _ly + _cush) {
			if ((_node_left == node_clicked_on || _node_left.node_pair == node_clicked_on) && !_node_left.connected) {
				_node_left.connected = true;
				_node_left.node_pair.connected = true;
				nodes_connected++;
				audio_play_sound(sfx_sounds_repair_success, 0, 0);
				audio_play_sound(sfx_sounds_repair_select, 0, 0);
				break;
			}
		}
		// Clicking On Right Node
		else if (mouse_x > _rx - _cush && mouse_x < _rx + _cush && mouse_y > _ry - _cush && mouse_y < _ry + _cush) {
			if ((_node_right == node_clicked_on || _node_right.node_pair == node_clicked_on) && !_node_right.connected) {
				_node_right.connected = true;
				_node_right.node_pair.connected = true;
				nodes_connected++;
				audio_play_sound(sfx_sounds_repair_success, 0, 0);
				audio_play_sound(sfx_sounds_repair_select, 0, 0);
				break;
			}
		}
		else 
			audio_play_sound(sfx_sounds_error3, 0, 0);
	}
	
	// Reset Node Clicked On
	if (defined(node_clicked_on)) {
		node_clicked_on.clicked = false;
		node_clicked_on = undefined;
	}
}

// Successfull Exit
if (nodes_connected == ds_list_size(left_nodes)) {
	instance_destroy();
	repairing = false;
	obj_player.repairing = false;
	obj_robot.repairing = false;
	obj_robot.state = robot_state_get_dungeon_path;
	camera_set_cursor_influence(true);
	
	obj_robot.motor_health = 100;
	obj_robot.light_health = 100;
	obj_robot.battery_health = 100;
	obj_robot.nav_health = 100;
	
	with (obj_robot) {
		path_end();
		path_clear_points(path);
		path_clear_points(dungeon_path);
		path_position = 0;
		path_index_current = 0;
		state = robot_state_get_dungeon_path;
	}
	audio_play_sound(sfx_sounds_powerup16, 0, 0);
}



































