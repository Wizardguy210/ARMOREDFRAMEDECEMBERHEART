//This file, along with 3 extra files is required for Dynaspawn to function. Run install.cmd inside tools and then paste #include <include\CfgDynaspawn.hpp> in your description.ext to add it correctly to your mission.

class CfgDynaspawn
{
    defaultTeam[] = { "B_Soldier_F" }; //Default group. Only for backwards compatibility!
    defaultVehicle = "B_MRAP_01_F"; //Default Vehicle to use.
    defaultGroupAmount = 3;
    defaultLargeGroupChance = 0.5;
    defaultSpecialGroupChance = 0.1;
    groupLimit = 50; //Total amount of groups at any time
    reinforcementGroupLimit = 30; //Amount of reinforcement groups allowed at any time
    unitLimit = 200; //Total unit limit at any time.
    reinforcementUnitLimit = 100; //Total amount of reinforcement units at any time.
    minSpawnDistance = 200;
    maxSpawnDistance = 1000;
    maxVehicleSpawnDistance = 1200;
    battlefieldTimeout = 600; //How much time after players leave the AO should past to make groups despawn (only applies to transient or persistent groups)


    class Infantry
    {
        class Default
        {
            keyword = "DYN_infantry"; //Trigger text that will be used to select zones. Case-sensitive
            side = 0; //Side that units will be spawned as. 0 -- West, 1 -- East, 2 -- Resistance, 3 -- Civilian
            perTriggerAmount = 3; //Amount of groups to spawn per zone
            minSpawnDistance = 200; //Minimum distance at which units will spawn. It and trigger radius will be used to determine final minimal distance
            maxSpawnDistance = 1000; //Same as above but maximum
            spawnChances[] = { 0.5, 0.1 }; //Percentages.
            guardChance = 0.5; 
            customLoadout = 0; //Set to 1 to use custom loadouts globally in this class (customLoadout of each group is ignored). Loadouts are defined in CfgLoadouts
            transient = 0; //Should groups be deleted if players leave?
            persistent = 0; //Should groups persist (de-spawn and re-spawn) if players leave
            persistCondition = "true";

            class SmallGroups //Basic groups, will always spawn.
            {
                class DYN_infantryTeam //Group definition
                {
                    units[] = { "B_Soldier_TL_F", "B_medic_F", "B_Soldier_AR_F", "B_Soldier_F" }; //In order of spawn
                    ranks[] = { "Corporal", "Corporal", "Private", "Private" }; //Chain of command
                    skill[] = { 0.25, 0.5 }; //Min/Max
                    canSpawn = 1; //Can this group be selected to spawn in as patrol
                    canReinforce = 0; //Can this group be selected for reinforcements
                    customLoadout = 0; //Does this group get custom loadout
                };
            };

            class LargeGroups //Large groups have a chance to spawn instead of a small group. Uses first element of spawnChances[] to determine chance to spawn.
            {
                class DYN_infantrySquad
                {
                    units[] = { "B_Soldier_SL_F", "B_Soldier_TL_F", "B_Soldier_TL_F", "B_medic_F", "B_Soldier_AR_F", "B_Soldier_AR_F", "B_Soldier_GL_F", "B_Soldier_LAT_F", "B_Soldier_A_F" };
                    ranks[] = { "Sergeant", "Corporal", "Corporal", "Corporal", "Private", "Private", "Private", "Private", "Private" };
                    skill[] = { 0.25, 0.5 };
                    canReinforce = 1;
                    canSpawn = 1;
                    customLoadout = 0;
                };
            };

            class SpecialGroups //Rarest groups, use second element of spawnChances[].
            {
                class DYN_weaponsGroup
                {
                    units[] = { "B_Soldier_SL_F", "B_Soldier_AT_F", "B_Soldier_AAT_F" };
                    ranks[] = { "Corporal", "Private", "Private" };
                    skill[] = { 0.25, 0.5 };
                    canReinforce = 1;
                    canSpawn = 1;
                    customLoadout = 0;
                };
            };
            class Reinforcements
            {
                class TransportVehicles
                {
                    types[] = { "B_Truck_01_transport_F" }; //Array of vehicle types used to transport reinforcements
                    customInventory = 0; //Not Implemented
                };
            };
        };
    };

    class Vehicles //Vehicles Container
    {
        class MilitaryCars
        {
            keyword = "DYN_patrolCar";
            side = 0;
            vehicles[] = { "B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F", "B_T_LSV_01_armed_F" };
            expression = ""; //Execute expression after vehicle spawns. Essentialy an init field. Passed params are: [Vehicle, Crew, Group]. Expression is executed after vehicle is fully initialized.
            canHelp = 1; //Not implemented
            canTransportReinforcements = 0; //Not implemented
            spawnDistance = 1200; //Distance that players must be from center of trigger for vehicle to spawn
            customInventory = 0; //Custom Inventories are defined in CfgVehicleInventories.hpp
            customLoadout = 0; //Should crew use custom loadouts defined in CfgLoadouts.hpp
            transient = 0;
            persistent = 0;
            persistCondition = "true";
        };
    };

    class Garrisons
    {
        globalBuildingBlacklist[] = {}; //Building classnames in this list will be ignored for garrisonning
        garrisonRange = 500; //Simulation range of garrisons (added to trigger area). Units will despawn if no players are found within this range (time of despawn is affected by DYN_battlefieldTimeout variable)
        class Example
        {
            keyword = "DYN_garrison";
            blacklist[] = {}; //Appended to global blacklist
            side = 0;
            units[] = {"B_Soldier_TL_F", "B_medic_F", "B_Soldier_AR_F", "B_Soldier_AR_F", "B_Soldier_GL_F", "B_Soldier_LAT_F", "B_Soldier_A_F"}; //Pool of classnames to spawn
            maxUnits = 30; //Maximum of units to spawn in this zone
            customLoadout = 0;
            buildingOccupation = 0.5;
            /* Condition on which to spawn units Available variables: _tpos (position of the trigger)
                                                                      _trad (radius of the trigger)
                                                                      _rangeMax (maximum range for garrisons, set above) */
            condition = "{ _x distance _tpos < (_rangeMax + _trad) } count allPlayers > 0"; //Default condition: At least one player within (garrison range + trigger radius) meters of trigger center
            transient = 0; //Garrison is removed once spawned and players leave the area
            persistent = 0; //Garrison will stay but despawn if spawned and players leave the area
            persistCondition = "true"; //Anything that returns a boolean.
        }
    };

    class VehicleInventories
    {
        #include "CfgVehicleInventories.hpp"
    };
    class Loadouts
    {
        #include "CfgLoadouts.hpp"
    };
};
