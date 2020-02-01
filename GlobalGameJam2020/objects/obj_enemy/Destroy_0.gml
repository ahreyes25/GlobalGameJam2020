path_delete(path);

var _expl = animate_object_create(x, bbox_bottom, spr_explosion, depth - 1, 1, 2, id, 1, false);
_expl.image_xscale = choose(-0.25, 0.25);
_expl.image_yscale = 0.25;
_expl.image_blend  = choose(c_white, c_white, c_white, c_white, c_white, c_white, c_gray, c_black, c_dkgray);