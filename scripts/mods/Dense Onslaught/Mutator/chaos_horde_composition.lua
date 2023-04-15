local mod = get_mod("Dense Onslaught")
	
	local faction = "chaos"
	
	local trash_scale = 1
	local shield_trash_scale = 1
	local elite_scale = 1
	local shield_elite_scale = 1
	local berzerker_scale = 1
	local super_armor_scale = 1

	local trash_entities = {"chaos_fanatic","chaos_marauder"}
	local shield_trash_entities = {"chaos_marauder_with_shield"}
	local elite_entities = {"chaos_raider"}
	local shield_elite_entities = {}
	local berzerker_entities = {"chaos_berzerker"}
	local super_armor_entities = {"chaos_warrior"}
	
	local scaling_data = {
    {
        scale_factor = trash_scale,
        breeds = trash_entities,
    },
    {
        scale_factor = shield_trash_scale,
        breeds = shield_trash_entities,
    },
    {
        scale_factor = elite_scale,
        breeds = elite_entities,
    },
    {
        scale_factor = shield_elite_scale,
        breeds = shield_elite_entities,
    },
    {
        scale_factor = berzerker_scale,
        breeds = berzerker_entities,
    },
    {
        scale_factor = super_armor_scale,
        breeds = super_armor_entities,
    },
}

	HordeCompositionsPacing.chaos_medium = {	-- Never spawned in this mod.
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					3,
					4
				},
				"chaos_fanatic",
				{
					15,
					20
				}
			}
		},
		{
			name = "zerkers",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_berzerker",
				{
					1,
					1
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_marauder_with_shield",
				{
					1,
					3
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_raider",
				{
					1,
					1
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_large = {	-- Never spawned in this mod.
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					5,
					6
				},
				"chaos_fanatic",
				{
					20,
					25
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_raider",
				{
					2,
					2
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_raider",
				{
					1,
					1
				},
				"chaos_berzerker",
				{
					1,
					2
				},
				"chaos_marauder_with_shield",
				{
					1,
					2
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge = {	-- Normal Pacing Horde
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder",
				{
					16,
					18
				},
				"chaos_raider",
				{
					4,
					5
				},
				"chaos_warrior",
				{
						1,
						1,
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder_with_shield",
				{
					2,
					3
				},
				"chaos_marauder",
				{
					9,
					11
				},
				"chaos_berzerker",
				{
					4,
					5
				}
			}
		},
		{
			name = "shielders",
			weight = 3,
			breeds = {
				"chaos_fanatic",
				{
					7,
					8
				},
				"chaos_marauder",
				{
					5,
					7
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_raider",
				{
					3,
					5
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					8,
					9
				},
				"chaos_marauder",
				{
					12,
					14
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_warrior",
				{
						1,
						1,
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					7,
					8
				},
				"chaos_marauder",
				{
					8,
					9
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					2,
					3
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_shields = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					14,
					15
				},
				"chaos_marauder",
				{
					10,
					11
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_berzerker",
				{
					2,
					3
				},
				"chaos_warrior",
				{
					1,
					1
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					14,
					15
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_berzerker",
				{
					2,
					3
				},
				"chaos_raider",
				{
					3,
					4
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					14,
					15
				},
				"chaos_marauder_with_shield",
				{
					14,
					15
				},
				"chaos_raider",
				{
					6,
					7
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					8,
					9
				},
				"chaos_marauder",
				{
					10,
					11
				},
				"chaos_raider",
				{
					5,
					6
				},
				"chaos_marauder_with_shield",
				{
					6,
					7
				},
				"chaos_warrior",
				{
					1,
					1
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder",
				{
					11,
					12
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_berzerker",
				{
					2,
					3
				},
				"chaos_marauder_with_shield",
				{
					6,
					7
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_armor = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					14,
					15
				},
				"chaos_marauder",
				{
					14,
					15
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		},
		{
			name = "zerker",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					14,
					15
				},
				"chaos_marauder",
				{
					8,
					9
				},
				"chaos_berzerker",
				{
					4,
					5
				},
				"chaos_warrior",
				{
					1,
					1
				}
			}
		},
		{
			name = "shielders",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					14,
					15
				},
				"chaos_marauder",
				{
					7,
					8
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_raider",
				{
					4,
					5
				},
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					14,
					15
				},
				"chaos_marauder",
				{
					9,
					11
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					1,
					2
				},
				"chaos_warrior",
				{
					1,
					1
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					7,
					9
				},
				"chaos_marauder",
				{
					12,
					14
				},
				"chaos_raider",
				{
					4,
					5
				},
				"chaos_berzerker",
				{
					4,
					5
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_berzerker = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					10,
					11
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				},
				"chaos_marauder",
				{
					12,
					15
				},
				"chaos_berzerker",
				{
					7,
					8
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					7,
					8
				},
				"chaos_marauder",
				{
					12,
					14
				},
				"chaos_berzerker",
				{
					5,
					6
				},
				"chaos_warrior",
				{
					1,
					1
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					11,
					12
				},
				"chaos_marauder",
				{
					11,
					12
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_berzerker",
				{
					5,
					6
				},
				"chaos_warrior",
				{
					1,
					1
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					9,
					11
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				},
				"chaos_marauder",
				{
					9,
					11
				},
				"chaos_berzerker",
				{
					7,
					8
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					9,
					11
				},
				"chaos_marauder",
				{
					9,
					11
				},
				"chaos_raider",
				{
					4,
					5
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				},
				"chaos_warrior",
				{
					1,
					1
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	
scale_horde_composition(HordeCompositionsPacing, faction, scaling_data)
