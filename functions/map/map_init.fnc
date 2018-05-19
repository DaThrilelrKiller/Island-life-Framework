[]spawn {
waitUntil {time > 0};
private ["_pos","_pos"];

for [{_i=0}, {_i < (count removeBuilgings)}, {_i=_i+1}] do 
{
	_pos = removeBuilgings select _i select 0;
	_buildingID =  removeBuilgings select _i select 1;
		{
			_pos = profileNamespace getVariable [format["%1",_x],_pos];
			_rb4h = _pos nearestObject _x;
			profileNamespace setVariable [format["%1",_x],getPos _rb4h];
			
			_rb4h attachTo [MapCleanObjects, [0, 0, 0]];
			_rb4h allowDamage false;
		}forEach _buildingID;
};

};