if (life <= 0)
	instance_destroy();
	
if (flashing && alarm[1] == -1)
	alarm[1] = 3;
	
audio_emitter_position(sfx_emitter, x, y, 0)