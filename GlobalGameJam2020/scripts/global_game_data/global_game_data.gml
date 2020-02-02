enum LAND			{ SOLID, EMPTY, GROUND}
enum DIR			{ NONE, LEFT = -1, RIGHT = 1, UP, DOWN }
enum PID			{ P1, P2 }
enum COLOR_MODE		{ NORMAL }
enum _				{ X, Y, DIR, DEPTH }
enum SWITCH			{ ON, OFF, MID }
enum SPRITE			{ INDEX, SPEED }

global.grid_unit_size	= 64;
#macro UNIT_SIZE		global.grid_unit_size
global.grid_width		= floor(room_width / UNIT_SIZE);
#macro GRID_WIDTH		global.grid_width		  
global.grid_height		= floor(room_height / UNIT_SIZE);
#macro GRID_HEIGHT		global.grid_height
global.grid				= ds_grid_create(GRID_WIDTH, GRID_HEIGHT);
#macro GRID				global.grid
global.dungeon_space	= 0;
#macro SPACE			global.dungeon_space

global.open_spaces		= ds_list_create();
#macro OPEN_SPACES		global.open_spaces

// Set To All Solid
for (var i = 0; i < GRID_WIDTH; i++) {
	for (var j = 0; j < GRID_HEIGHT; j++) {
		ds_grid_set(GRID, i, j, LAND.SOLID);
	}	
}

// MP Grid
global.mp_grid = mp_grid_create(0, 0, GRID_WIDTH, GRID_HEIGHT, UNIT_SIZE, UNIT_SIZE);
#macro MP_GRID global.mp_grid

// User Settings
global.screen_shake_mult	= 1.0;
#macro SHAKE_MULT			global.screen_shake_mult
global.screen_flash_mult	= 1.0;
#macro FLASH_MULT			global.screen_flash_mult
global.sound_mult			= 0.0;
global.music_mult			= 0.0;

// Audio
audio_falloff_set_model(audio_falloff_linear_distance);
audio_master_gain(global.sound_mult);
audio_listener_orientation(0, 1, 0, 0, 0, 1);

// Other
global.current_time_frame	= 0;
#macro CURRENT_TIME_FRAME	global.current_time_frame

global.n_spawners			= 0;
global.n_spawns_allowed		= 10;