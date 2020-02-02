var _robot_x = room_width / 2 - 32;
var _robot_y = room_height * 0.6;
//draw_sprite_ext(spr_shadow, 0, _robot_x, _robot_y, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_robot_idle,  robot_sprite_image_index, _robot_x, _robot_y, 0.5, 0.5, 0, c_white, 1);

var _player_x = room_width / 2 + 32;
var _player_y = room_height * 0.6;
//draw_sprite_ext(spr_shadow, 0, _player_x, _player_y, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_player_idle, player_sprite_image_index, _player_x, _player_y, -0.5, 0.5, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text_transformed(room_width / 2, room_height * 0.75, "Press Any Key To Start.", 1, 1, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);