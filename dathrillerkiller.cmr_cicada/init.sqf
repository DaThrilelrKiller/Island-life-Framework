waitUntil {!isNil "BIS_fnc_init" and !isNil "BIS_MPF_InitDone"};

/*addons FPS fixes*/
CL2MOD_fnc_FruitMachineEnvio = {};

diag_log text "[LOG]Initialization Started";

dtk_client = hasInterface;
dtk_server = !dtk_client;
enableSaving [false, false];

if (isNil "server_auth" && {dtk_client})then {
	systemchat "Waiting for server to authenticate";
	diag_log text "Waiting for server to authenticate";
	waitUntil {!isNil "server_auth"};
	systemchat "Server authentication finished";
	diag_log text "Server authentication finished";
};

waitUntil {!isNull player or dtk_server}; 
diag_log text str playerSide;

startLoadingScreen ["","dtk_loading"]; 

/* Go ahead and figure out what side the player is on */
if (dtk_client)then {
	dtk_side = call {
		if (playerSide == civilian)exitWith {"CIV"};
		if (playerSide == resistance)exitWith {"EMS"};
		if (playerSide == west)exitWith {"PD"};
		"unknown"
	};
call compile preprocessFile format ['configuration\sidevariables\%1variables.sqf',dtk_side];
};

call compile preprocessFile  "configuration\CfgVariables.sqf";	
call compile preprocessFile "functions\post_init.sqf";											


if (dtk_client) then {
	[] execVM "scripts\shopfarmfaclicenseactions.sqf";
	call compile preprocessFile format ['actions\%1actions.sqf',dtk_side];
	call events_events;
	diag_log text "[LOG]Initialization finished!";
};

endLoadingScreen;