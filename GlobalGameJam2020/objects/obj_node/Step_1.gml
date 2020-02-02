if (!exists(repair)) {
	instance_destroy();
	return;
}
	
if (defined(repair))
	depth = repair.depth - 1;