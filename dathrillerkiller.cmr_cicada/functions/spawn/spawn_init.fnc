if (dtk_server)exitWith {};

showCinemaBorder false;
dtk_cam = "camera" camcreate [0,0,350];
dtk_cam cameraEffect ["internal", "back"];;
dtk_cam camSetFOV 0.700;
dtk_cam camCommit 0;

[]spawn spawn_openMenu;
