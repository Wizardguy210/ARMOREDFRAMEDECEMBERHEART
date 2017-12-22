//stolen from XPT
params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
//[_newUnit, "tmtm"] remoteExec ["BIS_fnc_setUnitInsignia", 0, true];
[_newUnit] call XPT_fnc_radioHandleRespawn;