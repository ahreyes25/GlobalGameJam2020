// Spawn Player In Random Open Space
if (dungeon_created && !exists(obj_dungeon_generator) && !defined(player)) {
	var _x	= (obj_start.bbox_left + obj_start.bbox_right) / 2;
	player	= instance_create_layer(_x, obj_start.bbox_bottom, "Instances", obj_player);
	robot	= instance_create_layer(_x - UNIT_SIZE, (obj_start.bbox_top + obj_start.bbox_bottom) / 2, "Instances", obj_robot);
	
	// Create Camera
	if (!defined(camera))
		instance_create_layer(player.x, player.y, "Controllers", obj_camera);
		
	alarm[0] = 1;
}	