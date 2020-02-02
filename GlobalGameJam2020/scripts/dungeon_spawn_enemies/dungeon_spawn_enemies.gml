// Spawn Enemies
/*
for (var i = 0; i < 100; i++) {
	var _index	= irandom(ds_list_size(global.open_spaces) -1);
	var _space	= global.open_spaces[| _index];
	var _x		= _space[0];
	var _y		= _space[1];
	var _world_coords = grid_to_world(_x, _y);
	instance_create_layer(_world_coords[0], _world_coords[1], "Instances", obj_enemy_swarm); 
}
*/

while (global.n_spawners < global.n_spawns_allowed) {
	var _index	= irandom(ds_list_size(global.open_spaces) -1);
	var _space	= global.open_spaces[| _index];
	var _x		= _space[0];
	var _y		= _space[1];
	var _world_coords = grid_to_world(_x, _y);
	instance_create_layer(_world_coords[0], _world_coords[1], "Instances", obj_enemy_spawn); 
}