if (dtk_server)exitWith {};
[player,['','noscript.sqf','[]call drug_harvest',25,false,true,'LeanRight',' _plant = call drug_neardrug; if (!isNil "_plant")then{player distance _plant < 5 &&{!([_plant,"Harvest Plant (E)","sfg_textures\tags\Marijuana"]call tag_show)}}else{false}' ]]call action_add;
