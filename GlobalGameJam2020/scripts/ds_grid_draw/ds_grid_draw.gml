/// @param grid
/// @param x
/// @param y
/// @param space_between

var _grid	= argument0;
var _x		= argument1;
var _y		= argument2;
var _space	= argument3;

for (var i = 0; i < ds_grid_width(_grid); i++) {
	for (var j = 0; j < ds_grid_height(_grid); j++) {
		draw_text(_x + (i * _space), _y + (j * _space), ds_grid_get(_grid, i, j));
	}
}