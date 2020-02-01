/// @param percent

var _perc = argument0;

while (_perc > 1)
	_perc /= 10;

return (random(1) < _perc);