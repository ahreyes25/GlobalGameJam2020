obj_stats.points++;
obj_stats.level++;
obj_stats.n_spawners				= 0;
obj_stats.n_spawns_allowed			+= 1;
obj_stats.n_enemies_on_screen		= 0;
obj_stats.max_enemies_on_screen		+= 10;
obj_stats.enemy_bullet_damage		+= 3;
obj_stats.enemy_explosion_damage	+= 10;
obj_stats.rock_life					+= 1;

room_restart();