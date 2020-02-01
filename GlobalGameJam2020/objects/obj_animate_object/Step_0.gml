#region Stick
// Store Starting
if (exists(owner)) {
	if (!defined(dif_x))
		dif_x = owner.x - x;
	if (!defined(dif_y))
		dif_y = owner.y - y;
}
	
// Stick to Relative Owner Position
if (exists(owner)) {
	if (stick && defined(dif_x) && defined(dif_y)) {
		x = owner.x - dif_x;
		y = owner.y - dif_y;
	}
	
	if (!defined(depth_dif))
		depth_dif = depth - owner.depth;
}
#endregion