

_findcitys = {
_config = configFile >> "CfgWorlds" >> worldName >> "Names";
_citys = [];

for "_i" from 0 to (count _config)-1 do {
	_class = _config select _i;
	if (isClass _class) then {
	_name = configName(_class);
	_type = getText(_config >> _name >> "type");
	
		if (_type == "NameCity")then {
			_name = getText(_config >> _name >> "Name");
			_pos = getArray(_config >> _name >> "position");
			_radius = getNumber(_config >> _name >> "RadiusA");
			_citys set [count _citys,[_name,_pos,_radius]];
			
		};
	};
};

_citys

};

_enterable = {
	_positions= [];
	_buidlings = _this select 0;
	_name = _this select 1;
	
		{
			private "_x";
			_pos1 = (_x buildingPos 0);
			if (str _pos1 != "[0,0,0]")then {
				_positions set [count _positions,[_name,_pos1]];
			};
		}count _buidlings;
		_positions
};

_cityBuildings = {
_citys = call _findcitys;
_positions = [];
_array = [];
	private "_x";
	{
		private "_x";
		_citypos = _x select 1; 
		_radius = _x select 2;
		_houses = nearestobjects [_citypos, ["House"], _radius];
		_name = _x select 0;
		_positions = [_houses,_name] call _enterable;
		
		_pos = _positions call bis_selectRandom;
		_array set [count _array,_pos];
	}forEach _citys;
	
	_array
};

{
	[_x,_forEachIndex] call s_hooker_create;
}forEach call _cityBuildings;





