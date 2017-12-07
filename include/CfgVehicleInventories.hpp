class Default //Fallback class in case specific inventory not found
{
    items[] =
    {
        {"SmokeShell", 4}, //each item is [Type, Amount]
        {"HandGrenade", 2},
        {"MiniGrenade", 4}
    };
    backpacks[] =
    {
        {"B_Kitbag_rgr", 2, {{"SmokeShell", 2}}}, //each backpack is [Type, Amount, [Storage:[Type,Amount]]]
        {"B_Kitbag_cbr", 2, {{"HandGrenade", 6}}}, //Two Coyote Kitbags with 6 RGO Grenades
        {"B_Kitbag_mcamo", 2, {}} //Two empty MTP Kitbags
    };
    class ace_medical //System will determine ace3 medical level by itself. Here you can tweak items for both levels. Note that base level (items) is always added.
    {
        items[] =
        {
            {"ACE_quikClot", 40},
            {"ACE_morphine", 10},
            {"ACE_epinephrine", 10},
            {"ACE_bloodIV", 4}
        };
        advancedItems[] =
        {
            {"ACE_elasticBandage", 30},
            {"ACE_packingBandage", 30},
            {"ACE_tourniquet", 15},
            {"ACE_personalAidKit", 4}
        };

    };
};
