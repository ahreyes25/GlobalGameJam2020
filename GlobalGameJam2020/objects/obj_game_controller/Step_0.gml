// Spawn Player In Random Open Space
if (dungeon_created && !exists(obj_dungeon_generator) && !defined(player)) {
	var _x	= obj_start.x + obj_start.sprite_width  / 2;
	var _y	= obj_start.y + obj_start.sprite_height;
	player	= instance_create_layer(_x, _y + UNIT_SIZE, "Instances", obj_player);
	robot	= instance_create_layer(_x + UNIT_SIZE, _y + UNIT_SIZE, "Instances", obj_robot);
	
	// Create Camera
	if (!defined(camera))
		instance_create_layer(player.x, player.y, "Controllers", obj_camera);
		
	// Spawn Test Enemies
	//for (var i = 0; i < 100; i++) {
	//	var _index	= irandom(ds_list_size(global.open_spaces) -1);
	//	var _space	= global.open_spaces[| _index];
	//	var _x		= _space[0];
	//	var _y		= _space[1];
	//	var _world_coords = grid_to_world(_x, _y);
	//	instance_create_layer(_world_coords[0], _world_coords[1], "Instances", obj_enemy_swarm); 
	//}
}	