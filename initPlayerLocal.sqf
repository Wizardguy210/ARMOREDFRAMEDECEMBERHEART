["Init", []] spawn SNX_fnc_fucktfr;

//Briefing
player createDiaryRecord ["Diary", ["Mission Overview", "NATO has taken over a large portion of our former outposts in the north-western sector of the island. We're going to drive them away.<br/>
<br/>
We've divided this operation into two sectors, East and West. <br/>
Capture the lightly-guarded eastern sector for supplies, then move onto the western sector.<br/>
Please do note that we found out that the IFVs you're using had their ammunition stores emptied out. You've got what's in the breech and that's it."]];

player createDiaryRecord ["Diary", ["Enemy presence", "East sector: Light NATO presence. <br/>
Reinforced outposts, minor infantry, MRAPs, LSVs and a single CROWS-equipped IFV.<br/>
<br/>
West sector: Heavy NATO presence.<br/> 
Heavily fortified outposts, autonomous HMG and GMG turrets, MBTs, autocannon IFVs, LSVs, mortars, numerous infantry.
"]];

//Signals (radio info)
//Execute expression="string" lets you add a "link"
//in this case, one link to set a channel, one to set a frequency
//use str x because using parentheses breaks the code
player createDiaryRecord ["Diary", ["Signals", "Preset radio channels and frequencies:<br/>
<font size=12>Clicking a link will set your channel.</font><br/>
<font size=12>Clicking on a frequency will set the frequency on your active channel.</font><br/>
<br/>
<font color='#ff0000'>SHORT RANGE:<br/></font><font color='#ffffff'>
<execute expression='[(call TFAR_fnc_activeSwRadio), 0]  call TFAR_fnc_setSwChannel; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>
Alpha, CH1 </execute>
(<font color='#99ff99'><execute expression='str 100 call TFAR_fnc_setPersonalRadioFrequency; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>100</font><font color='#ffffff'></execute>)
<br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 1]  call TFAR_fnc_setSwChannel; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>
Bravo, CH2 </execute>
(<font color='#99ff99'><execute expression='str 110 call TFAR_fnc_setPersonalRadioFrequency; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>110</font><font color='#ffffff'></execute>)
<br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 2]  call TFAR_fnc_setSwChannel; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>
Charlie, CH3 </execute>
(<font color='#99ff99'><execute expression='str 120 call TFAR_fnc_setPersonalRadioFrequency; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>120</font><font color='#ffffff'></execute>)
<br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 3]  call TFAR_fnc_setSwChannel; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>
Delta, CH4 </execute>
(<font color='#99ff99'><execute expression='str 130 call TFAR_fnc_setPersonalRadioFrequency; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>130</font><font color='#ffffff'></execute>)
<br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 4]  call TFAR_fnc_setSwChannel; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>
Mars Frame, CH5 </execute>
(<font color='#99ff99'><execute expression='str 140 call TFAR_fnc_setPersonalRadioFrequency; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>140</font><font color='#ffffff'></execute>)
<br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 5]  call TFAR_fnc_setSwChannel; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>
Jupiter Frame, CH6 </execute>
(<font color='#99ff99'><execute expression='str 150 call TFAR_fnc_setPersonalRadioFrequency; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>150</font><font color='#ffffff'></execute>)
<br/>
<execute expression='[(call TFAR_fnc_activeSwRadio), 6]  call TFAR_fnc_setSwChannel; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>
Command, CH7 </execute>
(<font color='#99ff99'><execute expression='str 160 call TFAR_fnc_setPersonalRadioFrequency; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>160</font><font color='#ffffff'></execute>)
<execute expression='[(call TFAR_fnc_activeSwRadio), 7]  call TFAR_fnc_setSwChannel; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>
Command Net, CH8 </execute>
(<font color='#99ff99'><execute expression='str 50 call TFAR_fnc_setPersonalRadioFrequency; [(call TFAR_fnc_activeSwRadio), false] call TFAR_fnc_ShowRadioInfo;'>50</font><font color='#ffffff'></execute>)
<br/>
<br/>
<font color='#3366ff'>LONG RANGE:<br/></font><font color='#ffffff'>
<execute expression='[(call TFAR_fnc_activeLrRadio), 0]  call TFAR_fnc_setLrChannel; [(call TFAR_fnc_activeLrRadio), true] call TFAR_fnc_ShowRadioInfo;'>
General Net, CH1 </execute>
(<font color='#99ff99'><execute expression='str 50 call TFAR_fnc_setLongRangeRadioFrequency; [(call TFAR_fnc_activeLrRadio), true] call TFAR_fnc_ShowRadioInfo;'>50</font></execute>)</font><font color='#ffffff'><br/>
<execute expression='[(call TFAR_fnc_activeLrRadio), 1]  call TFAR_fnc_setLrChannel; [(call TFAR_fnc_activeLrRadio), true] call TFAR_fnc_ShowRadioInfo;'>
Vehicle Inter-communications Net, CH2 </execute>
(<font color='#99ff99'><execute expression='str 51 call TFAR_fnc_setLongRangeRadioFrequency; [(call TFAR_fnc_activeLrRadio), true] call TFAR_fnc_ShowRadioInfo;'>51</font></execute>)</font><font color='#ffffff'><br/>
<execute expression='[(call TFAR_fnc_activeLrRadio), 2]  call TFAR_fnc_setLrChannel; [(call TFAR_fnc_activeLrRadio), true] call TFAR_fnc_ShowRadioInfo;'>
Aircraft inter-communications net, CH3 </execute>
(<font color='#99ff99'><execute expression='str 52 call TFAR_fnc_setLongRangeRadioFrequency; [(call TFAR_fnc_activeLrRadio), true] call TFAR_fnc_ShowRadioInfo;'>52</font></execute>)</font><font color='#ffffff'><br/>
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
		
	case "I_Soldier_AR_F": //machine gunnnn
		{
		};
	
	case "I_medic_F": //Medic
		{
			removebackpack player;
			player addBackpack "B_Kitbag_rgr";
			if ( ace_medical_level == 2) then 
				{
					player AddItem "ACE_surgicalKit";
					player AddItem "ACE_Defibrillator";
					for "_i" from 1 to 25 do {player addItem "ACE_morphine";};
					for "_i" from 1 to 18 do {player addItem "ACE_epinephrine";};
					for "_i" from 1 to 7 do {player addItem "ACE_bloodIV";};
					for "_i" from 1 to 10 do {player addItem "ACE_bloodIV_500";};
					for "_i" from 1 to 20 do {player addItem "ACE_fieldDressing";};
					for "_i" from 1 to 5 do {player addItem "ACE_tourniquet";};
					for "_i" from 1 to 60 do {player addItem "ACE_elasticBandage";};
					for "_i" from 1 to 5 do {player addItem "ACE_quikclot";};
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

//Medical for non-medics
if ( ace_medical_level == 2) then 
			{
				for "_i" from 1 to 2 do {player addItem "ACE_morphine";};
				for "_i" from 1 to 1 do {player addItem "ACE_epinephrine";};
				for "_i" from 1 to 6 do {player addItem "ACE_fieldDressing";};
				for "_i" from 1 to 2 do {player addItem "ACE_elasticBandage";};
				for "_i" from 1 to 6 do {player addItem "ACE_quikclot";};
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

player addMPEventHandler ["MPKilled", 
{
	_kill = (_this select 0);
	//Switch unit in condition to desired respawn unit
	_kill addAction ["Combat Life Save", "resurrect.sqf", nil, 6, false, true, "", "typeof _this == 'I_medic_F'", 2];
}];

player addMPEventHandler ["MPRespawn",
{
	_corpse = (_this select 1);
	deletevehicle _corpse;
}];
