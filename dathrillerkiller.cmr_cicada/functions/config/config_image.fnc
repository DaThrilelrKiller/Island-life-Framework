private ["_item","_return"];

_item = _this select 0;

_return = _item call {
	if (_this == "schluesselbund")exitWith {"keychain"};
	if (_this == "fishing_pole")exitWith {"fishing-pole"};
	if (_this == "cookie")exitWith {"Fortune_cookie"};
	if (_this == "glass")exitWith {"glass"};
	if (_this == "Gold")exitWith {"gold"};
	if (_this == "hideout")exitWith {"hideout"};
	if (_this == "horn_cuca")exitWith {"horn2"};
	if (_this == "horn_dukes")exitWith {"horn2"};
	if (_this == "horn_ita")exitWith {"horn2"};
	if (_this == "horn_old")exitWith {"horn2"};
	if (_this == "horn_reg")exitWith {"horn2"};
	if (_this == "horn_truck")exitWith {"horn2"};
	if (_this == "idcard")exitWith {"idcard"};
	if (_this == "kanister")exitWith {"jerrycan"};
	if (_this == "lighter")exitWith {"lighter"};
	if (_this == "lockpick")exitWith {"lockpick"};
	if (_this == "woodaxe")exitWith {"axe"};
	if (_this == "lumber")exitWith {"lummber"};
	if (_this == "medikit")exitWith {"medkit"};
	if (_this == "geld")exitWith {"money"};
	if (_this == "reparaturkit")exitWith {"repairkit"};
	if (_this == "kleinesreparaturkit")exitWith {"repairkit"};
	if (_this == "sand")exitWith {"sand"};
	if (_this == "Fuelline")exitWith {"syphon"};
	if (_this == "treeseed")exitWith {"tree"};
	if (_this == "emptywine")exitWith {"wine"};
	if (_this == "emptybeer")exitWith {"beer"};
	if (_this == "emptyVodka")exitWith {"wine"};
	if (_this == "emptywiskey")exitWith {"wine"};
	if (_this == "OilBarrel")exitWith {"barrels"};
	if (_this == "spikestrip")exitWith {"spikes"};
	if (_this == "Debit_Card")exitWith {"debitcard"};
	if (_this == "coal")exitWith {"coal"};
	if (_this == "copper")exitWith {"copper"};
	if (_this == "Diamond rock")exitWith {"diamond"};
	if (_this == "Diamond")exitWith {"diamond"};
	if (_this == "Diamondring")exitWith {"diamond"};
	if (_this == "Diamondnecklace")exitWith {"diamond"};
	if (_this == "Diamondbroach")exitWith {"diamond"};
	if (_this == "Donut")exitWith {"donut"};
	if (_this == "beer")exitWith {"beer"};
	if (_this == "beer2")exitWith {"beer"};
	if (_this == "vodka")exitWith {"wine"};
	if (_this == "smirnoff")exitWith {"wine"};
	if (_this == "wiskey")exitWith {"wine"};
	if (_this == "wine")exitWith {"wine"};
	if (_this == "wine2")exitWith {"wine"};
	if (_this == "MarijuanaSeed")exitWith {"seeds"};
	if (_this == "HeroinSeed")exitWith {"seeds"};
	if (_this == "CocaineSeed")exitWith {"seeds"};
	if (_this == "GymMem1")exitWith {"steroids"};
	if (_this == "GymMem2")exitWith {"steroids"};
	if (_this == "GymMem3")exitWith {"steroids"};
	if (_this == "GymMem4")exitWith {"steroids"};
	if (_this == "steel")exitWith {"Steel"};
	if (_this == "plastic")exitWith {"plastic"};
	if (_this == "ziptie")exitWith {"ziptie"};
	if (_this == "ziptie_bh")exitWith {"ziptie"};
	if (_this == "ziptie2")exitWith {"ziptie"};
	"case"
};

_return