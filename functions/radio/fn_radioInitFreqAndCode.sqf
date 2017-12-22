params["_mode", "_args"];
if (!canSuspend) exitWith { _this spawn _fnc_scriptName };

switch (_mode) do
{
  case "Init": 
  {
	//NATO TFAR settings
	_settingsSRW = ["100", "110", "120", "130", "140", "150", "160", "50"];	
	_settingsLRW = ["50", "51", "52", "53", "54", "55", "56", "57", "58"];
		
	tf_west_radio_code = "fug";
	TFAR_defaultFrequencies_sr_west = _settingsSRW;
	TFAR_defaultFrequencies_lr_west = _settingsLRW;
		
	//CSAT TFAR settings
	_settingsSRE = ["100", "110", "120", "130", "140", "150", "160", "50"];	
	_settingsLRE = ["50", "51", "52", "53", "54", "55", "56", "57", "58"];
		
	tf_east_radio_code = "fug";
	TFAR_defaultFrequencies_sr_east = _settingsSRE;
	TFAR_defaultFrequencies_lr_east = _settingsLRE;
		
	//INDFOR TFAR settings
	_settingsSRI = ["100", "110", "120", "130", "140", "150", "160", "50"];	
	_settingsLRI = ["50", "51", "52", "53", "54", "55", "56", "57", "58"];
		
	tf_guer_radio_code = "fug";
	TFAR_defaultFrequencies_sr_guer = _settingsSRI;
	TFAR_defaultFrequencies_lr_guer = _settingsLRI;
	TFAR_defaultFrequencies_sr_independed = _settingsSRI;
	TFAR_defaultFrequencies_lr_independed = _settingsLRI;

	//CIV TFAR settings
	_settingsSRC = ["100", "110", "120", "130", "140", "150", "160", "50"];	
	_settingsLRC = ["50", "51", "52", "53", "54", "55", "56", "57", "58"];
		
	tf_civ_radio_code = "_civ";
	TFAR_defaultFrequencies_sr_civ = _settingsSRC;
	TFAR_defaultFrequencies_lr_civ = _settingsLRC;
	
    ["SR", []] call call compile _fnc_scriptName;
    ["LR", []] call call compile _fnc_scriptName;
  };
  case "SR":
  {
    waitUntil { call TFAR_fnc_haveSWRadio };
    [
      call TFAR_fnc_activeSwRadio,
      [
        0,
        7,
        (player getVariable ["TFAR_playerFrequencies", missionNamespace getVariable[format["TFAR_defaultFrequencies_sr_%1", str playerSide], TFAR_defaultFrequencies_sr_west]]),
        0,
        (player getVariable["TFAR_radioCode", missionNamespace getVariable[format["tf_%1_radio_code", str playerSide], "_generic"]]),
        ([-1, 1] select (player getVariable["TFAR_activateSecondChannel", false])),
        0,
        getPlayerUID player,
        false,
        true
      ]
    ] call TFAR_fnc_setSwSettings;
  };
  case "LR": 
  {

    if (!(isNil {player call TFAR_fnc_backpackLr})) then
    {
      waitUntil { call TFAR_fnc_haveLRRadio };
      [
        call TFAR_fnc_activeLrRadio,
        [
          0,
          7,
          (player getVariable ["TFAR_playerLrFrequencies", missionNamespace getVariable[format["TFAR_defaultFrequencies_lr_%1", str playerSide], TFAR_defaultFrequencies_lr_west]]),
          0,
          (player getVariable["TFAR_radioCode", missionNamespace getVariable[format["tf_%1_radio_code", str playerSide], "_generic"]]),
          ([-1, 1] select (player getVariable["TFAR_activateSecondLrChannel", false])),
          0,
          nil,
          false,
          true
        ]
      ] call TFAR_fnc_setLrSettings;
    };
  };
};