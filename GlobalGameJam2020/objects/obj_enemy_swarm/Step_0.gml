event_inherited();

if (x < obj_camera.x + obj_camera.width / 2 && x > obj_camera.x - obj_camera.width / 2 && y < obj_camera.y + obj_camera.height / 2 && y > obj_camera.y - obj_camera.height / 2) {
	if (visible && !playing_sound) {
		sfx_play_array(sfx_emitter, sfx_swarm_step,1);
		playing_sound = true;
	}
}