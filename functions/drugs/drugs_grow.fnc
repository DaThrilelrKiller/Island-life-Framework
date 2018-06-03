private ["_i","_Zpos","_nubofPlants","_sleep","_config"];
for "_i" from 0 to 1 step 0 do 
{
	_nubofPlants = count ((allMissionObjects "as_p_fiberPlant_EP1") + (allMissionObjects "as_b_PinusM1s_EP1") + (allMissionObjects "as_b_PistaciaL1s_EP1"));
	_nubofPlants = if (_nubofPlants < 1)then {1}else {_nubofPlants};
	_sleep = (60/_nubofPlants);
	
	{
		_data = _x getVariable "data";
		_Zpos = getPos _x select 2;
		if (_Zpos < 0) then 
		{
			if ([90]call Main_Random)then
			{
			_x setPos [getPos _x select 0, getPos _x select 1, _Zpos + 0.1];
			};
		};
		if (_Zpos >= 0 && {!isNil "_data"})then {
		
			_config = _x call s_drugs_config;

			_x call core_setVarName;
			_x setVariable ["data",_config,true];		
		};
		
		
		sleep _sleep;
		true
	}count  (allMissionObjects "as_p_fiberPlant_EP1") + (allMissionObjects "as_b_PinusM1s_EP1") + (allMissionObjects "as_b_PistaciaL1s_EP1");
};