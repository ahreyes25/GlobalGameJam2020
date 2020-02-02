/// @param id*

#region Arguments
if (argument_count == 1)
	var _obj = argument[0];
else
	var _obj = id;
#endregion

return floor(_obj.image_index);