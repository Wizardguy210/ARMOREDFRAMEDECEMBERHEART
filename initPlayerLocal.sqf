["Init", []] spawn SNX_fnc_tfarSetup;

//Literally copied from oscillating unident
//Todo: Briefing
//Todo: Loadouts
//Todo: Logical radio channel layout
//Todo: Add insignias maybe?


//Briefing
player createDiaryRecord ["Diary", ["Mission Overview", "NATO has taken over a large portion of our former outposts in the north-eastern sector of the island. We're going to drive them away.<br/>
<br/>
We've divided this operation into two sectors, East and West. <br/>
Capture the lightly-guarded eastern sector for supplies, then move onto the western sector."]];

player createDiaryRecord ["Diary", ["Enemy presence", "East sector: Light NATO presence. <br/>
Reinforced outposts, minor infantry, MRAPs, LSVs and a single CROWS-equipped IFV.<br/>
<br/>
West sector: Heavy NATO presence.<br/> 
Heavily fortified outposts, autonomous HMG and GMG turrets, MBTs, autocannon IFVs, LSVs, mortars, numerous infantry.
"]];
//Fancy links!
player createDiaryRecord ["Diary", ["Signals", "Preset radio channels and frequencies:<br/>
<font size=12>Clicking a link will set your channel.</font><br/>
<br/>
<font color='#ff0000'>SHORT RANGE:<br/></font>
<execute expression='[(call TFAR_fnc_activeSwRadio), 0]  call TFAR_fnc_setSwChannel;'>
Alpha, CH1 
(<font color='#99ff99'>100</font>)
</execute><br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 1]  call TFAR_fnc_setSwChannel;'>
Bravo, CH2
(<font color='#99ff99'>110</font>)
</execute><br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 2]  call TFAR_fnc_setSwChannel;'>
Charlie, CH3
(<font color='#99ff99'>120</font>)
</execute><br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 3]  call TFAR_fnc_setSwChannel;'>
Delta, CH4
(<font color='#99ff99'>130</font>)
</execute><br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 4]  call TFAR_fnc_setSwChannel;'>
Mars Frame, CH5
(<font color='#99ff99'>140</font>)
</execute><br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 5]  call TFAR_fnc_setSwChannel;'>
Jupiter Frame, CH6
(<font color='#99ff99'>150</font>)
</execute><br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 7]  call TFAR_fnc_setSwChannel;'>
Command Net, CH8
(<font color='#99ff99'>50</font>)
</execute><br/>
<br/>
<font color='#3366ff'>LONG RANGE:<br/></font>
Command Net, CH1 (<font color='#99ff99'>50</font>)
"]];

