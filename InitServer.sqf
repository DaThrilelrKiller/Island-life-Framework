call compile preprocessFile "\MPMissions\configuration\CfgVariables.sqf";

[] execVM "\MPMissions\server\fn_loop.sqf";
[]call Main_ResetSafeCode;
[] execVM "\MPMissions\mission.sqf";

onPlayerDisconnected '
deleteMarker ("medical_" + _name);
_name call s_disconnect_disconnedted;
';

INV_ServerBuildingArray = allMissionObjects "All";
publicVariable "INV_ServerBuildingArray";

server_auth = true;
publicVariable "server_auth";
diag_log text "[LOG]Initialization finished!";