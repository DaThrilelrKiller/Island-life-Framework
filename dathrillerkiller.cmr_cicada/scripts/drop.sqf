_item   = _this select 0; 
_amount = _this select 1;
_image = format ["\sfg_textures\items\%1",[_item]call config_image];


if(!isnull (nearestobjects[getpos player,["EvMoney","Suitcase"], 1] select 0))exitwith{systemChat  "You cannot drop items on top of each other. move and try again."};


if (_amount <= 0) exitwith {};

if (_item call config_dropable) then 

{

if ([player,_item,-_amount] call storage_add) then 

	{
	
	systemChat  localize "STRS_inv_inventar_weggeworfen";	

	if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

	sleep 1.5;

	private "_class";
	switch true do
	{
		case (_item == "geld"):{_class = "EvMoney"};
		case (_item == "oil"):{_class = "Barrel4"};
		case (_item == "oilbarrel"):{_class = "Barrel4"};
		default {_class = "Suitcase"};
	};

	_pos = getposASL player;

	_object = _class createvehicle _pos;

	_object setposASL getposASL player;
	_object setvariable ["droparray", [_amount, _item], true];
	_name13 = _item call config_displayname;
	
	_object call core_setVarName;	
	
	
	["ALL",[_object,['','scripts\pickup.sqf',[_object, _item, _amount],25,false,true,'LeanRight',format ['player distance _target < 5 && {!([_target,"Pick up %1 (E)","%2"]call tag_show)}',_name13,_image]]],"network_addAction",false,true]call network_MPExec;
	
	
	} 
	else 
	{
	
	systemChat  localize "STRS_inv_inventar_drop_zuwenig";
	
	};

} 
else 
{

systemChat  localize "STRS_inv_inventar_ablege_verbot";

};

