/*
File: fn_PickSpawn.sqf
Desc: Allows players to pick where they want to spawn (difrent spawns will show depending on what they are whitelisted for)
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/
(findDisplay 1600) displaySetEventHandler ["keyDown","_this call display_keypress"];

private ["_index","_c","_marker","_name","_posions","_index"];

_index = lbAdd [1401, "                         Spawns"];
_index = lbAdd [1401, "======================================================="];

waitUntil {!isNil 'AR_Whitelistloaded'};
waitUntil {!isNil 'SpawnPoints'};

for [{_c=0}, {_c < (count SpawnPoints)}, {_c=_c+1}] do 
{
	_marker = (SpawnPoints select _c select 0);
	_condition = call compile(SpawnPoints select _c select 1);
	if (_condition)then
	{
		_name = markerText _marker;
		_posions = str(getMarkerPos _marker);
		_index = lbAdd [1401, _Name];
		lbSetData [1401, _index, _posions];	
	};
};

if !(lifeState player == "UNCONSCIOUS")then {

	if (count dtk_seasion > 0)then {

		if ((dtk_seasion select 0) == s_seasion)then {
			if ((dtk_seasion select 1) - time < 120)then {
				_name = "Last logged in possion";
				_index = lbAdd [1401, _name];
				lbSetData [1401, _index,str (dtk_seasion select 2)];
			};
		};
	};
};




buttonSetAction [1601, "call spawn_setPos;"];

[]spawn spawn_animatemap;