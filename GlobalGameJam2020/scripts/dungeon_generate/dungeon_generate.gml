#region Generate Initial Grid
if (!ds_exists(GRID, ds_type_grid))
	return false;	
	
var _start_i			= irandom(GRID_WIDTH / 2);
var _start_j			= irandom(GRID_HEIGHT / 2);
var _room_width_min		= 4;
var _room_width_max		= 12;
var _room_height_min	= 4;
var _room_height_max	= 8;
var _hall_width_min		= 2;
var _hall_width_max		= 4;
var _hall_length_min	= 6;
var _hall_length_max	= 12;
var _iterations			= 1000;
var _room_chance		= 0.01;
var _hall_chance		= 0.025;
var _i					= _start_i;
var _j					= _start_j;
var _last_dir			= choose(DIR.LEFT, DIR.RIGHT, DIR.UP, DIR.DOWN);

// Generate Grid Config
for (var i = 0; i < _iterations; i++) {
	
	// Generate Hall
	if (chance(_hall_chance)) {
		var _exit_point = dungeon_create_hall(_i, _j, irandom_range(_hall_width_min, _hall_width_max), irandom_range(_hall_length_min, _hall_length_max));
		_i = _exit_point[0];
		_j = _exit_point[1];
	}
	// Generate Room
	else if (chance(_room_chance)) {
		var _exit_point = dungeon_create_room(_i, _j, irandom_range(_room_width_min, _room_width_max), irandom_range(_room_height_min, _room_height_max));
		//_i = _exit_point[0];
		//_j = _exit_point[1];
	}
	// Pick Random Spot
	else {
		var _next_space = dungeon_next_dir(_i, _j, _last_dir);
		var _i		= _next_space[0];
		var _j		= _next_space[1];
		_last_dir	= _next_space[2];
		
		if (in_bounds(_i, _j, GRID)) {
			if (ds_grid_get(GRID, _i, _j) == LAND.SOLID) {
				SPACE++;
				ds_list_add(OPEN_SPACES, [_i, _j]);
			}
		}
		
		if (in_bounds(_i, _j, GRID))
			ds_grid_set(GRID, _i, _j, LAND.GROUND);
	}
}
#endregion

#region Replace Ground With Edge Walls
for (var i = 0; i < GRID_WIDTH; i++) {
	for (var j = 0; j < GRID_HEIGHT; j++) {
		if (GRID[# i, j] != LAND.GROUND)
			continue;
		
		var _left	= (in_bounds(i - 1, j, GRID) && (GRID[# i - 1, j] == LAND.SOLID));
		var _right	= (in_bounds(i + 1, j, GRID) && (GRID[# i + 1, j] == LAND.SOLID));
		var _top	= (in_bounds(i, j - 1, GRID) && (GRID[# i, j - 1] == LAND.SOLID));
		var _bottom	= (in_bounds(i, j + 1, GRID) && (GRID[# i, j + 1] == LAND.SOLID));
		
		if (_left || _right || _top || _bottom)
			GRID[# i, j] = LAND.EMPTY;
	}
}
#endregion

#region Create Walls
for (var i = 0; i < GRID_WIDTH; i++) {
	for (var j = 0; j < GRID_HEIGHT; j++) {
		if (ds_grid_get(GRID, i, j) == LAND.SOLID) {
			// Check That At Least Near 1 Empty Space
			var _left	= (in_bounds(i - 1, j, GRID) && (ds_grid_get(GRID, i - 1, j) == LAND.EMPTY));
			var _right	= (in_bounds(i + 1, j, GRID) && (ds_grid_get(GRID, i + 1, j) == LAND.EMPTY));
			var _top	= (in_bounds(i, j - 1, GRID) && (ds_grid_get(GRID, i, j - 1) == LAND.EMPTY));
			var _bottom	= (in_bounds(i, j + 1, GRID) && (ds_grid_get(GRID, i, j + 1) == LAND.EMPTY));
			
			if (_left || _right || _top || _bottom)
				instance_create_layer(i * UNIT_SIZE, j * UNIT_SIZE, "Dungeon", obj_solid);
		}
	}
}
#endregion

#region Create Borders
for (var i = -1; i <= GRID_WIDTH; i++) {
	instance_create_layer(i * UNIT_SIZE, -1 * UNIT_SIZE, "Dungeon", obj_solid);
	instance_create_layer(i * UNIT_SIZE, GRID_HEIGHT * UNIT_SIZE, "Dungeon", obj_solid);
}

for (var j = -1; j <= GRID_HEIGHT; j++) {
	instance_create_layer(-1 * UNIT_SIZE, j * UNIT_SIZE, "Dungeon", obj_solid);
	instance_create_layer(GRID_WIDTH * UNIT_SIZE, j * UNIT_SIZE, "Dungeon", obj_solid);
}
#endregion

#region Spawn Start Point
var _left_i = GRID_WIDTH;
var _top_j	= GRID_HEIGHT;
for (var i = 0; i < GRID_WIDTH; i++) {
	for (var j = 0; j < GRID_HEIGHT; j++) {
		if (ds_grid_get(GRID, i, j) == LAND.EMPTY) {
			if (i < _left_i && j < _top_j) {
				_left_i = i;
				_top_j  = j;
			}
		}
	}
}

var _world_coords = grid_to_world(_left_i, _top_j);
instance_create_layer(_world_coords[0], _world_coords[1], "Dungeon", obj_start);
#endregion

#region Spawn End Point
var _right_i	= 0;
var _bottom_j	= 0;
for (var i = GRID_WIDTH - 1; i >= 0; i--) {
	for (var j = GRID_HEIGHT - 1; j >= 0; j--) {
		if (ds_grid_get(GRID, i, j) == LAND.EMPTY) {
			if (i > _right_i && j > _bottom_j) {
				_right_i	= i;
				_bottom_j	= j;
			}
		}
	}
}

var _world_coords = grid_to_world(_right_i, _bottom_j);
instance_create_layer(_world_coords[0], _world_coords[1], "Dungeon", obj_end);
#endregion

// Draw Dungeon Tiles
var lay_id	= layer_get_id("Tiles");
var map_id	= layer_tilemap_get_id(lay_id);

for (var i = 0; i < GRID_WIDTH; i++) {
	for (var j = 0; j < GRID_HEIGHT; j++) {
		
		var _world_coords	= grid_to_world(i, j + 1);
		var mx				= tilemap_get_cell_x_at_pixel(map_id, _world_coords[0], _world_coords[1]);
		var my				= tilemap_get_cell_y_at_pixel(map_id, _world_coords[0], _world_coords[1]);
		var data			= tilemap_get(map_id, mx, my);
		
		if (GRID[# i, j] == LAND.SOLID && in_bounds(i, j + 1, GRID) && GRID[# i, j + 1] == LAND.EMPTY) {
			data = tile_set_index(data, irandom_range(95, 97));
			tilemap_set(map_id, data, mx, my);	
		}
		else if (GRID[# i, j] == LAND.SOLID) {
			data = tile_set_index(data, 32);
			tilemap_set(map_id, data, mx, my);	
		}
		else {
			data = tile_set_index(data, 125);	
			tilemap_set(map_id, data, mx, my);	
		}
	}
}





































