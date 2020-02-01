event_inherited();

#region Death
if (life <= 0 && state != player_state_death) {
	state = player_state_death;	
	image_index = 0;
	path_end_all();
	alarm[alarm_knockback] = -1;
} 
#endregion