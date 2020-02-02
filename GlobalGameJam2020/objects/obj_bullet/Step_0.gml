x += dir_x * travel_speed;
y += dir_y * travel_speed;

var _dest	= collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_destructable, false, false);
var _solid	= collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, false, false);
var _enemy	= collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy, false, false);
var _robot	= collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_robot, false, false);

// Destructable
if (defined(_dest)) {
	_dest.life -= damage;	
	_dest.flashing = true;
	animate_object_create(x, y, spr_muzzle_flash, _dest.depth - 1, 1, 2, id, 1, false);
	instance_destroy();
}
	
// Enemy
if (defined(_enemy)) {
	_enemy.life -= damage;	
	_enemy.flashing = true;
	animate_object_create(x, y, spr_muzzle_flash, _enemy.depth - 1, 1, 2, id, 1, false);
	instance_destroy();
}
	
// Solid
if (defined(_solid)) {
	animate_object_create(x, y, spr_muzzle_flash, _solid.depth - 1, 1, 2, id, 1, false);
	instance_destroy();
}

// Robot
if (defined(_robot)) {
	robot_damage(10);
	animate_object_create(x, y, spr_muzzle_flash, _robot.depth - 1, 1, 2, id, 1, false);
	instance_destroy();
}