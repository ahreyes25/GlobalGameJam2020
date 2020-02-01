if (
	x >= (obj_camera.x - obj_camera.width  / 2) - UNIT_SIZE &&
	x <= (obj_camera.x + obj_camera.width  / 2) + UNIT_SIZE &&
	y >= (obj_camera.y - obj_camera.height / 2) - UNIT_SIZE &&
	y <= (obj_camera.y + obj_camera.height / 2) + UNIT_SIZE
) {
	visible = true;	
}
else
	visible = false;