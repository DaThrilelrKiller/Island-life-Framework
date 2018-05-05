if(([player,"fishing_pole"] call storage_amount) < 1)exitWith {
	v_fishing = false;
	player removeAction a_fishing;
	false
};

if !(surfaceIsWater getPos player)exitWith {
false
};

true

