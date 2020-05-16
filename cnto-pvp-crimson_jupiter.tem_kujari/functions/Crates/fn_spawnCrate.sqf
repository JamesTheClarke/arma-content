/* Spawns a crate at random position from the list of possible locations. */

params ["_possibleLocations"];

private _cratePosition = getMarkerPos selectRandom _possibleLocations;
private _weaponCache = "rhs_weapon_crate" createVehicle _cratePosition;

clearWeaponCargoGlobal _weaponCache;
clearMagazineCargoGlobal _weaponCache;
clearItemCargoGlobal _weaponCache;
clearBackpackCargoGlobal _weaponCache;

private _cacheContents = [] call CJ_fnc_randomizeCacheContents;

[_weaponCache, _cacheContents] spawn {
	params ["_weaponCache", "_contents"];
	_contents params ["_weapons", "_mags", "_items"];
	
	waitUntil { time > 15 }; // wait until players are well spawned in

	{
		_weaponCache addWeaponCargoGlobal _x;
	} forEach _weapons;

	{
		_weaponCache addMagazineCargoGlobal _x;
	} forEach _mags;

	{
		_weaponCache addItemCargoGlobal _x;
	} forEach _items;

	[east, ["taskCollectWeapons"],  ["Weapon cache is left by your cell fighters.", "Collect weapons", ""], getPos _weaponCache, "CREATED", 5, true, "rearm"] call BIS_fnc_taskCreate;	
};