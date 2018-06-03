if (count dtk_hookers >= hooker_max)exitWith {
	systemchat "You have maxed out on 3 hookers";
};

if !([player,"geld",hooker_cost] call storage_add)exitWith {
	systemchat format ["You need $%1 cash in hand to buy a hooker",hooker_cost];
};

_type = hooker_classes call bis_selectRandom;

_type createUnit [getPos player, (group player), "
dtk_hooker = this;
this addEventHandler ['killed', {_this call hooker_killed}];
", 0.5, "private"];
processInitCommands;

dtk_hookers set [count dtk_hookers,dtk_hooker];
["ALL",[dtk_hooker,['','noscript.sqf',[],25,false,true,'LeanRight',format ['!([_target,"%1","%2"]call tag_show)',name dtk_hooker]]],"network_addAction",false,true]call network_MPExec;


if (isNil "dtk_hooker_handle")then {
	dtk_hooker_handle = [1,hooker_loop]call core_AddLoop;
};