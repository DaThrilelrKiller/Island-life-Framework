
_data = _this select 0;
_city = _data select 0;
_postion = _data select 1;

_type = hooker_classes call bis_selectRandom;
_name = hooker_names call bis_selectRandom;
_group = createGroup east;

_unit = _group createUnit [_type,_postion, [], 0, "CAN_COLLIDE"];
_unit addEventHandler ['killed', {_this call hooker_killed}];
_unit setVariable ["Name",_name,true];
_unit call core_setVarName;

_marker = createMarker [("house_" + str (_this select 1)), _postion];
_marker setMarkerType "mil_dot";
_marker setMarkerColor "colorBlack";
_marker setMarkerText format ["%1`s House",_name];
_marker setMarkerAlpha 1;