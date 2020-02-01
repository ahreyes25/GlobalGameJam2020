if (variable_instance_exists(focus_target, "facing")) {
	if (focus_target.facing == DIR.UP)
		y_to -= leading_y;
	else if (focus_target.facing == DIR.DOWN)
		y_to += leading_y;
}
else
	y_to += leading_y;	