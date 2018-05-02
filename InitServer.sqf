call compile preprocessFile "\MPMissions\configuration\CfgVariables.sqf";

[] execVM "\MPMissions\server\fn_loop.sqf";
[]call Main_ResetSafeCode;
[] execVM "\MPMissions\mission.sqf";

onPlayerDisconnected 'deleteMarker ("medical_" + _name);';

INV_ServerBuildingArray = allMissionObjects "All";
publicVariable "INV_ServerBuildingArray";

server_auth = true;
publicVariable "server_auth";
diag_log "[LOG] SFG Island Life Has Loaded";