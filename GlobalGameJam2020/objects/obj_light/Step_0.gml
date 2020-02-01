if (defined(owner) && !exists(owner)) {
	instance_destroy();
	return;
}

// Stick
if (defined(owner)) {
	if (!defined(dif_x))
		dif_x = owner.x - x;
	if (!defined(dif_y))
		dif_y = owner.y - y;	
	if (defined(dif_x) && defined(dif_y)) {
		x = owner.x - dif_x;
		y = owner.y - dif_y;
	}
}

// Flicker
if (flicker) {
	var _min_flicker	= scale - (flicker_amount * 3);
	var _max_flicker	= scale + (flicker_amount * 3);
	var _flick			= flicker_scale + random_range(-flicker_amount, flicker_amount);
	flicker_scale		= clamp(_flick, _min_flicker, _max_flicker);
}