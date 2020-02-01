// General
pid					= undefined;
dead				= false;
takes_input			= true;		// player or npc?
gamepad_plugged_in	= false;
can_act				= true;		// currently has control? used for cutscenes and dialogue
life_base			= 6;
life				= life_base;

// States
state				= undefined;
previous_state		= undefined;
ran_exit_state		= false;

// Movement
move_stats_create();
move_stats_update();
move_speed = walk_speed;

path = path_add();
path_set_kind(path, 0);
path_set_closed(path, false);

// States
hurt_state = undefined;

// Sprites
facing	= DIR.RIGHT;
scale	= 1;

// Flags
can_be_hurt			= true;

// Other
cursor		= undefined;
sfx_emitter	= audio_emitter_create();