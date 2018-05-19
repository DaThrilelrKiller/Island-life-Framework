INV_drogenusesperre = 0;
INV_drogen_usesperre = FALSE;
INV_DrogenCounter = 0;

/*Main*/
pickingup   		 = false;
halfwaythereallfiredup = false;

AR_playerString = str player;

/*Fishing Arrays*/
INV_FarmItemArray =
[
[[["lsdfield",30]],"Unprocessed_lsd",15,4,["Man"]],
[[["lsdfield_1",30]],"Unprocessed_lsd",15,4,["Man"]],
[[["DiamondArea",20]],"Diamond rock",15,1,["Man"]],
[[["farmarea2",90]],"getreide",20,10,["tractor","oldtruc2","oldtruc2a"]],
[[["farmarea3",90]],"getreide",20,10,["tractor","oldtruc2","oldtruc2a"]],
[[["sandarea",70]],"sand",15,5,["Man"]],
[[["sandarea1",70]],"sand",15,5,["Man"]],
[[["apfelfeld1",50]],"apple",10,5,["Man"]]
];
Miningarray =
[
[["IronArea",30],"iron",12],
[["GoldArea",15],"gold",12],
[["GoldArea1",15],"gold",12],
[["CopperArea",30],"copper",12],
[["CopperArea1",30],"copper",12]
];

/*bank Vars*/
maxinsafe                = 300000;
rblock			 = 0;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.1; 
robenable              	 = true;     
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell,methsell];
/*Lottery*/
playing_lotto = 0;

LottoArray = 
[
["lotto1", 	"Penny Saver Scratch Card",	 		100,		1000],							
["lotto2", 	"Money Lover Scratch Card",		    2500,       15000],	
["lotto3", 	"Big Bucks Scratch Card",         	10000,  	70000],								
["lotto4",	"Fortune Scratch Card",			25000, 	    175000]
];

LottoFlags = 									
[
[fuel2,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel4,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel5,["lotto1", "lotto2", "lotto3", "lotto4"]]
];

LottoLocations = [fuel2,fuel4,fuel5];

/*WorkPlaceSettings*/
workplacejob_taxi_zielarray	 = [[1804.32,2715.09,0],[2043.42,946.662,0],[2022.1,953.99,0],[3595.96,4307.39,0],[4666.67,2323.52,0],[2718.37,2145.82,0],[2441.71,3784.34,0],[417.767,1482.81,0],[1087.7,1757.15,0],[2644.26,2376.06,0],[2800.21,3270.98,0],[3946.61,3428.08,0],[2849.15,2260.93,0],[1661.34,4694.55,0],[3004.8,4287.48,0],[2803.52,3419.95,0],[1271.58,4152.71,0],[2215.47,1991.01,0],[4180.43,3709.18,0],[3946.59,4292.07,0],[1424.08,4134.33,0],[1116.87,3686.94,0],[1255.67,3877.35,0]];
workplacejob_taxi_sperrzeit	 = 0.01;																						
workplacejob_taxi_multiplikator  = 4;																						
workplacejob_taxi_maxmoney       = 10000;
taximaxdistance			 = 7000;
taximindistance			 = 2000;
workplacejob_assassin_break   = 10;
workplacejob_assassion_failed = false;
workplacejob_hostage_break   = 5;
workplacejob_hostage_failed = false;


/*Other*/
lockpicking = false;
isstunned                = false;
Antwort                  = 0;
CivTimeInPrison          = 0;
isCrackingSafe			 = 0;
safeCrackFailed			 = 0;
StunActiveTime           = 0;
StunTimePerHit		 = 15;
MaxStunTime		 = 30;
bc_baitcars = [];
stolenfromtime 		 = 900;
stolenfromtimeractive	 = false;
Safecracked1 = False;
pmissionactive = false;
patrolwaittime = false;
patrolmoneyperkm = 4.0;
wantedamountforbank = 100000;
oilsellpricedec          = 30;
oilbaseprice		 = 15000;
working=false;
coppatrolarray  = [[4045.69,2284.16,0],[3661.66,4261.21,0],[4169.17,3648.72,0],[2918,3514.07,0],[1139.32,4564.22,0],[1112.11,3782.8,0],[3025.85,4435.61,0],[2190.9,4489.62,0],[2429.91,4768.43,0],[904.459,1176.82,0],[1578.37,4739.66,0],[1972.94,4290.42,0],[1523.08,4389.92,0],[2570.85,3779.43,0],[2846.55,1488.14,0],[1483.26,2539.71,0],[727.739,2934.53,0],[1563.24,4871.82,0],[2520.61,4665.69,0]];
SigningUpForDebitCard	 = false;
slave_cost               = 40000;
HideoutLocationArray     = [];
doingSomething            = false;
nonlethalweapons	 = ["","Binocular", "NVGoggles", "ItemMap", "ItemCompass", "ItemRadio", "ItemWatch", "ItemGPS","TFAR_Ruck_Base", "tf_rt1523g", "tf_anprc155", "tf_mr3000", "tf_anarc210", "tf_anarc164", "tf_mr6000l", "tf_gm380", "tf_microdagr", "tf_r55", "tf_pd785", "tf_dtr650", "tf_anprc152", "tf_anprc148jem", "tf_fadak", "tf_anprc154", "tf_rf7800str", "tf_pnr1000a"];

civclassarray =[ "TK_CIV_Takistani01_EP1", "TK_CIV_Takistani02_EP1", "TK_CIV_Takistani03_EP1", "TK_CIV_Takistani04_EP1", "TK_CIV_Takistani05_EP1", "TK_CIV_Takistani06_EP1", "TK_CIV_Woman01_EP1", "TK_CIV_Woman02_EP1", "TK_CIV_Woman03_EP1", "TK_CIV_Worker01_EP1", "TK_CIV_Worker02_EP1", "Citizen2_EP1", "Citizen3_EP1", "CIV_EuroMan01_EP1", "CIV_EuroMan02_EP1", "Dr_Hladik_EP1", "Functionary1_EP1", "Functionary2_EP1", "Haris_Press_EP1", "Profiteer2_EP1", "TK_Soldier_Sniper_EP1", "US_Soldier_Pilot_EP1", "Doctor", "Rocker2", "Soldier_TL_PMC", "Reynolds_PMC", "Soldier_Pilot_PMC", "Soldier_M4A3_PMC", "Ry_PMC", "Dixon_PMC" ];
processscriptrunning = 0;
