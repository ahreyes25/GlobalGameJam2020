/// @param i
/// @param j
/// @param grid

var _i		= argument0;
var _j		= argument1;
var _grid	= argument2;

var _grid_width		= ds_grid_width(_grid);
var _grid_height	= ds_grid_height(_grid);
return (_i >= 0 && _i < _grid_width && _j >= 0 && _j < _grid_height);