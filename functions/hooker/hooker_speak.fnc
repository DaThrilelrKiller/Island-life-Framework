_unit = _this select 0;
_text = _this select 1;
_value = 0;

_hooker = nearestobjects [getPos _unit, hooker_classes, 10]select 0; 
if (isNil "_hooker")exitWith {};


{
	_found = [_text,_x select 0]call array_compare;
	if (_found > _value)then {
		_value = _found;
		_data = _x;
	};
}forEach machine_learning;

[_unit,_hooker,_text]call ((_x select 1)call bis_selectRandom);
