enableSaving [False, False];

lazarustouch =
{
    if (!(alive player)) then
    {
        _place = getpos player;
		["Terminate",[]] call BIS_fnc_EGSpectator;
        setPlayerRespawnTime 10;
        waitUntil{ alive player };
        setPlayerRespawnTime 300;
		player setpos _place;
    };
};

//advance the plot