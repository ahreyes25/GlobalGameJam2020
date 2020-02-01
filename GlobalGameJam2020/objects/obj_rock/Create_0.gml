event_inherited();

sprite_index = choose(
	spr_rock_small,
	spr_rock_small,
	spr_rock_small,
	spr_rock_small,
	spr_rock_small,
	spr_rock_small,
	spr_rock_small,
	spr_rock_medium, 
	spr_rock_medium, 
	spr_rock_medium, 
	spr_rock_tall, 
	spr_rock_tall, 
	spr_rock_tall, 
	spr_rock_tall, 
	spr_rock_tall, 
	spr_rock_tall, 
	spr_rock_large
);
image_speed	 = 0;
image_index	 = irandom(image_number - 1);

var _other_rock = collision_rectangle(bbox_left - sprite_width / 2, bbox_top - sprite_height / 2, bbox_right + sprite_width / 2, bbox_bottom + sprite_height / 2, obj_rock, false, true);
var _while_count = 0;
while (defined(_other_rock)) {
	if (_other_rock.x > x)
		x--;
	else
		x++;
		
	if (_other_rock.y > y)
		y--;
	else
		y++;
	_other_rock = collision_rectangle(bbox_left - sprite_width / 2, bbox_top - sprite_height / 2, bbox_right + sprite_width / 2, bbox_bottom + sprite_height / 2, obj_rock, false, true);
	
	_while_count++;
	if (_while_count > 100)
		break;
}