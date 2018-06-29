/*
File: VehicleHorns.sqf
Desc: Installs new horns on to a vehicle
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	0. Use -Default for all items
*/

private ["_art","_item","_vcl"];
_art 	= _this select 0;

if (!(player == vehicle player)) exitWith {systemChat  "You Must Be Outside The Vehicle!"};

if (_art == "use") then 
{
	_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 6] select 0);
	if (isnil ("_vcl")) exitwith
	{
		systemChat  "Not Near Any Vehicles!"
	};
	_item 	= _this select 1;


	if (player distance _vcl <= 6) then 
	{
		["Installing New Horn...",'\sfg_textures\items\horn2']call tag_notify;
		[player,_item,-1] call storage_add;
		
		player playMove "ainvpknlmstpslaywrfldnon_medic";
		sleep 2;
		playsound "Drill";
		sleep 5;
		player playMove "ainvpknlmstpslaywrfldnon_medic";
		sleep 2;
		playsound "Drill";
		sleep 5;
		_vcl addWeapon _item;
		["New Horn Installed",'\sfg_textures\items\horn2']call tag_notify;
	};
};
