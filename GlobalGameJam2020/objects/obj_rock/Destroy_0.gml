//rock_bit_create(x, y, irandom_range(1, 3), depth - 1);
var _cloud = animate_object_create((bbox_left + bbox_right) / 2, bbox_bottom, spr_dust_cloud, depth - 1, 1, 1.5, id, 1, false);
_cloud.image_alpha = 0.75;

if (sprite_index == spr_rock_small) {
	_cloud.image_xscale = 0.5;
	_cloud.image_yscale = 0.5;
}
else if (sprite_index == spr_rock_medium || sprite_index == spr_rock_tall) {
	_cloud.image_xscale = 0.75;
	_cloud.image_yscale = 0.75;
}

part_particles_create(global.part_system, x, (bbox_top + bbox_bottom) / 2, global.pt_dust_smoke, 5);