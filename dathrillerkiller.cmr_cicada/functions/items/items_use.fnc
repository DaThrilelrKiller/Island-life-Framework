

_filename = _item call config_code;

if (isNil format ["%1",_filename])then {
	["use", _item, _textamount] execVM format["functions\items\%1.sqf",_filename];
}else{
	["use", _item, _textamount]spawn call compile _filename;
};