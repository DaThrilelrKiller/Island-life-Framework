private ["_role"];
_role = player;

/*ROB*/
_role addaction ["Rob Safe","scripts\bankrob.sqf", ["robDialog", safe1],1,false,true,"","player distance Safe1 <= 3"];
_role addaction ["Crack Safe","noscript.sqf", '["crackSafe", safe1]call Other_safehack;',1,false,true,"","player distance Safe1 <= 3"];

/*GOV*/
_role addaction ["Crime Log","scripts\maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
_role addaction [format ["Pay Bail", slave_cost],"scripts\maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3"];

/*ITEM PROSCESSING*/
_role addaction ["Process Diamond","scripts\itemprocess.sqf",["diamond rock", "diamond", 5, ""],1,false,true,"","player distance diamond_1 <= 5"];
_role addaction ["Process Meth","scripts\itemprocess1.sqf",["pharm", "meth", 2, ""],1,false,true,"","player distance methlab <= 5"];
_role addaction ["Process Oil","scripts\itemprocess.sqf",["Oil", "OilBarrel", 2, "oil"],1,false,true,"","player distance Oil_1 <= 5"];
_role addaction ["Process Wheat","scripts\itemprocess.sqf",["getreide", "Bread", 2, "Baker"],1,false,true,"","player distance bakery <= 5"];
_role addaction ["Process Strawberries","scripts\itemprocess.sqf",["straw", "Frozens", 3, "Baker"],1,false,true,"","player distance bakery <= 5"];
_role addaction ["Process LSD","scripts\itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsdga1"],1,false,true,"","player distance gangarea1 <= 5"];
_role addaction ["Process Cocaine","scripts\itemprocess.sqf",["Unprocessed_Cocaine", "cocaine", 5, "cocainega1"],1,false,true,"","player distance gangarea1 <= 5"];
_role addaction ["Process LSD","scripts\itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsdga2"],1,false,true,"","player distance gangarea2 <= 5"];
_role addaction ["Process Heroin","scripts\itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroinga2"],1,false,true,"","player distance gangarea2 <= 5"];
_role addaction ["Process Heroin","scripts\itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroinga3"],1,false,true,"","player distance gangarea3 <= 5"];
_role addaction ["Process Marijuana","scripts\itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuanaga3"],1,false,true,"","player distance gangarea3 <= 5"];
_role addaction ["Process Heroin","scripts\itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroinga4"],1,false,true,"","player distance gangarea4 <= 5"];
_role addaction ["Process Marijuana","scripts\itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuanaga4"],1,false,true,"","player distance gangarea4 <= 5"];


_role addaction ["Shop 1 Export","noscript.sqf",'[ (shop1 call shops_index)]call shops_openshop; ',1,false,true,"","player distance shop1export <= 3"];
_role addaction ["Shop 3 Export","noscript.sqf",'[ (shop4 call shops_index)]call shops_openshop; ',1,false,true,"","player distance shop4export <= 3"];
_role addaction ["Food And Candy","noscript.sqf",'[ (bailflag call shops_index)]call shops_openshop; ',1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];

/*VEHICLE*/
_role addaction ["Role Vehicle Over","noscript.sqf",'[]spawn vehicle_unflip;',1,false,true,"",'_vcl = cursorTarget;player distance _vcl < 5 and [player,_vcl]call keys_has'];
_role addaction ["Pull Player Out","noscript.sqf",'cursorTarget spawn Other_pullout;',1,true,true,"",'_vcl =cursorTarget; [_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 5 and count (crew _vcl) > 0 and (call INV_isArmed)'];
_role addaction ["Impound Vehicle","noscript.sqf",'[cursorTarget]call impound_add;',1,true,true,"",'_vcl =cursorTarget; [_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 10 and player distance newimpoundlot < 15 '];

/*OTHER*/
player addaction ["Take Boar Meat","noscript.sqf",'_no = ceil(random 7); if ([player,"boar",_no] call storage_add)then {cursorTarget setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"}; deletevehicle cursorTarget; systemChat  format["you got %1 boar meat", _no];}',1,true,true,"",'(typeOf cursorTarget == "wildboar") && {player distance cursorTarget < 4} && {isNil {cursorTarget getVariable "inuse"}} && {!alive cursorTarget}'];
player addaction ["Take Cow Meat","noscript.sqf",'_no = ceil(random 2); if ([player,"rawcow",_no] call storage_add)then {cursorTarget setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"}; deletevehicle cursorTarget; systemChat  format["you got %1 cow meat", _no];}',1,true,true,"",'(typeOf cursorTarget == "cow01") && {player distance cursorTarget < 4} && {isNil {cursorTarget getVariable "inuse"}} && {!alive cursorTarget}'];

_role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} count (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
_role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} count (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
_role addaction ["Impound Lot","noscript.sqf",'[]call impound_open;',1,false,true,"","player distance newimpoundlot <= 5"];
_role addaction ["Get A Taxi Job","scripts	axi.sqf", ["getajob_taxi"],1,false,true,"","player distance taxishop <= 5"];
_role addaction ["Finish My Taxi Mission","scripts	axi.sqf", ["canceljob_taxi"],1,false,true,"","(player distance taxishop <= 5) and workplacejob_taxi_active"];	
_role addaction ["Sign-up For A Debit Card","scripts\debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"];
_role addaction ["Get Assassination Job","scripts\assassination.sqf",["getajob_assassin"],1,false,true,"","player distance assassin <= 3"];
_role addaction ["Switch To Assassin Clothes","noscript.sqf",'["TK_INS_Soldier_EP1"] call clothing_switch;',1,true,true,"",'player distance assassinshop < 10 and ("assassinlic" call licenses_has)'];
_role addaction ["Take Hostage Mission","scripts\hostage.sqf",["getajob_hostage"],1,false,true,"","player distance hostage <= 3"];
_role addaction ["Take Hostage", "noscript.sqf", "[hostage1] join (group player); systemChat  ""Keep the hostage close or you will fail!"";",1,false,true,"","player distance hostage1 < 5"];
_role addaction [format [localize "STRS_lotto_action"], "noscript.sqf", "createDialog 'lotto';",1,false,true,"","cursorTarget in LottoLocations and player distance cursorTarget <= 2"];
_role addaction ["Remove Blindfold","FUNCTIONS\ITEMS\blindfold.sqf",[],1,false,true,"","isPlayer cursorTarget and cursorTarget getVariable 'blindfolded'"];

_role addaction ["Tow Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0);["TOW",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" == "" and [player,_vcl]call keys_has'];
_role addaction ["Release Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0);["RELEASE",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" != "" and [player,_vcl]call keys_has'];