// Check For Clipping

if (collision_rectangle(bbox_left - 1, bbox_top - 1, bbox_right + 1, bbox_bottom + 1, obj_solid, false, false)) {
	
	var _head  = collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_top - 1, obj_solid, false, false);
	var _feet  = collision_rectangle(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 1, obj_solid, false, false);
	var _left  = collision_rectangle(bbox_left - 1, bbox_top, bbox_left - 1, bbox_bottom, obj_solid, false, false);
	var _right = collision_rectangle(bbox_right + 1, bbox_top, bbox_right + 1, bbox_bottom, obj_solid, false, false);

	// Head Clipping
	if  (_head && !_feet) {
		var _while_loop_count = 0;
		while (_head) {
			y++;	
			_head = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, false, false);
			
			// Hard Exit In Case of Infinite Loop
			_while_loop_count++;
			if (_while_loop_count >= 1000)
				break;
		}
	}

	// Feet Clipping
	if (_feet && !_head) {
		var _while_loop_count = 0;
		while (_feet) {
			y--;	
			_feet = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_solid, false, false);
			
			// Hard Exit In Case of Infinite Loop
			_while_loop_count++;
			if (_while_loop_count >= 1000)
				break;
		}
	}	

	// Right Clipping
	if  (_right && !_left) {
		var _while_loop_count = 0;
		while (_right) {
			x--;	
			_right = collision_rectangle(bbox_left, bbox_top, bbox_left, bbox_bottom, obj_solid, false, false);
			
			// Hard Exit In Case of Infinite Loop
			_while_loop_count++;
			if (_while_loop_count >= 1000)
				break;
		}
	}

	// Feet Clipping
	if (_left && !_right) {
		var _while_loop_count = 0;
		while (_left) {
			x++;	
			_left = collision_rectangle(bbox_right, bbox_top, bbox_right, bbox_bottom, obj_solid, false, false);
			
			// Hard Exit In Case of Infinite Loop
			_while_loop_count++;
			if (_while_loop_count >= 1000)
				break;
		}
	}	
}