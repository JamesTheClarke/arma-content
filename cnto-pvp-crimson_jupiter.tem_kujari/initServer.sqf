[] call CJ_fnc_initializeMission;
[] call CJ_fnc_randomizeObjective;

private _possibleCrateLocations = [] call CJ_fnc_registerCrateLocations;
[_possibleCrateLocations] call CJ_fnc_spawnCrate;