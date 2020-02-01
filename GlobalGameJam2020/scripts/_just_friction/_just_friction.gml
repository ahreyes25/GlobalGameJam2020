if (hspd > 0) {
	if (hspd >= fric)
		hspd -= fric;
	else
		hspd = 0;
}

if (hspd < 0) {
	if (hspd <= fric)
		hspd += fric;
	else
		hspd = 0;
}

if (vspd > 0) {
	if (vspd >= fric)
		vspd -= fric;
	else
		vspd = 0;
}

if (vspd < 0) {
	if (vspd <= fric)
		vspd += fric;
	else
		vspd = 0;
}