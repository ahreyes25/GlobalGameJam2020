for (var i = 0; i < ds_list_size(left_nodes); i++)
	instance_destroy(left_nodes[| i]);	
for (var i = 0; i < ds_list_size(right_nodes); i++)
	instance_destroy(right_nodes[| i]);	

ds_list_destroy(left_nodes);
ds_list_destroy(right_nodes);