#region Player Props Enums
enum PP { 
	// Keyboard
	KEY_RIGHT,
	KEY_LEFT, 
	KEY_UP, 
	KEY_DOWN, 
	KEY_ROLL, 
	KEY_ATTACK, 
	KEY_CHARGE_ATTACK, 
	KEY_INTERACT,
	KEY_HEAL, 
	KEY_ACTION, 
	KEY_ENTER, 
	KEY_RECALL, 
	KEY_MODIFIER, 
	KEY_SPECIAL, 
	KEY_RETURN,
	KEY_NAMES,
	
	// Gamepad
	GP_THRESHOLD, 
	GP_PORT,
	GP_MOVE_AXIS_HORIZ, 
	GP_MOVE_AXIS_VERT, 
	GP_AIM_AXIS_HORIZ, 
	GP_AIM_AXIS_VERT, 
	GP_RIGHT, 
	GP_LEFT, 
	GP_UP, 
	GP_DOWN,
	GP_ROLL, 
	GP_ATTACK, 
	GP_CHARGE_ATTACK, 
	GP_INTERACT,
	GP_HEAL, 
	GP_ACTION, 
	GP_ENTER, 
	GP_RECALL, 
	GP_MODIFIER,
	GP_RETURN,
	GP_NAMES,
}
#endregion

// Keyboard Controls
global.player_data[PID.P1, PP.KEY_RIGHT]			= ord("D");
global.player_data[PID.P1, PP.KEY_LEFT]				= ord("A");          
global.player_data[PID.P1, PP.KEY_UP]				= ord("W");
global.player_data[PID.P1, PP.KEY_DOWN]				= ord("S");
global.player_data[PID.P1, PP.KEY_ATTACK]			= ord("M");
global.player_data[PID.P1, PP.KEY_CHARGE_ATTACK]	= mb_right;
global.player_data[PID.P1, PP.KEY_RECALL]			= mb_right;
global.player_data[PID.P1, PP.KEY_ROLL]				= vk_space;
global.player_data[PID.P1, PP.KEY_INTERACT]			= ord("E");
global.player_data[PID.P1, PP.KEY_HEAL]				= ord("Q");
global.player_data[PID.P1, PP.KEY_ACTION]			= mb_left;
global.player_data[PID.P1, PP.KEY_ENTER]			= vk_enter;
global.player_data[PID.P1, PP.KEY_MODIFIER]			= vk_lshift;
global.player_data[PID.P1, PP.KEY_RETURN]			= vk_backspace;

// Gamepad Controls         
global.player_data[PID.P1, PP.GP_THRESHOLD]			= 0.1;
global.player_data[PID.P1, PP.GP_PORT]				= 0;
global.player_data[PID.P1, PP.GP_MOVE_AXIS_HORIZ]	= gp_axislh;
global.player_data[PID.P1, PP.GP_MOVE_AXIS_VERT]	= gp_axislv;
global.player_data[PID.P1, PP.GP_AIM_AXIS_HORIZ]	= gp_axisrh;
global.player_data[PID.P1, PP.GP_AIM_AXIS_VERT]		= gp_axisrv;
global.player_data[PID.P1, PP.GP_RIGHT]				= gp_padr;
global.player_data[PID.P1, PP.GP_LEFT]				= gp_padl;
global.player_data[PID.P1, PP.GP_UP]				= gp_padu;
global.player_data[PID.P1, PP.GP_DOWN]				= gp_padd;
global.player_data[PID.P1, PP.GP_ATTACK]			= gp_face3;
global.player_data[PID.P1, PP.GP_CHARGE_ATTACK]		= gp_shoulderr;
global.player_data[PID.P1, PP.GP_RECALL]			= gp_shoulderr;
global.player_data[PID.P1, PP.GP_ROLL]				= gp_shoulderl;
global.player_data[PID.P1, PP.GP_INTERACT]			= gp_face1;
global.player_data[PID.P1, PP.GP_HEAL]				= gp_face4;
global.player_data[PID.P1, PP.GP_ACTION]			= gp_face2;
global.player_data[PID.P1, PP.GP_ENTER]				= gp_start;
global.player_data[PID.P1, PP.GP_MODIFIER]			= gp_shoulderlb;
global.player_data[PID.P1, PP.GP_RETURN]			= gp_select;