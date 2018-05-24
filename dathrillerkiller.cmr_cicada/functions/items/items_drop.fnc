_item   = _this select 0; 
_amount = _this select 1;
_image = format ["\sfg_textures\items\%1",[_item]call config_image];
_name = _item call config_displayname;

if (_amount <= 0) exitwith {};

if (_item call config_dropable) then 
{
	if ([player,_item,-_amount] call storage_add) then 
	{
		
		if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

		sleep 1.5;

		_class = _item call config_class;
		_class = if (isClass (configFile >> "CfgVehicles" >> _class))then{_class}else{"Suitcase"};
		

		_pos = getposASL player;
		
		_object = _class createvehicle _pos;
		_object setposASL getposASL player;
		_object setvariable ["droparray", [_amount, _item], true];
		_object call core_setVarName;	
		
		systemchat format ["You droped (%1) %2",_amount,_name];

		["ALL",[_object,['','scripts\pickup.sqf',[_object, _item, _amount],25,false,true,'LeanRight',format ['player distance _target < 5 && {!([_target,"Pick up (%3) %1 (E)","%2"]call tag_show)}',_name,_image,_amount]]],"network_addAction",false,true]call network_MPExec;
	} 
	else 
	{
		systemchat format ["You dont have %1 of %2 to drop",_name,_amount];
	};

} else {
	systemchat format ["You are not allowed to drop %1",_name];
};

