/* Registers objective location as global */

CJ_objective = selectRandom [
	CJ_objectiveWalada, CJ_objectiveGeydamTchoukou, CJ_objectiveGadjadjiLawan
];

[] spawn {
	waitUntil { time > 5 };

	CJ_objective setMarkerShape "ELLIPSE";
	CJ_objective setMarkerColor "ColorEAST";
	CJ_objective setMarkerAlpha 0.3;
	CJ_objective setMarkerBrush "SolidBorder";
	CJ_objective setMarkerSize [150, 150];

	[west, ["taskWestAttack"], ["Destroy insurgents in the area.", "Destroy insurgents", ""], getMarkerPos CJ_objective, "ASSIGNED", 10, true, "attack"] call BIS_fnc_taskCreate;
	[east, ["taskEastDefend"], ["Defend the area from infidels!", "Defend area", ""], getMarkerPos CJ_objective, "CREATED", 10, true, "defend"] call BIS_fnc_taskCreate;
};
