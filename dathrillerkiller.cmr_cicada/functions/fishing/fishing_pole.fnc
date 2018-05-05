
if (v_fishing)exitWith {
	v_fishing = false;
	player removeAction a_fishing;
	systemchat format ["%1 you have put your fishing pole back into your inventoy"];
};

v_fishing = true;
player addaction ["Cast Pole","noscript.sqf","call fishing_cast",1,false,true,"","call fishing_handler"];
systemchat format ["%1 you are now holding your fishing pole, to put back away click use again, to cast scroll wheel",name player];
