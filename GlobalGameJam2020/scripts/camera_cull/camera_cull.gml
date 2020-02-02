var _padding = UNIT_SIZE * 6;
if (
	x >= (obj_camera.x - obj_camera.width  / 2) - _padding &&
	x <= (obj_camera.x + obj_camera.width  / 2) + _padding &&
	y >= (obj_camera.y - obj_camera.height / 2) - _padding &&
	y <= (obj_camera.y + obj_camera.height / 2) + _padding
) {
	visible = true;	
}
else
	visible = false;