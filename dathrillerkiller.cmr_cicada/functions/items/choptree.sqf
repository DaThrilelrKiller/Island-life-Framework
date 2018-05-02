/*
Script: choptree.sqf
Description: Determines what form of wood you get and how much you get.
Exec: When Axe is used.
Written by: ZKB1325
*/

private ["_art","_gettreereturn","_choppedtree","_amountchopped","_amount","_treecuttinlvlinc","_k"];

_art = _this select 0;


if(working) exitwith {systemChat "Your already performing an action please wait";};
if (vehicle player != player) exitWith {systemChat "you can only chop down trees on foot";};
if ((player distance getmarkerpos "forest" < 175) or (player distance getmarkerpos "forest2" < 175)) then 
{
	working=true;

	if (_art == "use") then 

	{
	_foundtree = false;
		{   
		
		if ((typeOf _x == "") and (damage _x < 1)) exitWith     
			{ 
			_choppedtree = ["wood","wood"] call BIS_selectRandom;/*just in case we want to add other types of trees (ash, hicery, maple)*/
			_amountchopped = [1,2,3,4,5] call BIS_selectRandom;
			
			for [{_k=0}, {_k < 2}, {_k=_k+1}] do 
			{
			["ALL",[player,"CtsDoktor_Vojak_uder1"],"network_SwitchMove",false,true]call network_MPExec;
			titletext ["Chopping Tree...", "PLAIN DOWN"];
			sleep 3; 	
			["ALL",[player," "],"network_SwitchMove",false,true]call network_MPExec;
			};
			
	   
			_x setdamage 1;  

			[player,_choppedtree,_amountchopped] call storage_add;
			systemChat format ["you chopped down a tree and got %1 %2", _amount, _choppedtree call config_displayname];
			
			_foundtree = true;
			};
			
		} count (nearestObjects [player,[], 10]);
		

	if !(_foundtree) exitWith {systemChat "You are not close enough to a tree";};
	};
}
else
{
systemChat "your not in a forest";
};
working=false;