event_inherited();

var _expl = animate_object_create(x, bbox_bottom, spr_explosion, depth - 1, 1, 2, id, 1, false);
_expl.image_xscale = random_range(0.25, .5) * choose(-1, 1);
_expl.image_yscale = abs(_expl.image_xscale);
_expl.image_blend  = choose(c_white, c_white, c_white, c_white, c_white, c_white, c_gray, c_black, c_dkgray);