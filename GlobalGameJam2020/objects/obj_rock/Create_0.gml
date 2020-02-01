sprite_index = choose(
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
	spr_rock_large
);
image_speed	 = 0;
image_index	 = irandom(image_number - 1);

var _other_rock = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_rock, false, true);
while (defined(_other_rock)) {
	if (_other_rock.x > x)
		x--;
	else
		x++;
		
	if (_other_rock.y > y)
		y--;
	else
		y++;
	_other_rock = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_rock, false, true);
}