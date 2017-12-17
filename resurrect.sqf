_dead = (_this select 0);
_live = (_this select 1);
_thing = (_this select 2);

//make the condition for the defibs then uncomment the if statement
if ( "ACE_Defibrillator" in items player ) then {
	_live playmove "Acts_TreatingWounded01";

	_dead remoteExec ["lazarustouch", _dead];

	_dead removeAction _thing;
}
else
{
	player sideChat "No valid power source. I should find a defibrillator.";
};