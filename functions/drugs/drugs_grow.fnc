private ["_i","_Zpos","_nubofPlants","_sleep"];
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
			_x  setvehicleinit format ["
			this setVehicleVarName 'vehicle_%2_%1';
			vehicle_%2_%1 = this; 
			[_x,'Harvet (E)','sfg_textures\tags\Marijuana']call tag_add;
			this addaction ['','scripts\pickup.sqf',[this, '%3', %2],25,false,true,'LeanRight'];
			",round(random 10), round(time)];
			
			_x setVariable ["grown",true];
		};
		
		
		sleep _sleep;
		true
	}count  (allMissionObjects "as_p_fiberPlant_EP1") + (allMissionObjects "as_b_PinusM1s_EP1") + (allMissionObjects "as_b_PistaciaL1s_EP1");
};