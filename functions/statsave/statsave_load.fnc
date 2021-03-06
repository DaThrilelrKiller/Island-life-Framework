private ["_apps","_uid","_MainArray","_player","_data","_array","_side","_file","_name","_value"];
_side = _this select 1;
_uid = getPlayerUID(_this select 0);
_player = (_this select 0);
_apps = switch(_side)do{ 
	case "CIV":{["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian"]}; 
	case "EMS": {["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian"]}; 
	case "PD":{["app_store","app_store","app_settings","app_dmv","app_laws","app_civilian","app_computer"]}; 
};

_array = 
[
	["Main", "Bank",45000],
	[_side, "Hunger",25], 
	[_side, "Inventory",[["schluesselbund","idcard"],[1,1]]], 
	[_side, "Licenses", []], 
	[_side, "Vehicles",[]], 
	[_side, "VehiclesAir", []], 
	[_side, "VehiclesWater", []], 
	[_side, "Weapons",[]], 
	[_side, "Magazines",[]], 
	[_side, "Pistol",""], 
	[_side, "Rifle",""],
	[_side, "x26",""],
	[_side, "Warrants",[]],
	[_side, "Notes",[]],
	[_side, "Bounty",0],
	[_side, "Storage",[]],
	[_side, "Apps",_apps],
	["Main", "lifestate",""],
	["Main", "distance",800],
	["Main", "detail",50],
	[_side, "seasion",[]],
	["Main", "Side",[_side,0]],
	["Main", "NAME",""]
];

_data = [_uid,(owner _player)];
_stats = [];

{
	_array = _x;
	_file = _array select 0;
	_name = _array select 1;
	_value = _array select 2;
	_stats set [count _stats,([_uid, _file, _name,_value] call S_statsave_read)];
	true
}count _array;

_data set [count _data,_stats];

[_player,_data,"statsave_loadacount",false,false]call network_MPExec;
_player setVariable ["id",(owner _player),true];