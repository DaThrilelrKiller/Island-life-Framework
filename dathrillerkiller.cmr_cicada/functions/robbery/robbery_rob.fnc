/*
File: fn_Rob.sqf
Desc: Used to robs stores. Note you must stay at the store to finish robbing or else you wont get any money
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/

private ["_place","_name","_message","_amount"];


_place = _this select 0;
_name = _this select 1;

_amount = _place getVariable ["robbery_money",0];
_place setVariable ["robbery_avalible",false,true];


if (!(call INV_isArmed)) exitwith
{
	1560 cutText ["You need a gun to rob the station!","PLAIN DOWN"];
	_message3 = format['A sensor alarm at %1 has just gone off!',_name];
	["ALL",["iscop","Police Dispatch",_message3],"Main_Notification",true,false]call network_MPExec;
}; 

_message2 = format ['The silent alarm at %1 has gone off, Go investigate!',_name];
["ALL",["iscop","Police Dispatch",_message2],"Main_Notification",true,false]call network_MPExec;


robbing = true;

[_place,_name]spawn robbery_handler;

_script = []spawn robbery_text;
waitUntil {ScriptDone _script};


systemChat  "Clerk has handed you the money! Now get out of there before the cops show up!";

robbing = false;

[player,"Robbed a gas station",wantedamountforrobbing]call cdb_addWarrant;

player sidechat format ["You stole $%1 from the gas station!",_amount];
[player,"geld",_amount] call storage_add;
_place setVariable ["robbery_money",0,true];


_message = format ['Someone robbed %1', _name];
["ALL",["iscop","Police Dispatch",_message],"Main_Notification",true,false]call network_MPExec;



_place setVariable ["robbery_avalible",true,true];


local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;