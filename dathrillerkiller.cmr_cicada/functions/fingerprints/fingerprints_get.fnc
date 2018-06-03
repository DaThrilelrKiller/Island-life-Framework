_object = _this select 0;
_unit = _this select 1;

if (dtk_server)exitWith {
	[_unit,[],{titletext ["No finger prints found", "PLAIN DOWN", 3];},false,false]call network_MPExec;
};

[_unit,[[player],"FUNCTIONS\ITEMS\IDcard.sqf"],"network_ExecVM",false,false]call network_MPExec;