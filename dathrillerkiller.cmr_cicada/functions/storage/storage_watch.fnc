private ["_idc","_object","_drop","_amount","_updated"];
_idc = _this select 0;
_object = _this select 1;
_drop = _this select 2;
_amount = (_object getVariable ["dtk_storage",[[],[]]])select 1;
_amount = str _amount;


while {true} do {

if !(dialog)exitWith {false};
if !(ctrlVisible _idc)exitWith {false};

_updated = str((_object getVariable ["dtk_storage",[[],[]]])select 1);

	if !([_amount,_updated]call BIS_fnc_areEqual)exitWith {
		[_idc,_object,_drop]call storage_toDialog;
	};
};