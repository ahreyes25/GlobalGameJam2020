// Spawn Player In Random Open Space
if (dungeon_created && !exists(obj_dungeon_generator) && !defined(player)) {
	var _x	= obj_start.x + obj_start.sprite_width  / 2;
	var _y	= obj_start.y + obj_start.sprite_height;
	player	= instance_create_layer(_x, _y + UNIT_SIZE, "Instances", obj_player);
	robot	= instance_create_layer(_x + UNIT_SIZE, _y + UNIT_SIZE, "Instances", obj_robot);
	
	// Create Camera
	if (!defined(camera))
		instance_create_layer(player.x, player.y, "Controllers", obj_camera);
}	