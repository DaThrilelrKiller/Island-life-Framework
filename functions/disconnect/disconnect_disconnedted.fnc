_unit = _this call core_nametoplayer;
_array = _unit getVariable ["disconnect",[]];

{
	diag_log text format ["[LOG] %1 %2 | %3 %4 - Disconnect Delete",_x,typeOf _x,_unit,_this];
	{
		deleteVehicle _x;
		diag_log text format ["[LOG] %1 %2 | %3 %4 - Disconnect Delete",_x,typeOf _x,_unit,_this];
	}forEach (crew _x);
	deleteVehicle _x;
	
}forEach _array;
