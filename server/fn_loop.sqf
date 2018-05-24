private ["_i","_time"];

ar_hunting_rt = (time + 120);
ar_robpool_rt = (time + 30);

for "_i" from 0 to 1 step 0 do 
{
	_time = time;
	if (_time > ar_hunting_rt) then {[] execVM "\MPMissions\Server\hunting.sqf";};
	if (_time > ar_robpool_rt) then {[] execVM "\MPMissions\Server\robpool.sqf";};
	sleep 1;
};