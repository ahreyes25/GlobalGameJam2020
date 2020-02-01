x += dir_x * travel_speed;
y += dir_y * travel_speed;

var _dest	= collision_point(x, y, obj_destructable, false, false);
var _solid	= collision_point(x, y, obj_solid, false, false);

if (defined(_dest) || defined(_solid)) {
	
	if (defined(_dest))
		_dest.life -= damage;	
	
	instance_destroy();
	if (defined(_solid))
		animate_object_create(x, y, spr_muzzle_flash, _solid.depth - 1, 1, 2, id, 1, false);
	else
		animate_object_create(x, y, spr_muzzle_flash, _dest.depth - 1, 1, 2, id, 1, false);
}