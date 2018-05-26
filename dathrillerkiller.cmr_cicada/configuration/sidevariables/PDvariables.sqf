SpawnPoints = [["Police_spawn_1","iscop"],["Police_spawn_3","Undercover_id"],["Police_spawn_4","Lt_id or Cpt_id or Chief_id"],["Police_spawn_5","SWAT_id"],["Police_spawn_7","Cpl_id or Sgt_id"],["Police_spawn_8","K9_id"],["Police_spawn_9","PDAviation_id"],["Police_spawn_10","DOC_id"]];

iscop			= true;
dtk_civ	      	= false;		
isamedic       	= false;
dtk_sidename = "Police Officer";
ar_side = "PD";

INV_apps = [
["app_civilian","sfg_textures\ipad\CIVILIAN.PAA","[0,0,0,[""playerlist""]] execVM 'scripts\maindialogs.sqf';"],
["app_oil","sfg_textures\ipad\OIL.PAA","[0,0,0,[""oilswag""]] execVM 'scripts\maindialogs.sqf'"],
["app_dmv","sfg_textures\ipad\DMV.PAA","[player]call licenses_check"],
["app_laws","sfg_textures\ipad\LAWS.PAA","[0,0,0,[""lawswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_gangs","sfg_textures\ipad\GANGS.PAA","[0,0,0,[""gangsswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_stockmarket","sfg_textures\ipad\stockmarket.PAA","[0,0,0,[""fundsswag""]] execVM ""scripts\maindialogs.sqf"";"],
["app_computer","sfg_textures\ipad\Computer.PAA","if(vehicle player != player)then{call cdb_open}else {systemChat 'You Must Be In A Vehicle To Access Your ECPD Computer!';};"],
["app_store","sfg_textures\ipad\stockmarket.PAA"," [(BuildingCollapesLogic call shops_index)]call shops_openshop; "],
["app_phone","sfg_textures\ipad\PHONE.PAA","systemChat 'W.I.P';"],
["app_settings","sfg_textures\ipad\SETTINGS.PAA","call keypress_menu"]
];

AppStoreArray = {
[
"app_phone",
"app_civilian",
"app_oil",
"app_dmv",
"app_laws",
"app_gangs",
"app_stockmarket",
"app_computer"
];
};

USBW_Interactions = [
["'Give Ticket'",'isPlayer cursorTarget && {player distance cursorTarget < 5}','["request",cursorTarget]call ticket_ticket;'],
["'Enable License Plate'",'!ar_plates','[]spawn plates_plate'],
["'Disable License Plate'",'ar_plates','[]spawn plates_plate']
];

