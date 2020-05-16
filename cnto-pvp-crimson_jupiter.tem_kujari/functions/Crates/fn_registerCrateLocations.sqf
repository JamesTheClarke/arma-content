/* 	Registers possible crate locations.
	Returns crate locations based on the CJ_objective. */

if (isNil "CJ_objective") exitWith {};

private _locations = [];

private _makeLocationArray = {
	params ["_tag", "_numberOfMarkers"];
	private _locationArray = [];

	for "_i" from 1 to _numberOfMarkers do {
		_locationArray pushBack format["%1%2", _tag, _i];
	};

	_locationArray
};

switch (CJ_objective) do {
	case CJ_objectiveWalada: { _locations = ["CJ_waladaCrate", 6] call _makeLocationArray; };
	case CJ_objectiveGeydamTchoukou: { _locations = ["CJ_GeydamCrate", 6] call _makeLocationArray; };
	case CJ_objectiveGadjadjiLawan: { _locations = ["CJ_gadjadjiCrate", 5] call _makeLocationArray; };
};

_locations