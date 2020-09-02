params ["_holder"];

[
	_holder,
	"Dump hidden items",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
	"(_target getVariable ['CJ_specialBackpackType', '']) != ''",
	"true",
	{},
	[] call CJ_fnc_holdActionProgress, 
	{
		params ["_holder"];

		private _backpackItems = _holder getVariable ["CJ_specialBackpackItems", []];
		private _backpackType = _holder getVariable ["CJ_specialBackpackType", nil];

		if (!isNil "_backpackType") then {
			private _position = getPos _holder;	
			private _groundWeaponHolder = createVehicle ["GroundWeaponHolder_Scripted", _position, [], 0, "CAN_COLLIDE"];

			_backpackItems params ["_weapons", "_weaponsItems", "_mags", "_items"];
			
			{
				_groundWeaponHolder addWeaponCargoGlobal [_x, 1];
			} forEach _weapons;

			{				
				_x params ["_weapon", "_muzzle", "_flashlight", "_optics", "_primaryMuzzleMagazine", "_secondaryMuzzleMagazine", "_bipod"];

				if (_flashlight != "") then {
					_groundWeaponHolder addItemCargoGlobal [_flashlight, 1];
				};

				if (_optics != "") then {
					_groundWeaponHolder addItemCargoGlobal [_optics, 1];
				};

				if (count _primaryMuzzleMagazine == 2) then {
					_groundWeaponHolder addMagazineCargoGlobal [_primaryMuzzleMagazine select 0, 1];
				};

				if (count _secondaryMuzzleMagazine == 2) then {
					_groundWeaponHolder addMagazineCargoGlobal [_secondaryMuzzleMagazine select 0, 1];
				};

				if (_bipod != "") then {
					_groundWeaponHolder addItemCargoGlobal [_bipod, 1];
				};
			} forEach _weaponsItems;

			{
				_groundWeaponHolder addMagazineCargoGlobal [_x, 1];
			} forEach _mags;

			{
				_groundWeaponHolder addItemCargoGlobal [_x, 1];
			} forEach _items;

			_holder setVariable ["CJ_specialBackpackItems", nil];
			_holder setVariable ["CJ_specialBackpackType", nil];
		}
	}, 
	{},
	[], 
	3, 
	20, 
	false
] call BIS_fnc_holdActionAdd;