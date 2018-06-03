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

player setUnconscious false;
player allowDamage true;
['ALL',[player,' '],'network_SwitchMove',false,true]call network_MPExec;
[-2, {_this allowDamage true;}, player] call CBA_fnc_globalExecute;
closeDialog 0;

waitUntil {preloadCamera _array};
player setPos _array; 

dtk_cam cameraEffect ["terminate","back"];
168 cutText ["", "PLAIN"];
