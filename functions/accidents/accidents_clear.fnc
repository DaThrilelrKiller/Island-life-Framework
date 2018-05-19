_vcl = (nearestobjects [getpos player, ["HeliHEmpty"], 20] select 0);


titleText ["You are clearing the accident...","PLAIN DOWN"]; titleFadeOut 6;
	
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};

	
if ((getDammage player) == 1) exitWith {};	
if (!(alive player)) exitWith {};
	
deleteVehicle _vcl;

deleteMarker "CarWreck";
deleteMarker "CarWreck2";
	
Kontostand = Kontostand + 15000;
systemchat "You have been paid $15,000 for clearing an accident! Good work!";