enum LAND 
{ 
	SOLID,
	EMPTY, 
}

enum DIR
{
	LEFT,
	RIGHT,
	UP,
	DOWN,
	NONE
}

global.grid_unit_size	= 16;
#macro UNIT_SIZE		global.grid_unit_size
global.grid_width		= room_width / UNIT_SIZE;	// 64
#macro GRID_WIDTH		global.grid_width
global.grid_height		= room_height / UNIT_SIZE;	// 48
#macro GRID_HEIGHT		global.grid_height
global.grid				= ds_grid_create(GRID_WIDTH, GRID_HEIGHT);
#macro GRID				global.grid
global.dungeon_space	= 0;
#macro SPACE			global.dungeon_space

// Set To All Solid
for (var i = 0; i < GRID_WIDTH; i++) {
	for (var j = 0; j < GRID_HEIGHT; j++) {
		ds_grid_set(GRID, i, j, LAND.SOLID);
	}	
}



