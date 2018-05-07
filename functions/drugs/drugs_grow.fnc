private ["_i","_Zpos","_nubofPlants","_sleep","_config"];
for "_i" from 0 to 1 step 0 do 
{
	_nubofPlants = count ((allMissionObjects "as_p_fiberPlant_EP1") + (allMissionObjects "as_b_PinusM1s_EP1") + (allMissionObjects "as_b_PistaciaL1s_EP1"));
	_nubofPlants = if (_nubofPlants < 1)then {1}else {_nubofPlants};
	_sleep = (60/_nubofPlants);
	
	{
		_grown = _x getVariable ["grown",false];
		_Zpos = getPos _x select 2;
		if (_Zpos < 0) then 
		{
			if ([90]call Main_Random)then
			{
			_x setPos [getPos _x select 0, getPos _x select 1, _Zpos + 0.1];
			};
		};
		if (_Zpos >= 0 && {!_grown})then {
		
			_config = _x call s_drugs_config;

			_x call core_setVarName;
				
			["ALL",[_x,['','noscript.sqf',format ['[%1,"%2","%3"]call drug_harvest',_x,(_config select 0),(_config select 1)],25,false,true,'LeanRight',format ['player distance _target < 5 && {!([_target,"Harvest Plant (E)","%2"]call tag_show)}',"","sfg_textures\tags\Marijuana"]]],"network_addAction",false,false]call network_MPExec;
			
			_x setVariable ["grown",true];
		};
		
		
		sleep _sleep;
		true
	}count  (allMissionObjects "as_p_fiberPlant_EP1") + (allMissionObjects "as_b_PinusM1s_EP1") + (allMissionObjects "as_b_PistaciaL1s_EP1");
};