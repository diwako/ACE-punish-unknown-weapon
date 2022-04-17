/*
  Function: diwako_unknownwp_fnc_firedEh

  Description:
    Fired evenhandler function

  Parameters:
    _weapon - Weapon that fired

  Returns:
    nothing

  Author:
  diwako 2018-10-26
*/
params ["_weapon"];
if !(primaryWeapon ace_player == _weapon) exitWith {};
if (isNil "diwako_unknownwp_weapon_whitelist") exitWith {};

// private _weaponData = ace_overheating_cacheWeaponData get _weapon;
private _weaponData = diwako_unknownwp_cacheWeaponData getOrDefault [_weapon, false];
if !(_weaponData) then {
  diwako_unknownwp_cacheWeaponData set [_weapon, true];
  private _weaponUpper = toUpper(_weapon);
  // weapon class has not been initialized
  if !(_weaponUpper in diwako_unknownwp_weapon_whitelist || {_weaponUpper in diwako_unknownwp_local_weapons}) then {
    // weapon not in whitelist
    private _weaponData = [_weapon] call ace_overheating_fnc_getWeaponData;
      /*
      * 0: dispresion <NUMBER>
      * 1: slowdownFactor <NUMBER>
      * 2: jamChance <NUMBER>
      */
    _weaponData set [0, (_weaponData select 0) + diwako_unknownwp_dispersion_add];
    _weaponData set [2, (_weaponData select 2) + (diwako_unknownwp_jamchance_add / 100)];
    ace_overheating_cacheWeaponData set [_weapon, _weaponData];
  };
};