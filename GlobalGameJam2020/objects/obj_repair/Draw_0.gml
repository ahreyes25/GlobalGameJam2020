var _x1 = obj_camera.x - obj_camera.width;
var _y1 = obj_camera.y - obj_camera.height; 
draw_sprite_ext(spr_repair, 0, _x1, _y1, 4, 4, 0, c_white, 1);

// Draw nodes
for (var i = ds_list_size(left_nodes) - 1; i >= 0; i--) {
	var _node_left = left_nodes[| i];
	var _left_coord = left_coords[_node_left.list_index];
	if (_node_left.clicked || _node_left.connected)
		var _alpha = 1;
	else
		var _alpha = 0.25;
	draw_sprite_ext(spr_nodes, _node_left.type, _x1 + _left_coord[0] * 4, _y1 + _left_coord[1] * 4, 1, 1, 0, c_white, _alpha);
	
	var _node_right = right_nodes[| i];
	var _right_coord = right_coords[_node_right.list_index];
	if (_node_right.clicked || _node_right.connected)
		var _alpha = 1;
	else
		var _alpha = 0.25;
	draw_sprite_ext(spr_nodes, _node_right.type, _x1 + _right_coord[0] * 4, _y1 + _right_coord[1] * 4, 1, 1, 0, c_white, _alpha);
}

// Draw wires
for (var i = ds_list_size(left_nodes) - 1; i >= 0; i--) {
	var _node_left = left_nodes[| i];
	var _left_coord = left_coords[_node_left.list_index];
	var _node_right = _node_left.node_pair;
	var _right_coord = right_coords[_node_right.list_index];
	
	if (!_node_left.connected && !_node_right.connected)
		continue;
	
	switch (_node_left.type) {
		case 0:	var _color = make_color_rgb(44, 232, 244);	break;
		case 1:	var _color = make_color_rgb(255, 231, 98);	break;
		case 2:	var _color = make_color_rgb(137, 137, 137);	break;
		case 3:	var _color = make_color_rgb(61, 137, 71);	break;
		case 4:	var _color = make_color_rgb(181, 80, 137);	break;
		case 5:	var _color = make_color_rgb(229, 59, 68);	break;
	}

	if (_node_left.main_node)
		draw_line_width_color(
			(_x1 + _left_coord[0]  * 4) + _node_left.node_wire_offset_x, 
			(_y1 + _left_coord[1]  * 4) + _node_left.node_wire_offset_y, 
			(_x1 + _right_coord[0] * 4) + _node_left.node_pair.node_wire_offset_x, 
			(_y1 + _right_coord[1] * 4) + _node_left.node_pair.node_wire_offset_y, 
			6, 
			_color, 
			_color
		);
}

// Draw Active Wire
if (defined(node_clicked_on)) {
	switch (node_clicked_on.type) {
		case 0:	var _color = make_color_rgb(44, 232, 244);	break;
		case 1:	var _color = make_color_rgb(255, 231, 98);	break;
		case 2:	var _color = make_color_rgb(137, 137, 137);	break;
		case 3:	var _color = make_color_rgb(61, 137, 71);	break;
		case 4:	var _color = make_color_rgb(181, 80, 137);	break;
		case 5:	var _color = make_color_rgb(229, 59, 68);	break;
	}
	
	if (node_clicked_on.main_node)
		var _coord = left_coords[node_clicked_on.list_index];
	else
		var _coord = right_coords[node_clicked_on.list_index];
	
	draw_line_width_color(
		(_x1 + _coord[0]  * 4) + node_clicked_on.node_wire_offset_x, 
		(_y1 + _coord[1]  * 4) + node_clicked_on.node_wire_offset_y, 
		mouse_x, 
		mouse_y, 
		6, 
		_color, 
		_color
	);
}











































