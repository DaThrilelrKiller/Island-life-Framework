private ["_time","_function"];

for "_i" from 0 to 1000 step 0.5 do 
{

	{
		_time = _x select 0;
		if (_i % _time == 0) then {
			_function = _x select 1;
			if (typeName _function == "CODE")then {
				call _function;
			}else{
				_prams = _this select 0;
				_code = _this select 1;
				_prams execVM _code;
			};
		};

	}count core_loop_array;
	uiSleep 0.5;
if (_i == 1000)then {_i = 0;};
};