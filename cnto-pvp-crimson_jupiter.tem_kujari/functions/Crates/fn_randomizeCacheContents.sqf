/* Returns random cache content from pregenerated list. */

private _possibleCacheContents = [
	[
		// Rifleman loadout 1
		// weapon, number of weapons
		[
			["rhs_weap_akm", 5]
		],
		// magazines, number of magazines
		[
			["rhs_30Rnd_762x39mm", 20],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rgd5", 5]
		],
		// items, number of items
		[
			["rhs_acc_dtkakm", 2]	
		]
	],
	[
		// Rifleman loadout 2
		[
			["rhs_weap_akms", 5]
		],
		[
			["rhs_30Rnd_762x39mm", 20],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rdg2_black", 5],
			["rhs_mag_rgd5", 5]
		],
		[
			["rhs_acc_dtkakm", 2]
		]
	],
	[
		// Rifleman loadout 3
		[
			["rhs_weap_aks74", 5]
		],
		[
			["rhs_30Rnd_545x39_AK", 20],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rgn", 5]
		],
		[
			["rhs_acc_dtk1983", 2]
		]
	],
	[
		// Rifleman loadout 4
		[
			["rhs_weap_aks74u", 5]
		],
		[
			["rhs_30Rnd_545x39_AK", 20],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rgn", 5]
		],
		[
			["rhs_acc_pgs64_74u", 2]
		]
	],
	[
		// Rifleman loadout 5
		[
			["rhs_weap_pm63", 5]
		],
		[
			["rhs_30Rnd_762x39mm", 20],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rgd5", 5]
		],
		[
			["rhs_acc_dtkakm", 2]
		]
	],
	[
		// Grenadier loadout
		[
			["rhs_weap_akm_gp25", 5]
		],
		[
			["rhs_30Rnd_762x39mm", 20],
			["rhs_VOG25", 10],
			["rhs_mag_rgd5", 5]
		],
		[
			["rhs_acc_dtkakm", 2]
		]
	],
	[
		// Explosive specialist loadout
		[
			["rhs_weap_aks74", 5]
		],
		[
			["rhs_30Rnd_545x39_AK", 20],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rgn", 5]
		],
		[
			["rhs_acc_dtk1983", 2],
			["ACE_Cellphone", 2],
			["ACE_DeadManSwitch", 2],
			["ACE_DefusalKit", 1],
			["ACE_Clacker", 1],
			["APERSBoundingMine_Range_Mag", 2],
			["ATMine_Range_Mag", 2],
			["DemoCharge_Remote_Mag", 2],
			["IEDUrbanBig_Remote_Mag", 1],
			["IEDLandBig_Remote_Mag", 1],
			["IEDUrbanSmall_Remote_Mag", 1]
		]
	],
	[
		// AT
		[
			["rhs_weap_aks74u", 5],
			["rhs_weap_rpg7", 2]
		],
		[
			["rhs_30Rnd_545x39_AK", 20],
			["rhs_rpg7_PG7VL_mag", 4],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rgd5", 5],
			["rhs_rpg7_PG7VR_mag", 4]
		],
		[
			["rhs_acc_pgs64_74u", 2]
		]
	],
	[
		// Marksman
		[
			["rhs_weap_svd", 5]
		],
		[
			["rhs_10Rnd_762x54mmR_7N1", 20],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rdg2_black", 5],
			["rhs_mag_rgd5", 5]
		],
		[
			["rhs_acc_pso1m2", 2]
		]
	],
	[
		// Automatic rifleman
		[
			["rhs_weap_pkm", 5]
		],
		[
			["rhs_100Rnd_762x54mmR", 20],
			["rhs_mag_rdg2_white", 5],
			["rhs_mag_rdg2_black", 5],
			["rhs_mag_rgd5", 5]
		],
		[
		]
	]
];

private _randomCacheContent = selectRandom _possibleCacheContents;

_randomCacheContent