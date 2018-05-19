_location = call s_accidents_location;

["ALL",[],{
if (playerside == resistance) then 
{
	playsound "bells"; 
	player sidechat "You are getting reports of a multiple car accident blocking a road!";
	player sidechat "Check your map for the location and get to it quickly!";
};
if (playerside == west) then 
{
	playsound "beepsimple";
	player sidechat "Dispatch: Reports of a 10-50, all available units respond. Check your map for the location.";
};

},false,false]call network_MPExec;

_wreckMarker = createMarker ["CarWreck", _location];
_wreckMarker setMarkerShape "ELLIPSE";
_wreckMarker setMarkerSize [80,80];
_wreckMarker setMarkerColor "ColorOrange";

_wreckMarker2 = createMarker ["CarWreck2",_location];
_wreckmarker2 setMarkerType "Warning";
_wreckMarker2 setMarkerColor "ColorBlack";
"CarWreck2" setMarkerText "!!! CAR ACCIDENT !!!";

_object = "HeliHEmpty" createVehicle _location;
_object setVehicleInit "i=[this,4,time,false,false] spawn BIS_Effects_Burn"; processInitCommands;

_wreck1 = "LADAWreck" createvehicle (getPos _object);
_wreck2 = "SKODAWreck" createvehicle [0,0,0];
_wreck3 = "datsun02Wreck" createvehicle [0,0,0];
_wreck4 = "UralWreck" createvehicle [0,0,0];
_wreck5 = "UAZWreck" createvehicle [0,0,0];

_wreck2 attachto [_object, [4.5,4.5,0.70]];
_wreck3 attachto [_object, [-4.5,-6,0.75]];
_wreck4 attachto [_object, [0,10,1.25]];
_wreck5 attachto [_object, [4.5,-6.5,0.75]];

_wreck2 setDir 134;
_wreck3 setDir 83;
_wreck4 setDir 270;
_wreck5 setDir 24;

while {!isNull _object} do
{
	_randomtime = random (45) + 30;
	sleep _randomtime;
	_exp = "HelicopterExploBig" createVehicle (getPos _object);
};

{deleteVehicle _x }forEach [_wreck1,_wreck2,_wreck3,_wreck4,_wreck5];


