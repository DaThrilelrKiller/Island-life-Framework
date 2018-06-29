diag_log text "[LOG]Pre Initialization started!";
dtk_client = hasInterface;
dtk_server = !dtk_client;

call compile preprocessFile "configuration\CfgFunctions.fnc";
call compile preprocessFile  "ServerLoad\miscfunctions.sqf";
call compile preprocessFile "configuration\CfgMaster.sqf";
call compile preprocessFile "configuration\CfgShops.sqf";
call compile preprocessFile "ServerLoad\Optimize.sqf";

private ["_modules","_functions"];
dtk_fnc_total = 0;

dtk_active_modules = 
[
"Network",
"Core",
"Action",
"Keypress",
"Config",
"Array",
"BIS",
"Storage",
"Shops",
"Goverment",
"Licenses",
"Slots",
"Chat",
"Impound",
"Markers",
"Siren",
"Checkpoint",
"Admin",
"Police",
"Cdb",
"Plates",
"Cuffs",
"Dog",
"Holster",
"String",
"Shipment",
"Quest",
"Locations",
"Setup",
"Tfar",
"Drug",
"ATM",
"Medical",
"Gear",
"Robbery",
"Speedcam",
"Fuel",
"Oil",
"Ipad",
"Keys",
"Garage",
"Clothing",
"GPS",
"Dance",
"Statsave",
"Gang",
"Vehicle",
"Hunger",
"Hud",
"Tag",
"Fishing",
"Flashbang",
"Lightbar",
"Fingerprints",
"Gates",
"Hooker",
"Spawn"
];

/*loads variables first for all active modules*/
{
	call compile format['call compile preprocessFile "functions\%1\_module.variables";', _x ];
}count dtk_active_modules;


/*loads module functions*/
{
	_functions = call compile format['call compile preprocessFile "functions\%1\_module.functions";', _x];
	_module = _x;
	{
		call compile format['
		%1_%2 = compile preprocessFile "functions\%1\%1_%2.fnc";
		',_module,_x];
		dtk_fnc_num = _forEachIndex + 1;
	}forEach _functions;
	diag_log formatText ["Loaded Module - %1 With %2 Functions",_module,dtk_fnc_num];
	dtk_fnc_total = dtk_fnc_total + dtk_fnc_num;
}count dtk_active_modules;


diag_log formatText ["Total Modules: %2 Total Functions: %1",dtk_fnc_total,count dtk_active_modules];

if (dtk_server)then {
call compile preprocessFile "\MPMissions\functions\pre_init.sqf";
};

diag_log text "[LOG]Pre Initialization finished!";
