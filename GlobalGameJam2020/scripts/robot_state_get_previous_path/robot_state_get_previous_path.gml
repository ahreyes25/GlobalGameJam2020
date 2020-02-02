path_index_current = clamp(path_index_current - 2, 0, path_get_number(dungeon_path));

path_point_x = path_get_point_x(dungeon_path, path_index_current);
path_point_y = path_get_point_y(dungeon_path, path_index_current);

if (mp_linear_path_object(path, path_point_x, path_point_y, move_speed, obj_solid)) {
	state = robot_state_walk;
	path_start(path, 0, path_action_stop, 0);
	sfx_play_array(sfx_emitter, sfx_robot);
}