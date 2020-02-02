if (!defined(owner)) {
	instance_destroy();
	return;
}

if (owner.equipped != id)
	return;

x = owner.x;
y = (owner.bbox_top + owner.bbox_bottom) / 2 - 10;
depth = owner.depth - 1;

image_xscale = owner.image_xscale;

watering = mouse_check_button(mb_left);
if (watering) {
	sprite_index = spr_watering_can_water;
	image_speed = 1;
	if (CURRENT_TIME_FRAME mod 100 == 0) {
		fadeout_object_create(x + (8 * sign(image_xscale)), bbox_bottom, spr_water, owner.depth + 1, 1, id, 0.1, 0.005, 30, c_black, 0, 0, 0, 0);
		sfx_play_array(owner.sfx_emitter, sfx_water);
	}
}
else {
	sprite_index = spr_watering_can;
	image_speed = 0;
}

// Water Cactus
if (owner.touching_robot && watering && obj_robot.glass_health <= 0)
	obj_robot.plant_health = clamp(obj_robot.plant_health + 0.1, 0, 100);	