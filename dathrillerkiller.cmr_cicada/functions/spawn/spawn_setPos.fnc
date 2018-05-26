private ["_array"];
_array = call compile lbData [1401, (lbCurSel 1401)];


if (isNil '_array') exitWith 
{
	ctrlSetText [1601, 'Spawn not Valid'];
	[]spawn
	{
		sleep 3;
		ctrlSetText [1601, 'Spawn'];
	};
};

dtk_cam cameraEffect ["terminate","back"];
168 cutText ["", "PLAIN"];

player setPos _array; 
player setUnconscious false;
player allowDamage true;
['ALL',[player,' '],'network_SwitchMove',false,true]call network_MPExec;
[-2, {_this allowDamage true;}, player] call CBA_fnc_globalExecute;
closeDialog 0;
	
[_array]spawn
{
	_array = _this select 0;
	sleep 0.3;
	waitUntil {sleep 0.1; preloadCamera _array};
	player setPos _array; 
	player setPos _array; 
};
