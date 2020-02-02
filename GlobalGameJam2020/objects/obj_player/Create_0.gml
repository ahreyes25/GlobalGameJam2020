event_inherited();

// General
pid				= PID.P1
state			= player_state_idle;
scale			= 1;
roll_cooldown	= 30;
repairing		= false;

#region Alarms
alarm_knockback		= 2;
alarm_roll_cooldown	= 4;
#endregion

// Other 
cursor			= instance_create_layer(x, y, "Controllers", obj_cursor);
cursor.owner	= id;
gun				= instance_create_layer(x, (bbox_top + bbox_bottom) * 0.75, "Instances", obj_gun);
gun.owner		= id;
lights			= light_double_create(x, y - 24);