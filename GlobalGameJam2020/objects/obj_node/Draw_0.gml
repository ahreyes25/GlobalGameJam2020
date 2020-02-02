/*
draw_self();

switch (type) {
	case 0:	var _color = make_color_rgb(44, 232, 244);	break;
	case 1:	var _color = make_color_rgb(255, 231, 98);	break;
	case 2:	var _color = make_color_rgb(137, 137, 137);	break;
	case 3:	var _color = make_color_rgb(61, 137, 71);	break;
	case 4:	var _color = make_color_rgb(181, 80, 137);	break;
	case 5:	var _color = make_color_rgb(229, 59, 68);	break;
}

if (main_node) {
	draw_line_width_color(x + node_wire_offset_x, y + node_wire_offset_y, node_pair.x + node_pair.node_wire_offset_x, node_pair.y + node_pair.node_wire_offset_y, 4, _color, _color);
}