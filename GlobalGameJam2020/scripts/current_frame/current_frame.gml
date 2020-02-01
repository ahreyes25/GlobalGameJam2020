/// @param id*

#region Arguments
if (argument_count == 1)
	var _obj = argument[0];
else
	var _obj = id;
#endregion
var _frame = _obj.image_index;
return floor(_obj.image_index);