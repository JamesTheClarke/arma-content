params ["_backpack"];

[
	_backpack,
	"Hide items",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"side _this == east",
	"true",
	{},
	[] call CJ_fnc_holdActionProgress, 
	{
		params ["_backpack", "_holder"];

		private _contents = [
			weaponCargo _backpack,
			magazineCargo _backpack,
			itemCargo _backpack
		];

		_holder setVariable ["CJ_specialBackpackItems", _contents];
		_holder setVariable ["CJ_specialBackpackType", typeOf _backpack];
		
		clearWeaponCargoGlobal _backpack;
		clearMagazineCargoGlobal _backpack;
		clearItemCargoGlobal _backpack;
	}, 
	{}, 
	[], 
	2, 
	20,
	false
] call BIS_fnc_holdActionAdd;