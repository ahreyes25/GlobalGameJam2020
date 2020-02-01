image_xscale	= 1; 
image_yscale	= image_xscale;
base_xscale		= image_xscale;

dir				= random(360);
dir_x			= lengthdir_x(5, dir);
dir_y			= lengthdir_y(2, dir);
fall_time		= irandom_range(3, 10);
launch_time		= irandom_range(5, 6);
sit_time		= 60;
drip			= false;

state			= "flying";
alarm[0]		= launch_time;

image_spd_base	= 1.0;
image_speed		= 0;