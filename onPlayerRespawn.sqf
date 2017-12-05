if (alive tnkhamlet) then {player moveinCargo tnkHamlet};
if ((player getVariable "Channel") != 4) then {
		[ player, "snx_ins_SelectionUniversity"] call BIS_fnc_setUnitInsignia; 
		[player, "snx_ins_SelectionUniversity"] remoteExec ["BIS_fnc_setUnitInsignia", 0, true];
	}
	else
	{
		[ player, "snx_ins_SupportSquad"] call BIS_fnc_setUnitInsignia; 
		[player, "snx_ins_SupportSquad"] remoteExec ["BIS_fnc_setUnitInsignia", 0, true];
	};