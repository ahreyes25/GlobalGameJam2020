camera_cull();

if (life <= 0)
	instance_destroy();

if (flashing && alarm[0] == -1)
	alarm[0] = flash_time;