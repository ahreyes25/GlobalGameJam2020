switch (state) {
	case "flying":
		
		// Dont Fly if Dripping
		if (drip) {
			state = "falling";
			return;
		}
	
		x += dir_x;
		y += dir_y;
		
		if (alarm[0] == -1) {
			alarm[1] = fall_time;
			state = "falling";
		}
		
		image_angle -= 10;
		break;
		
	case "falling":
		x += dir_x;
		y -= dir_y;
		
		image_xscale = base_xscale
		
		if (alarm[1] == -1) {
			alarm[2] = sit_time;
			state = "grounded";
		}
		image_angle -= 10;
		break;
		
	case "grounded":
		depth_sort();
		
		image_xscale = base_xscale;
		image_yscale = base_xscale;
	
		if (alarm[2] == -1)
			state = "fading";
		break;
		
	case "fading":
		depth_sort();
		
		image_alpha -= 0.01;
	
		if (image_alpha <= 0)
			state = "destroy";
		break;
		
	case "destroy":
		instance_destroy();
		break;
}