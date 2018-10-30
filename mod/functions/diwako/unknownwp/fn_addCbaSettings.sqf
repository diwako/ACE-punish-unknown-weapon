/*
  Function:

  Description:
    Add CBA settings to editor and ingame

  Parameters:
  none

  Returns:
    nothing

  Author:
  diwako 2018-06-24
*/
#define CBA_SETTINGS_CAT localize "STR_unknownwp_category"

[
  "diwako_unknownwp_enable"
  ,"CHECKBOX"
  ,[localize "STR_unknownwp_enable",localize "STR_unknownwp_enable_desc"]
  ,[CBA_SETTINGS_CAT,"Basic"]
  ,true
  ,true
] call CBA_Settings_fnc_init;

[
  "diwako_unknownwp_cooldown"
  ,"SLIDER"
  ,[localize "STR_unknownwp_wait",localize "STR_unknownwp_wait_desc"]
  ,[CBA_SETTINGS_CAT,"Basic"]
  ,[1, 600, 60, 0]
  ,true
] call CBA_Settings_fnc_init;

[
  "diwako_unknownwp_dispersion_add"
  ,"SLIDER"
  ,[localize "STR_unknownwp_dispersion",localize "STR_unknownwp_dispersion_desc"]
  ,[CBA_SETTINGS_CAT,"Basic"]
  ,[0, 200, 25, 0]
  ,true
] call CBA_Settings_fnc_init;

[
  "diwako_unknownwp_jamchance_add"
  ,"SLIDER"
  ,[localize "STR_unknownwp_jamchance",localize "STR_unknownwp_jamchance_desc"]
  ,[CBA_SETTINGS_CAT,"Basic"]
  ,[0, 100, 1.5, 2]
  ,true
] call CBA_Settings_fnc_init;

[
  "diwako_unknownwp_reload_failure"
  ,"SLIDER"
  ,[localize "STR_unknownwp_reload",localize "STR_unknownwp_reload_desc"]
  ,[CBA_SETTINGS_CAT,"Basic"]
  ,[0, 100, 25, 0]
  ,true
] call CBA_Settings_fnc_init;

[
  "diwako_unknownwp_jam_explosion"
  ,"SLIDER"
  ,[localize "STR_unknownwp_explision",localize "STR_unknownwp_explision_desc"]
  ,[CBA_SETTINGS_CAT,"Basic"]
  ,[0, 100, 2, 2]
  ,true
] call CBA_Settings_fnc_init;

[
  "diwako_unknownwp_add_weapons"
  ,"EDITBOX"
  ,[localize "STR_unknownwp_addweapons",localize "STR_unknownwp_addweapons_desc"]
  ,[CBA_SETTINGS_CAT,"Basic"]
  ,"arifle_Mk20_plain_F,arifle_CTAR_blk_F"
  ,true
] call CBA_Settings_fnc_init;

[
  "diwako_unknownwp_briefing"
  ,"CHECKBOX"
  ,[localize "STR_unknownwp_briefing",localize "STR_unknownwp_briefing_desc"]
  ,[CBA_SETTINGS_CAT,"Basic"]
  ,true
  ,true
] call CBA_Settings_fnc_init;

[
  "diwako_unknownwp_propagation"
  ,"CHECKBOX"
  ,[localize "STR_unknownwp_propagation",localize "STR_unknownwp_propagation_desc"]
  ,[CBA_SETTINGS_CAT,"Advanced"]
  ,true
  ,true
] call CBA_Settings_fnc_init;
