private ["_items","_data","_amount","_item","_cooked","_time","_pos","_object","_name"];


{

	_items = nearestobjects[getpos _x,["Suitcase"], 6];
	{
		_data = _x getVariable "droparray";
		_amount = _data select 0;
		_item = _data select 1;

		if (_item in fishing_cookable)then {
			_cooked = _x getVariable "cook"; 
			if (isNil "_cooked")then {
				_time = time + (_amount * 5);
				_x setVariable ["cook",_time];
			}else{
				if (_cooked < time)then {
					_item = _item + "_cooked";
					_x setVariable ["droparray",[_amount,_item],true];
					
					_pos = getposASL _x; 
					deleteVehicle _x;
					_object = "Suitcase" createvehicle [0,0,0];
					_object setposASL _pos;
					_object setvariable ["droparray", [_amount, _item], true];
					_name = _item call config_displayname;
					_object setVehicleInit format [
					"
						this setVehicleVarName 'vehicle_%2_%1';
						vehicle_%2_%1 = this; 
					"
					, round(random 10), round(time)];
					processInitCommands;
					
					["ALL",[_object,['','scripts\pickup.sqf',[_object, _item, _amount],25,false,true,'LeanRight',format ['player distance _target < 5 && {!([_target,"Pick up %1 (E)",""]call tag_show)}',_name]]],"network_addAction",false,true]call network_MPExec;
				};
			};
		};
	}forEach _items;
}ForEach allMissionObjects "Land_Campfire_burning";