event_inherited();

gun				= instance_create_layer(x, y, "Instances", obj_gun_enemy);
gun.owner		= id;
state			= enemy_gun_state_idle;
target_move		= obj_robot;
target_shoot	= obj_robot;
shoot_rate		= 30;
move_speed		= 2;
shoot_range		= 300;
facing			= DIR.RIGHT;
scale			= 1;
gun_tip_x		= x;
gun_tip_y		= y;
flashing		= false;
life			= obj_stats.enemy_shoot_life;