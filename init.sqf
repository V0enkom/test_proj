_unit = player2;
_unit addEventHandler ["Reloaded", {
    params ["_unit", "_weapon", "_muzzle", "_newMagazine", "_oldMagazine"];
    _currentWeapon = currentWeapon _unit;
    _magazineType = getArray (configFile >> "CfgWeapons" >> _currentWeapon >> "magazines") select 0;
    _unit addMagazine _magazineType;
    systemChat format ["Добавлен один магазин для %1", _currentWeapon];
}];


