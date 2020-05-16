/* Returns random cache content from pregenerated list. */

private _possibleCacheContents = [
	[
		// loadout Insurgent 1
		// weapon, number of weapons
		[
			["rhs_weap_akm", 5],
			["rhs_weap_akm_gp25", 2]
		],
		// magazines, number of magazines
		[
			["rhs_30Rnd_762x39mm", 20],
			["rhs_VOG25", 5],
			["rhs_mag_rgd5", 5]
		],
		// items, number of items
		[
			["rhs_acc_dtkakm", 2]	
		]
	]
];

private _randomCacheContent = selectRandom _possibleCacheContents;

_randomCacheContent