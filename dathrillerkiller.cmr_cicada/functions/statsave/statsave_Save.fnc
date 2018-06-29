if (isNil "dtk_seasion" or isNil "dtk_side" or isNil "dtk_sidename")exitWith {systemChat "[SAVE ABORTED]Your stats have not loaded yet"};
private ["_save"];
_save = 
[player,
	[
		["Main", "Bank", kontostand], 
		["Main", "NAME", name player],
		["Main", "Hunger", dtk_hunger], 	
		[dtk_side, "Inventory", player getVariable "dtk_storage"], 
		[dtk_side, "Licenses", (player getvariable "cdb_license")], 	
		[dtk_side, "Vehicles", INVVehiclesLand],
		[dtk_side, "Pistol", (player getVariable ["Pistol",""])], 	
		[dtk_side, "Rifle", (player getVariable ["Rifle",""])], 
		[dtk_side, "Weapons", weapons player], 
		[dtk_side, "Magazines", magazines player],
		[dtk_side, "Warrants",(player getvariable "cdb_warrants")],
		[dtk_side, "Notes",(player getvariable "cdb_notes")],
		[dtk_side, "Bounty",(player getvariable "cdb_bounty")],
		[dtk_side, "Storage",INV_PrivateStorage],
		[dtk_side, "Apps",INVAppsInstalled],
		["Main", "lifestate", (lifeState player)],
		[dtk_side, "seasion", [s_seasion,time,getPos player,dtk_side]],
		["Main", "Side", [dtk_side,s_seasion]]
	]
];

["SERVER",_save,"S_statsave_save",false,false]call network_MPExec;
['Saving data to database...','sfg_textures\tags\save']call tag_notify