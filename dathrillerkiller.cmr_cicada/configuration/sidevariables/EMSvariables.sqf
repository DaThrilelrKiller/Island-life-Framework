SpawnPoints =[["ems_spawn_1","true"],["ems_spawn_2","true"],["ems_spawn_4","EMSAirUnit_id"]];

dtk_civ         	= false;						
iscop          	= false;	
isamedic       	= true;	
dtk_sidename = "Emergency Medical Technician";
ar_side = "EMS";

USBW_Interactions = [
["'Enable License Plate'",'!ar_plates','[]spawn plates_plate'],
["'Disable License Plate'",'ar_plates','[]spawn plates_plate']
];


INV_apps = [
["app_warrants","sfg_textures\ipad\WARRANTS.PAA","[0,1,2,[""coplog""]] execVM 'scripts\maindialogs.sqf';"],
["app_civilian","sfg_textures\ipad\CIVILIAN.PAA","[0,0,0,[""playerlist""]] execVM 'scripts\maindialogs.sqf';"],
["app_oil","sfg_textures\ipad\OIL.PAA","[0,0,0,[""oilswag""]] execVM 'scripts\maindialogs.sqf'"],
["app_dmv","sfg_textures\ipad\DMV.PAA","[player]call licenses_check"],
["app_laws","sfg_textures\ipad\LAWS.PAA","[0,0,0,[""lawswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_gangs","sfg_textures\ipad\GANGS.PAA","closeDialog 0;call gang_open"],
["app_stockmarket","sfg_textures\ipad\stockmarket.PAA","[0,0,0,[""fundsswag""]] execVM ""scripts\maindialogs.sqf"";"],
["app_store","sfg_textures\ipad\stockmarket.PAA","[(BuildingCollapesLogic call shops_index)]call shops_openshop; "],
["app_phone","sfg_textures\ipad\PHONE.PAA","systemChat 'W.I.P';"],
["app_settings","sfg_textures\ipad\SETTINGS.PAA","call keypress_menu"]
];

AppStoreArray = {
[
"app_phone",
"app_warrants",
"app_civilian",
"app_oil",
"app_dmv",
"app_laws",
"app_gangs",
"app_stockmarket"
];
};
