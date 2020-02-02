//ds_grid_draw(GRID, 10, 10, 10);

if (exists(obj_player) && !obj_player.repairing) {
	#region Draw Arrow To Goal
	if (exists(obj_player))
		var _dir = point_direction(obj_player.x, obj_player.y, obj_end.x, obj_end.y);
	else
		var _dir = 0;	

	var _x = obj_camera.width - 64;

	draw_sprite_ext(spr_compass, 0, _x, 64, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_goal_arrow, 0, _x, 64, 1, 1, _dir, c_white, 1);

	if (exists(obj_player) && exists(obj_robot))
		var _dir = point_direction(obj_player.x, obj_player.y, obj_robot.x, obj_robot.y);
	else
		var _dir = 0;
	
	var _len = ((sprite_get_bbox_left(spr_compass) + sprite_get_bbox_right(spr_compass)) / 2) / 2;
	draw_sprite_ext(spr_robot_arrow, 0, _x + lengthdir_x(_len, _dir), 64 + lengthdir_y(_len, _dir), 1, 1, _dir - 45, c_white, 1);
	#endregion
}

/*
draw_sprite_ext(spr_watering_can, 0, 32, 150, 0.5, 0.5, 0, c_white, 1);
if (exists(obj_player))
	draw_text(60, 135, obj_player.watering_can.water);