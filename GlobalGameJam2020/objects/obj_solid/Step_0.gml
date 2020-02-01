if (!assigned_sprite && obj_game_controller.dungeon_created) {
	
	// Left Wall
	var _left_wall		= collision_point(bbox_left - 1, (bbox_top + bbox_bottom) / 2, obj_solid	, false, true);
	var _right_wall		= collision_point(bbox_right + 1, (bbox_top + bbox_bottom) / 2, obj_solid	, false, true);
	var _top_wall		= collision_point((bbox_left + bbox_right) / 2, bbox_top - 1, obj_solid		, false, true);
	var _bottom_wall	= collision_point((bbox_left + bbox_right) / 2, bbox_bottom + 1, obj_solid	, false, true);
	
	if (_left_wall && _right_wall && _top_wall && _bottom_wall)
		edge = false;
	else
		edge = true;
	
	assigned_sprite = true;	
}

camera_cull();