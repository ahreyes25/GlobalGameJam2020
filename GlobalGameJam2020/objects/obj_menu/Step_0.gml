robot_sprite_image_index  += robot_sprite_image_speed;
player_sprite_image_index += player_sprite_image_speed;

if (keyboard_check_pressed(vk_f5))
	window_set_fullscreen(!window_get_fullscreen());
else if (keyboard_check_pressed(vk_escape))
	game_end();
else if (keyboard_check_pressed(vk_anykey) || mouse_check_button(mb_left) || mouse_check_button(mb_right))
	room_goto_next();