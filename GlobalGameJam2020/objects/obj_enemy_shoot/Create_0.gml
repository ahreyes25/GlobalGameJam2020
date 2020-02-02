event_inherited();

gun				= instance_create_layer(x, y, "Instances", obj_gun_enemy);
gun.owner		= id;
state			= enemy_gun_state_idle;
target_move		= obj_robot;
target_shoot	= obj_robot;
move_speed		= 1;
shoot_range		= 300;
facing			= DIR.RIGHT;
scale			= 1;
gun_tip_x		= x;
gun_tip_y		= y;