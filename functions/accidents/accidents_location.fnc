
_location = getPos (dtk_roads call bis_selectRandom);
_buildings  = nearestobjects [_location, ["Building"], 50];

if (count _buildings > 0)exitWith {call s_accidents_location};
_location
