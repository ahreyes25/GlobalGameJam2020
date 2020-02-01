/// @description	Get input and store inside reusable vars.
/// @param pid*		-- real (optional)	-- PID Enum

#region Get Player Id
if (argument_count == 1)
	var _pid = argument[0];
else
	var _pid = pid;
#endregion

// Keyboard Input
var _k_right			= global.player_data[_pid, PP.KEY_RIGHT];
var _k_left				= global.player_data[_pid, PP.KEY_LEFT];
var _k_up				= global.player_data[_pid, PP.KEY_UP];
var _k_down				= global.player_data[_pid, PP.KEY_DOWN];
var _k_roll				= global.player_data[_pid, PP.KEY_ROLL];
var _k_attack			= global.player_data[_pid, PP.KEY_ATTACK];
var _k_charge_attack	= global.player_data[_pid, PP.KEY_CHARGE_ATTACK];
var _k_interact			= global.player_data[_pid, PP.KEY_INTERACT];
var _k_heal				= global.player_data[_pid, PP.KEY_HEAL];
var _k_action			= global.player_data[_pid, PP.KEY_RIGHT];
var _k_enter			= global.player_data[_pid, PP.KEY_ENTER];
var _k_recall			= global.player_data[_pid, PP.KEY_RECALL];
var _k_modifier			= global.player_data[_pid, PP.KEY_MODIFIER];
var _k_return			= global.player_data[_pid, PP.KEY_RETURN];

key_right					= keyboard_check(_k_right);
key_right_pressed			= keyboard_check_pressed(_k_right);
key_left					= keyboard_check(_k_left);
key_left_pressed			= keyboard_check_pressed(_k_left);
key_up						= keyboard_check(_k_up);
key_up_pressed				= keyboard_check_pressed(_k_up);
key_down					= keyboard_check(_k_down);
key_down_pressed			= keyboard_check_pressed(_k_down);
key_roll					= keyboard_check(_k_roll);
key_roll_pressed			= keyboard_check_pressed(_k_roll);
key_attack					= keyboard_check(_k_attack);
key_attack_pressed			= keyboard_check_pressed(_k_attack);
key_interact				= keyboard_check(_k_interact);
key_interact_pressed		= keyboard_check_pressed(_k_interact);
key_heal					= keyboard_check(_k_heal);
key_action					= mouse_check_button(_k_action);
key_enter					= keyboard_check(_k_enter);
key_recall					= mouse_check_button_pressed(_k_recall) || mouse_check_button_pressed(mb_left);;
key_charge_attack			= mouse_check_button(_k_charge_attack);
key_charge_attack_released	= mouse_check_button_released(_k_charge_attack);
key_modifier				= keyboard_check(_k_modifier);
key_return					= keyboard_check_pressed(_k_return);

// Gamepad Input
var _gp_threshold		= global.player_data[_pid, PP.GP_THRESHOLD];
var _gp_port			= global.player_data[_pid, PP.GP_PORT];
var _gp_move_axis_horiz = global.player_data[_pid, PP.GP_MOVE_AXIS_HORIZ];
var _gp_move_axis_vert	= global.player_data[_pid, PP.GP_MOVE_AXIS_VERT];
var _gp_aim_axis_horiz	= global.player_data[_pid, PP.GP_AIM_AXIS_HORIZ];
var _gp_aim_axis_vert	= global.player_data[_pid, PP.GP_AIM_AXIS_VERT];
var _gp_right			= global.player_data[_pid, PP.GP_RIGHT];
var _gp_left			= global.player_data[_pid, PP.GP_LEFT];
var _gp_up				= global.player_data[_pid, PP.GP_UP];
var _gp_down			= global.player_data[_pid, PP.GP_DOWN];
var _gp_roll			= global.player_data[_pid, PP.GP_ROLL];
var _gp_attack			= global.player_data[_pid, PP.GP_ATTACK];
var _gp_charge_attack	= global.player_data[_pid, PP.GP_CHARGE_ATTACK];
var _gp_interact		= global.player_data[_pid, PP.GP_INTERACT];
var _gp_heal			= global.player_data[_pid, PP.GP_HEAL];
var _gp_action			= global.player_data[_pid, PP.GP_RIGHT];
var _gp_enter			= global.player_data[_pid, PP.GP_ENTER];
var _gp_recall			= global.player_data[_pid, PP.GP_RECALL];
var _gp_modifier		= global.player_data[_pid, PP.GP_MODIFIER];
var _gp_return			= global.player_data[_pid, PP.GP_RETURN];

