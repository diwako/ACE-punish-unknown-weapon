// this is just for testing reasons, this is not needed for the script

if (!isMultiplayer) then {
	[["<t color='#ffff00'>[ Arsenal ]</t>", {["Open", true] spawn bis_fnc_arsenal}, 0, -85, false, true, "", ""]] call CBA_fnc_addPlayerAction;
	[player, true] spawn ace_arsenal_fnc_initBox;
	[["<t color='#ffff00'>[ ACE Arsenal ]</t>", {[player, player] call ace_arsenal_fnc_openBox}, 0, -85, false, true, "", ""]] call CBA_fnc_addPlayerAction;
	enableSaving [false, false];
};