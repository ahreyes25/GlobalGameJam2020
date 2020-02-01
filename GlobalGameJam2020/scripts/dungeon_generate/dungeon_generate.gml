// Dungeon Generate

if (!ds_exists(GRID, ds_type_grid))
	return false;	
	
var _start_i			= irandom(GRID_WIDTH / 2);
var _start_j			= irandom(GRID_HEIGHT / 2);
var _room_width_min		= 4;
var _room_width_max		= 12;
var _room_height_min	= 4;
var _room_height_max	= 8;
var _hall_width_min		= 1;
var _hall_width_max		= 1;
var _hall_length_min	= 4;
var _hall_length_max	= 8;
var _iterations			= 300;
var _room_chance		= 0.3;
var _hall_chance		= 0.5;
var _i					= _start_i;
var _j					= _start_j;
var _last_dir			= irandom(3);

for (var i = 0; i < _iterations; i++) {
	
	// Generate Hall
	if (chance(_hall_chance)) {
		var _exit_point = dungeon_create_hall(_i, _j, irandom_range(_hall_width_min, _hall_width_max), irandom_range(_hall_length_min, _hall_length_max));
		_i = _exit_point[0];
		_j = _exit_point[1];
	}
	// Generate Room
	else if (chance(_room_chance)) {
		dungeon_create_room(_i, _j, irandom_range(_room_width_min, _room_width_max), irandom_range(_room_height_min, _room_height_max));
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
			ds_grid_set(GRID, _i, _j, LAND.EMPTY);
	}
}

for (var i = 0; i < GRID_WIDTH; i++) {
	for (var j = 0; j < GRID_HEIGHT; j++) {
		if (ds_grid_get(GRID, i, j) == LAND.SOLID)
			instance_create_layer(i * UNIT_SIZE, j * UNIT_SIZE, "Dungeon", obj_solid);
	}
}

// Create Top & Bottom Borders
for (var i = -1; i <= GRID_WIDTH; i++) {
	instance_create_layer(i * UNIT_SIZE, -1 * UNIT_SIZE, "Dungeon", obj_solid);
	instance_create_layer(i * UNIT_SIZE, GRID_HEIGHT * UNIT_SIZE, "Dungeon", obj_solid);
}

// Create Left & Right Borders
for (var j = -1; j <= GRID_HEIGHT; j++) {
	instance_create_layer(-1 * UNIT_SIZE, j * UNIT_SIZE, "Dungeon", obj_solid);
	instance_create_layer(GRID_WIDTH * UNIT_SIZE, j * UNIT_SIZE, "Dungeon", obj_solid);
}




