if (gamepad_is_connected(_gp_port)) {
	//gamepad_set_axis_deadzone(_gp_port, _gp_threshold);
	
	if (!global.inverted_joystick) {
		key_right				= key_right || (gamepad_axis_value(_gp_port, _gp_move_axis_horiz) >= _gp_threshold);
		key_left				= key_left	|| (gamepad_axis_value(_gp_port, _gp_move_axis_horiz) <= -_gp_threshold);
		key_up					= key_up	|| (gamepad_axis_value(_gp_port, _gp_move_axis_vert)  <= -_gp_threshold);
		key_down				= key_down	|| (gamepad_axis_value(_gp_port, _gp_move_axis_vert)  >= _gp_threshold);
	}
	else {
		key_right				= key_right || (gamepad_axis_value(_gp_port, _gp_move_axis_horiz) <= -_gp_threshold);
		key_left				= key_left	|| (gamepad_axis_value(_gp_port, _gp_move_axis_horiz) >= _gp_threshold);
		key_up					= key_up	|| (gamepad_axis_value(_gp_port, _gp_move_axis_vert)  >= _gp_threshold);
		key_down				= key_down	|| (gamepad_axis_value(_gp_port, _gp_move_axis_vert)  <= -_gp_threshold);
	}
	key_right_pressed			= key_right_pressed || gamepad_button_check_pressed(_gp_port, _gp_right);
	key_left_pressed			= key_left_pressed	|| gamepad_button_check_pressed(_gp_port, _gp_left);
	key_up_pressed				= key_up_pressed	|| gamepad_button_check_pressed(_gp_port, _gp_up);
	key_down_pressed			= key_down_pressed	|| gamepad_button_check_pressed(_gp_port, _gp_down);
	
	key_roll					= key_roll						|| gamepad_button_check(_gp_port, _gp_roll);
	key_roll_pressed			= key_roll_pressed				|| gamepad_button_check_pressed(_gp_port, _gp_roll);
	key_attack					= key_attack					|| gamepad_button_check(_gp_port, _gp_attack);
	key_attack_pressed			= key_attack_pressed			|| gamepad_button_check_pressed(_gp_port, _gp_attack);
	key_interact				= key_interact					|| gamepad_button_check(_gp_port, _gp_interact);
	key_interact_pressed		= key_interact_pressed			|| gamepad_button_check_pressed(_gp_port, _gp_interact);
	key_heal					= key_heal						|| gamepad_button_check(_gp_port, _gp_heal);
	key_action					= key_action					|| gamepad_button_check(_gp_port, _gp_action);
	key_enter					= key_enter						|| gamepad_button_check(_gp_port, _gp_enter);
	key_recall					= key_recall					|| gamepad_button_check(_gp_port, _gp_recall);
	key_charge_attack			= key_charge_attack				|| gamepad_button_check(_gp_port, _gp_charge_attack);
	key_charge_attack_released	= key_charge_attack_released	|| gamepad_button_check_released(_gp_port, _gp_charge_attack);
	key_modifier				= key_modifier					|| gamepad_button_check(_gp_port, _gp_modifier);
	key_return					= key_return					|| gamepad_button_check_pressed(_gp_port, _gp_return);
}

key_none =  !key_right && !key_left && !key_up && !key_down && !key_roll && !key_attack && !key_interact && !key_heal &&
			!key_action	&& !key_enter && !key_recall && !key_charge_attack && !key_modifier && !key_return;