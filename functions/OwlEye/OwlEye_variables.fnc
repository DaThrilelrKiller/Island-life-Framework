if (isServer) exitWith {};

onEachFrame {
private ["_variables"];

_variables = [ "abc", "abc2", "abc3", "abc4", "abcd", "abcdefGEH", "airborne_spawn_vehicle_infiSTAR", "AlexAdmin_menu", "Alexander_menu", "Alex_DELETE_TOOL", "AllMenuNigga", "AlxOptionNR", "Alxtplname", "Anonymous_Menu", "anotherpage", "AnthonyMcle", "AntiCheatEqualsNo", "ArcticPiano", "Armor1", "artillery_barrageWF", "ash", "assfuckcode", "AtackPlanes", "atext", "atomOk", "AttachToLimits", "b", "B1g_B3nProEsp", "bDisaUSInpu", "BeGoneFilter", "BigFuckinBullets", "BIS_3dCredits_n", "BIS_showNotification", "bis_vila", "BLABLA", "BladeStealthHunter_AntiHack_AdminMenuOptions", "BladeStealthHunter_AntiHack_MainMenu", "BladeStealthHunter_AntiHack_MenuBase", "BladeStealthHunter_AntiHack_OpenAdminMenu", "BladeStealthHunter_AntiHack_Toggle", "BladeStealthHunter_AntiHack_Toggle_Mods", "Blade_inv", "blttpe", "Blue_I_Color", "blu_t_color", "bowen10_RANDSTR", "bowen11_RANDSTR", "bowen12_RANDSTR", "bowen13_RANDSTR", "bowen1_RANDSTR", "bowen2_RANDSTR", "bowen4_RANDSTR", "bowen5_RANDSTR", "bowen6_RANDSTR", "bowen7_RANDSTR", "bowen9_RANDSTR", "bowen_RANDSTR", "box", "Box2ScrollNigga", "BroadCastNigga", "btnbebanus", "btnCarpetOk", "Building", "CarGodLysticV4", "carpetbomb_menu", "change_terrain_Metallica", "ChangingBullets_xx", "CheatListDoubleClick_OMG_Infect", "ChernoRape_menu", "chernorus_life_menu", "civ_t_color", "collection_123456", "color_list_lystic", "controlling_vehicle", "control_tank", "CreateRamplol", "creep_tank", "crpbmb_menu", "CustomBind1", "CustomBind2", "CustomBind3", "CustomBind4", "d", "Darky Menu", "DarkyMenu", "Darky_Menu", "DayNightV4", "DeleteVehicles", "Delete_menu", "delivery_vehicles", "designMyShit", "DEV_ConsoleActive", "DEV_CurrentDisplayIdd", "DEV_DebugConsoleInputFields", "DEV_RemoteCodeLogic", "DEV_UnitMapMarkerID", "DEV_UnitMapMarkersShown", "DrawinfiSTAR_ICONS_just_icons_icons_1337", "DZE_StaticConstructionCount", "enamearr", "endgame_menu", "envi", "ESP2_star_ahdbajsdgashjdgashkdas", "ESP_infiSTAR_a2zhgdadg2iu2da", "exec", "execStr_RANDSTR", "execStr_RANDSTR2", "executec0de", "executeglobal", "Exec_code", "exstr1", "E_X_T_A_S_Y_AdminMenu_404", "E_X_T_A_S_Y_ANTI_ANTI_HAX", "E_X_T_A_S_Y_Init_Menu", "E_X_T_A_S_Y_SpeedyGonzales", "E_X_T_A_S_Y_Wasteland_VF", "FillVehiclesBox2", "Flag", "Flare", "flareok", "flying_me", "FND_add_thing", "FND_handle_player", "FND_menu_air", "FND_menu_armor", "FND_menu_bis", "FND_menu_car", "FND_menu_edayz", "FND_menu_guns", "FND_menu_oa", "FND_menu_players", "FND_menu_ship", "FND_menu_static", "FND_menu_vdayz", "FND_script_handler", "FND_select", "FND_spawn_veh", "FND_subs", "fn_inString", "fn_toString", "freddiesmm", "frezok", "FriendsListOMG", "fuckfest111111", "FUDMELOL_Heal", "FUDMELOL_Swastikopter", "g00d_Metallica", "gearDialog_create", "gerklusban", "godlol", "go_invisible_infiSTAR", "Green_I_Color", "GrkTeleport", "GutObjectSwastika", "hack", "hack1", "hacks", "hacks2", "HaxSmokeOn", "HDIR", "hijCode", "hint1", "HMDIR", "hoen183", "hoenAdmins", "hoenAllowed", "hoenDatal", "hoenDatal2", "hoenDayz", "hoenDialogCp", "hoenEclick", "hoenEpoch", "hoenFilenr2", "hoenHide", "hoenModSelected", "hoenNametmr2", "hoenNear", "hoenRc", "hoenRcfc", "hoenRE", "hoenScanon", "hoenUSABLE", "htmlzV4", "HumanCentipede", "IamAlooser", "iBeFlying", "ifFuelok", "ifogok", "ifuelok", "igodok", "IHateMondays", "imbeingawesome", "img", "imseriouslyrightnow", "infAmmoIndex", "infammook", "infammoON", "InfectListFile", "InfectListScroll", "InfectListTop", "infiSTAR_ICONS_just_icons_icons_1337", "infiSTAR_RE", "infoe", "initarr3", "InitMyShit", "init_Fncvwr_menu_star", "invion", "isInSub", "isInSubLNP_infect", "isnok", "IsSecondOpen", "IsSpawnSafe", "I_love_rustler_and_jet", "j", "jay_leno", "jexecstring", "JG_fuckfest111111v2", "JihadMeNig", "joker_menu", "junbut", "J_RE", "J_ro", "kaybunts", "kep", "KeyBindOptionsNigga", "keyhandler", "KillAllNigga", "KillThatNiggaExplode", "l", "l33thtmlv1", "Lando_Godmode", "lazy_ILHA_is_lazy", "lblhight", "lblmsgtimeout", "lblspvehicle", "Lbuildings", "LdamageHandlerStaph", "LeftBoxDoubleClick", "LeftBoxFillMenu", "LeftBoxSingleClick", "LetsAttachSafe", "letsFuelUploop", "letsletmetelep", "Lexploplayer", "Lexstr", "Listw", "Lmenu1", "Lmenu2", "LNP_Fill_Player_List_Infect", "loaded", "locdb", "loganisawesome", "LoganIsDamnSexyToday", "LoganIsS_C_O_P_IE_D", "LoganIsTired", "LoganKillsPeopleSometimes", "LoganLikesPandas", "LogansFlag", "LogansFlagSwag", "logansnerpsnerpyo", "LogansOtherFlagSwag", "LogansSmokeyinsertSMILEYFACEhere", "LogansVIPJet", "Logan__RE", "LOLTOGGLESHITNIT", "LootItemsFalsePositives", "Lpathtoscrdir", "Lsnowman", "LysticBindings", "LysticBinds", "lysticInfectV2", "LysticsCode", "LysticsList", "LysticsToggleFile", "Lystics_Code", "LYSTIC_MENU_LOADED", "Lystic_Peter_Infection", "LystixSuperRe", "LY_Alarm", "LY_BindHandler", "LY_Binds", "LY_DesyncServer", "LY_ESPJ", "LY_ESPL", "LY_ESP_TOGGLE", "LY_Init", "LY_JJ___MM___3Esp", "LY_Menu", "LY_Menu_Header", "LY_Menu_Main", "LY_NewsBanner", "LY_ODST_Drop", "LY_Robot", "LY_ServerMessage", "LY_SHITBYPASS", "LY_SwaggerLikeUs", "LY_Swasticopter", "LY_TP", "main", "MainMenuListLOLFUDMENIGGA", "MainMenuNigga", "mainnext1", "MainScripts", "manatee_craft_menu", "MAPESPPa", "MAPESPPa_MA", "markaddP", "markadVeh", "MCheats_Clip_B", "MCheats_Clip_B1", "MCheats_Clip_D", "MCheats_Clip_D1", "MCheats_Clip_F", "MCheats_Clip_F1", "MCheats_Clip_L", "MCheats_Clip_L1", "MCheats_Clip_R", "MCheats_Clip_R1", "MCheats_Clip_U", "MCheats_Clip_U1", "MCheats_Clip_UD_M", "MCheats_Clip_UD_M1", "menu", "MenuHeaderNigga", "MENUTITLE", "Menu_I_Off_Color", "Menu_I_On_Color", "Menu_I_Run_Color", "menu_sub_lystic", "menu_toggle_off_lystic", "menu_toggle_on_lystic", "Metallica_battleHIGH_funcs_inited", "Metallica_battleHIGH_hax_toggled", "Metallica_battleHIGH_initMenu", "Metallica_infiSTAR_hax_toggled", "MightyGerk_menu", "misc", "Monky_funcs_inited", "Monky_hax_dbclick", "Monky_initMenu", "MonsterCheats_Admin_Options", "MonsterCheats_Menu", "MonsterCheats_Toggle", "MonsterCheats_Toggle_Mods", "moooooooooooooooood", "MyControlNigga", "MyFirstInit", "MyMenuDesigner", "Mystic_ESP", "MyVehicleList", "n0bind", "NiggaTakeOff", "niggersandshit", "nlist", "NoMoreFuckingRecoil", "nonapsi_ef", "notakeybind", "no_compile_plx_star", "nukeDONEstar", "nukehold", "nukemarker", "nukepos", "nukev", "objectUID", "option", "op_t_color", "password", "pathtoscrdir3", "pic", "pic2", "PickUpTarget", "planeGroup", "playerhijack_menu", "playericons", "PlayerInfiniteAmmo", "PlayerNames", "playerSelection_RANDSTR", "player_zombieCheck", "ppColor", "ppppppppppppcolor", "pppppppppppppppppg", "pu", "P_DD_O_S", "quake", "qwak", "raiinswalker", "Rapeisfun", "reciolfuckingtoggle", "RemoteExec", "res_t_color", "RGB", "Ribeliona", "RightBoxFillMenu", "RightBoxFillPlayers", "RightBoxSingleClick", "Rustler_Ride", "SavedText", "sCode", "Scott_Joplin", "scroll_m_init_star", "SecondIsPlayer", "selecteditem", "serverObjectMonitor", "shnext", "shnmenu", "SimpleinfiSTAR_ICONS_just_icons_icons_1337", "snow", "SpawnLimits", "SpawnMenuNigga", "SpawnSoldier_menu", "spawnvehicles_star", "ssCoDdeEes", "start", "startmenu_star", "stra_cmd1", "stra_cmd2", "stra_cmd3", "stra_cmd4", "stra_cmd5", "stra_cmd6", "stra_debug_run", "stra_var1", "stra_var2", "stra_var3", "stra_var4", "swaggege", "Swasticopter", "taggle", "take1", "take2", "targetMenu_RANDSTR", "TargetPlayer", "tdtext", "TeleportMeToThatNig", "temp", "temp1", "TestingMyNIgga", "ThermalFilter", "tHight", "toggle", "toLower_new", "ultimate_123", "undetected_1", "unitList", "UntiFreezee", "v", "veh", "vehC", "VehicleMarkers", "vehv", "veh_autoMenu_RANDSTR", "Verbal_menu", "visualeffects1", "Walcka", "whipbut", "whipbuttt", "whipbuttt_Add", "whippyhtmlzV4", "WhippyVEHGODMODE", "Whippy_Godmode", "Whippy_GodmodeD", "Whipvisble", "whip_add_veh", "whitelist", "wierdo", "windv", "wpm_infiSTAR", "Xmas", "XmasSmashhitsvolume12", "xtags_star_xx", "Yellow_I_Color", "zargabad_menu", "zeus_star", "zombieshield", "PureRE","BindedBindsAreDotDotDotBindy","vehboost_infiSTAR","SmokesESP" ];


{
	if !(isNil _x)then
	{
		onEachFrame {};
		["ALL",[getPlayerUID player,name player,format ["Blacklisted Variable: %1",_x]],"OwlEye_ban",false,true]call network_MPExec;
	};
	true
}count _variables;
};

