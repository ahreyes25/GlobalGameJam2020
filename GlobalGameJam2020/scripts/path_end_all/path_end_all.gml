/// @param obj*

#region Arguments
if (argument_count == 1)
	var _obj = argument[0];
else
	var _obj = id;
#endregion

// Clear & End Path
with (_obj) {
	path_end();

	if (variable_instance_exists(id, "path"))
		path_clear_points(path);
		
	path_position = 0;
}