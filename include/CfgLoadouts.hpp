class Default //Will be loaded if no appropriate loadout was found
{
    class Default
    {
        scope = 1; //Scope. 1 - Private, 2 - Public. Private loadouts cannot be used for randomization.
        //for arrays you MUST use {} instead of []
        primaryWeapon[] = { "arifle_MX_Black_F","","acc_pointer_IR","", {"30Rnd_65x39_caseless_mag_Tracer",30},{},"bipod_01_F_blk" }; // class, muzzle, accessory, optic, [CurrentMagazine, Ammo],[SecondaryMuzzleMagazine,Ammo],bipod
        secondaryWeapon[] = { "","","","", {},{},"" }; //same
        handgun[] = { "hgun_P07_F","","","", {"16Rnd_9x21_Mag",17},{},"" }; //same
        binocular[] = { "Binocular","","","", {},{},"" }; //same
        //This ignores storage limits of containers. Don't go overboard.
        uniformItems[] = {{"FirstAidKit", 2}, {"16Rnd_9x21_Mag", 3, 17}, {"SmokeShell", 3,1}}; //[Item, Count], [Magazine, Count, Ammo], [GrenadeIsAlsoAMagazine, Count, Ammo]
        vestItems[] = {{"30Rnd_65x39_caseless_mag_Tracer", 8, 30}, {"HandGrenade", 2, 1}, {"SmokeShellBlue", 4, 1}, {"Chemlight_blue",4,1}};
        backpackItems[] = {{"DemoCharge_Remote_Mag",4,1}, {"muzzle_snds_H", 1}};
        linkedItems[] = {"ItemMap","ItemGPS","itemRadio","ItemCompass","ItemWatch","NVGoggles"}; //Belt items. STRICT ORDER. Map, Gps, Radio, Compass, Watch, NVGoggles
        headgearClass = "H_HelmetB"; //Headgear
        goggles = ""; //Goggles. keep empty to use goggles set in the profile options.
        uniformClass = "U_B_CombatUniform_mcam"; //Uniform
        vestClass = "V_PlateCarrier1_rgr"; //Vest
        backpack = "B_Kitbag_mcamo"; //Backpack
    };
};
