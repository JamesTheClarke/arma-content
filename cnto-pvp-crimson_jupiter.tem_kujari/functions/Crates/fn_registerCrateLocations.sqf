/* 	Registers possible crate locations.
	Returns crate locations based on the CJ_objective. */

if (isNil "CJ_objective") exitWith {};

private _crates = getMarkerPos CJ_objective nearEntities [CJ_crateType, 250];

_crates