_object = _this select 0;
_unit = _this select 1;

if (dtk_server)exitWith {
	[_unit,[],{[format["No finger prints found",_name],'sfg_textures\tags\fingerprint']call tag_notify;},false,false]call network_MPExec;
};

[_unit,[[player],"FUNCTIONS\ITEMS\IDcard.sqf"],"network_ExecVM",false,false]call network_MPExec;