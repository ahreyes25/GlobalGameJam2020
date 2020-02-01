// Spawn Player In Random Open Space
if (dungeon_created && !exists(obj_dungeon_generator) && !defined(player)) {
	var _space = OPEN_SPACES[| irandom(ds_list_size(OPEN_SPACES) - 1)];
	show_message(_space);
	var _world_coords = grid_to_world(_space[0], _space[1]);
	player = instance_create_layer(_world_coords[0], _world_coords[1], "Instances", obj_player);
	
	// Create Camera
	if (!defined(camera))
		instance_create_layer(player.x, player.y, "Controllers", obj_camera);
}	