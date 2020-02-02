var _spawn	= choose(obj_enemy_shoot, obj_enemy_swarm);
var _en		= instance_create_layer(x, y, "Instances", _spawn);
_en.depth	= depth - 1;