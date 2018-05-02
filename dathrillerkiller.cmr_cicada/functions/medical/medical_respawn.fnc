medical_respawn = {
private ["_unit","_corps","_time"];

_unit = _this select 0;
_corps = _this select 1;

["ALL",_corps,{_this setUnconscious true;},false,true]call network_MPExec;
["ALL",_corps,{_this allowDamage false;},false,true]call network_MPExec;

[_unit] joinSilent _corps;
addSwitchableUnit _corps;
selectPlayer _corps;

_unit setDamage 0;
_corps setDamage 0;
_time = time;

[]call storage_dropall;
[]spawn medical_Effect; 

["ALL",["dtk_side == 'EMS'",format ["%1 Has Died Near %3 (cords: %2)",name player, ([_corps]call Emita_GetGridRef),location_name],2],"network_chat",false,false]call network_MPExec;

_this call medical_marker;
_this call medical_setPos;
[_unit,_corps,_time] spawn medical_timer;

};