player createDiaryRecord ["Diary", ["Assets", "You have at your disposal:<br/>
<br/>
- 4 FV-720 Mora IFVs (Callsign: Heart) <br/>
- 1  WY-55 Hellcat w/ 2x Scalpel ATGM (Callsign: Mars Frame)<br/>
- 1 CH-49 Mohawk (Callsign: Jupiter Frame)<br/>
- 3 Strider MRAPs
"]];


/****************************

			Gear!

****************************/
//Mostly using standard gear.

//Zeus / testing units don't need this section
if (side player != resistance) then {exitwith};

player addWeapon "Binocular";

if (paramsArray select 4 == 1) then {
	player linkItem "ItemMicroDAGR";	
	}
	else {
	player linkItem "ItemGPS";
};

player removemagazines "30Rnd_9x21_Yellow_Mag";
player removemagazines "9Rnd_45ACP_Mag";

removebackpack player;
player addbackpack "B_AssaultPack_dgtl";
player addPrimaryWeaponItem "optic_ACO_grn";

//set up gear for specific types first
switch (typeOf player) do 
{
	case "I_Soldier_SL_F": //SQLs need androids and radio packs
		{
			removebackpack player;
			player addBackpack "TFAR_anprc155";
			player linkItem "itemAndroid";
			player addPrimaryWeaponItem "optic_MRCO";
		};
		
	case "I_Soldier_TL_F": //TLs are grenadiers
		{
			player addmagazines ["1Rnd_HE_Grenade_shell",30];
		};	
	
	case "I_engineer_F": //demorepairbro
		{
			player addItem "Toolkit";
			player addItem "Minedetector";
			player addItem "ACE_defusalKit";
			player addItem "ACE_clacker";
			player addItem "ACE_EntrenchingTool";
			player addMagazine "DemoCharge_Remote_Mag";
		};
		
	case "I_Soldier_exp_F": //demobro
		{
			player addItem "Toolkit";
			player addItem "Minedetector";
			player addItem "ACE_defusalKit";
			player addItem "ACE_clacker";
			player addItem "ACE_EntrenchingTool";
			player addMagazines ["DemoCharge_Remote_Mag",3];
		};
		
	case "I_Soldier_exp_F": //machine gunnnn
		{
			player addItem "Toolkit";
			player addItem "Minedetector";
			player addItem "ACE_defusalKit";
			player addItem "ACE_clacker";
			player addItem "ACE_EntrenchingTool";
			player addMagazines ["DemoCharge_Remote_Mag",3];
		};
	
	case "I_medic_F": //Medic
		{
			removebackpack player;
			player addBackpack "B_TacticalPack_oli";
			if ( ace_medical_level == 2) then 
				{
					player AddItem "ACE_surgicalKit";
					player AddItem "ACE_Defibrillator";
					for "_i" from 1 to 30 do {player addItem "ACE_morphine";};
					for "_i" from 1 to 15 do {player addItem "ACE_epinephrine";};
					for "_i" from 1 to 10 do {player addItem "ACE_bloodIV";};
					for "_i" from 1 to 20 do {player addItem "ACE_fieldDressing";};
					for "_i" from 1 to 5 do {player addItem "ACE_tourniquet";};
					for "_i" from 1 to 30 do {player addItem "ACE_elasticBandage";};
					for "_i" from 1 to 20 do {player addItem "ACE_packingBandage";};
					for "_i" from 1 to 2 do {player addItem "ACE_personalAidKit";};
				}
				else
				{
					for "_i" from 1 to 20 do {player addItemToBackpack "ACE_morphine";};
					for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
					for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
					for "_i" from 1 to 5 do {player addItemToBackpack "ACE_bloodIV";};
					for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
				};
		};
		
	case "I_pilot_F": //Crew - Commander
		{
		player forceAddUniform "U_I_CombatUniform";
		player addVest "V_BandollierB_oli";
		player addHeadgear "H_MilCap_dgtl";
		player addmagazines ["30Rnd_556x45_Stanag_Tracer_Yellow",4];
		player addWeapon "arifle_Mk20C_F";
		player addPrimaryWeaponItem "optic_ACO_grn";
		if (paramsArray select 4 == 1) then {
				player linkItem "itemAndroid";	
			};
		};

	case "I_crew_F": //Crew - Gunner
		{
			player addWeapon "arifle_Mk20C_F";
			player addVest "V_TacVest_camo";
		};
	
	case "I_Soldier_repair_F": //Crew - Driver / repairman
		{
			player addWeapon "arifle_Mk20C_F";
			player addPrimaryWeaponItem "optic_ACO_grn";
			player addVest "V_TacVest_oli";
			player addHeadgear "H_HelmetCrew_I";
			player addItem "Toolkit";
			player addItem "ACE_EntrenchingTool";
		};
		
	case "I_officer_F": //Commander
		{
			removebackpack player;
			player addBackpack "TFAR_anprc155";
			if (paramsArray select 4 == 1) then {
				player linkItem "ItemcTab";	
			};
		};	
	
	case "I_soldier_UAV_F": //Command UAV
		{
			removebackpack player;
			player addBackpack "I_UAV_01_backpack_F";
			player linkItem "I_UavTerminal";
			if (paramsArray select 4 == 1) then {
				player addItem "ItemAndroid";	
			};			
		};
		case "I_helipilot_F": //Helo crew
		{
			removebackpack player;
			player addBackpack "TFAR_anprc155";
			player addmagazines ["30Rnd_556x45_Stanag_Tracer_Yellow",4];
			player addWeapon "arifle_Mk20C_F";
			player addPrimaryWeaponItem "optic_ACO_grn";
			if (paramsArray select 4 == 1) then {
				player linkItem "ItemAndroid";	
			};			
		};
		
};


//If the player has a stanag loaded, make it a tracer mag
if (primaryWeaponMagazine player select 0 == "30Rnd_556x45_Stanag") then {
	player addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Yellow";
};

//Replace all normal stanags with tracer stanags
{ if (_x == "30Rnd_556x45_Stanag") then {
	player removemagazine _x; 
	player addmagazine "30Rnd_556x45_Stanag_Tracer_Yellow"
	}; 
} foreach magazines player;

//replace loaded belts with tracer belts
if (primaryWeaponMagazine player select 0 == "200Rnd_65x39_cased_Box") then {
	player addPrimaryWeaponItem "200Rnd_65x39_cased_Box_Tracer";
};

//Replace all normal belts with tracer belts
{ if (_x == "200Rnd_65x39_cased_Box") then {
	player removemagazine _x; 
	player addmagazine "200Rnd_65x39_cased_Box_Tracer"
	}; 
} foreach magazines player;

switch (player getVariable "Role") do {
	case "Commander": 
	{ 
		player assignTeam "YELLOW"; 
		player addHeadgear "H_MilCap_mcamo";
	};
	
	case "Gunner": 
	{ 
		player assignTeam "RED"; 
	};
	
	case "Driver": 
	{ 
		player assignTeam "BLUE"; 
	};
};


//Medical for non-medics
if ( ace_medical_level == 2) then 
			{
				for "_i" from 1 to 2 do {player addItem "ACE_morphine";};
				for "_i" from 1 to 1 do {player addItem "ACE_epinephrine";};
				for "_i" from 1 to 2 do {player addItem "ACE_fieldDressing";};
				for "_i" from 1 to 6 do {player addItem "ACE_elasticBandage";};
				for "_i" from 1 to 4 do {player addItem "ACE_packingBandage";};
				for "_i" from 1 to 2 do {player addItem "ACE_tourniquet";};
				player additem "ACE_bloodIV_250";
			}
			else
			{
				for "_i" from 1 to 10 do {player addItem "ACE_fieldDressing";};
				for "_i" from 1 to 4 do {player addItem "ace_morphine";};
				for "_i" from 1 to 2 do {player addItem "ACE_epinephrine";};
			};

//ammo

player addMagazines ["SmokeShell",1];
player addMagazines ["MiniGrenade",1];


//Set radio channels based on assigned player variables.
//Vars are set on the unit in the editor.

waitUntil { call TFAR_fnc_haveSWRadio };
[(call TFAR_fnc_activeSwRadio), (player getVariable["Channel", 0])]  call TFAR_fnc_setSwChannel;

//same as above except for insignias
if ((player getVariable "Channel") != 4) then {
		[ player, "snx_ins_SelectionUniversity"] call BIS_fnc_setUnitInsignia; 
		[player, "snx_ins_SelectionUniversity"] remoteExec ["BIS_fnc_setUnitInsignia", 0, true];
	}
	else
	{
		[ player, "snx_ins_SupportSquad"] call BIS_fnc_setUnitInsignia; 
		[player, "snx_ins_SupportSquad"] remoteExec ["BIS_fnc_setUnitInsignia", 0, true];
	};
	
player addMPEventHandler ["MPKilled", 
{
	_kill = (_this select 0);
	hint "You have died. You will have to wait out the respawn timer unless a medic revives you with the Lazarus Touch."
	//Switch unit in condition to desired respawn unit
	_kill addAction ["Combat Life Save", "resurrect.sqf", nil, 6, false, true, "", "typeof _this == 'I_medic_F'", 2];
}];

player addMPEventHandler ["MPRespawn",
{
	_corpse = (_this select 1);
	deletevehicle _corpse;
}];