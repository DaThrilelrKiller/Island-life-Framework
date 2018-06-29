private ['_display','_control','_text'];

disableSerialization;

for "_i" from 0 to 1 step 0 do 
{
	while {!(isNull (findDisplay 63))} do 
	{
			_control = (findDisplay 63) displayCtrl 101;
			_text = ctrlText _control;
		{
			if (_text == _x select 0)then {
				_control ctrlSetText (_x select 1);
				dtk_active_chat = (_x select 2);
			};
		}forEach chat_channels;
	};
};
