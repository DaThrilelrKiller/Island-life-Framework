if (dtk_server)exitWith {};


{
	_x addaction ["","noscript.sqf",format ["%1 call hooker_interact",_x],25,false,true,"LeanRight",format ["!([_target,'%1','']call tag_show)",_x  getVariable "Name"]];
}ForEach (nearestobjects [dtk_center, hooker_classes, 5125]); 