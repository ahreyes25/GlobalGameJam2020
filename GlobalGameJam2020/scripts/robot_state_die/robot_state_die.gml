image_alpha -= 0.01;

if (image_alpha <= 0)
	instance_destroy();
	
obj_game_controller.alarm[1] = 60 * 5;