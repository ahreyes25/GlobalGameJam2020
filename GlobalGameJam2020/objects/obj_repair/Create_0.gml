left_coords = [
	[53, 75],	[87, 75],	[120, 75],
	[53, 104],	[87, 104],	[120, 104],
	[53, 130],	[87, 130],	[120, 130],
];

right_coords = [
	[360, 75],	[392, 75],	[425, 75],
	[360, 104],	[392, 104],	[425, 104],
	[360, 130],	[392, 130],	[425, 130],
];

left_nodes	= ds_list_create();
right_nodes	= ds_list_create();
node_clicked_on = undefined;
nodes_connected	= 0;

var _xoffset = 0;
var _yoffset = 0;

var _x = obj_camera.x - obj_camera.width + _xoffset;
var _y = obj_camera.y - obj_camera.height + _yoffset;
for (var i = array_length_1d(left_coords) - 1; i >= 0; i--) {
	if (chance(0.75)) {
		var _left_coord = left_coords[i];
		var _x1 = _x + _left_coord[0] * 4;
		var _y1 = _y + _left_coord[1] * 4;
		var _node = instance_create_layer(_x1, _y1, "Repair", obj_node);
		_node.type = irandom(5);
		ds_list_add(left_nodes, _node);
		
		var _right_coord = right_coords[i];
		var _x2 = _x + _right_coord[0] * 4;
		var _y2 = _y + _right_coord[1] * 4;
		var _node_pair = instance_create_layer(_x2, _y2, "Repair", obj_node);
		_node_pair.type = _node.type;
		ds_list_add(right_nodes, _node_pair);
		
		_node.node_pair			= _node_pair;
		_node_pair.node_pair	= _node;
		_node.repair			= id;
		_node_pair.repair		= id;
		
		//if (chance(0.1)) {
		//	_node.connected = true;
		//	_node_pair.connected = true;
		//}
		_node.main_node = true;
		_node.list_index = i;
		_node_pair.list_index = i;
	}
}