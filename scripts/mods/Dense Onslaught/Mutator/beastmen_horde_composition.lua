local mod = get_mod("Dense Onslaught")

	local faction = "beastmen"

	local trash_scale = 1
	local shield_trash_scale = 1
	local elite_scale = 1            -- This term is meant to convey it counts for Stormvermin and Mauler type enemies.
	local shield_elite_scale = 1
	local berzerker_scale = 1
	local super_armor_scale = 1

	local trash_entities = {"beastmen_ungor","beastmen_gor"}
	local shield_trash_entities = {"chaos_marauder_with_shield","skaven_clan_rat_with_shield"}
	local elite_entities = {"beastmen_bestigor","chaos_raider","skaven_storm_vermin_commander"}
	local shield_elite_entities = {"skaven_storm_vermin_with_shield"}
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
        scale_factor = elite_scale * mod.gain,
        breeds = elite_entities,
    },
    {
        scale_factor = shield_elite_scale * mod.gain,
        breeds = shield_elite_entities,
    },
    {
        scale_factor = berzerker_scale * mod.gain,
        breeds = berzerker_entities,
    },
    {
        scale_factor = super_armor_scale * mod.gain,
        breeds = super_armor_entities,
    },
}

	HordeCompositionsPacing.beastmen_huge = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"beastmen_ungor",
				{
					10,
					16
				},
				"beastmen_gor",
				{
					10,
					14
				},
				"beastmen_bestigor",
				{
					3,
					4
				},
				"chaos_warrior",
				{
					1,
					2
				}
			}
		},
		{
			name = "leader",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					30,
					32
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					4,
					5
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					2
				},
				"skaven_storm_vermin_commander",
				{
					1,
					2
				}
			}
		},
		{
			name = "leader_gor",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					38,
					40
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					1,
					2
				},
				"skaven_plague_monk",
				{
					1,
					2
				}
			}
		},
		{
			name = "leader_ungor",
			weight = 5,
			breeds = {
				"beastmen_ungor",
				{
					14,
					18
				},
				"chaos_marauder_with_shield",
				{
					4,
					6
				},
				"skaven_plague_monk",
				{
					1,
					2
				},
				"beastmen_bestigor",
				{
					3,
					4
				}
			}

		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
	HordeCompositionsPacing.beastmen_huge_armor = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					30,
					32
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					3,
					4
				},
				"chaos_raider",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					38,
					40
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader_gor",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					38,
					40
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					7,
					8
				}
			}
		},
		{
			name = "leader",
			weight = 5,
			breeds = {
				"beastmen_ungor",
				{
					35,
					37
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					3,
					4
				},
				"skaven_plague_monk",
				{
					3,
					4
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}

scale_horde_composition(HordeCompositionsPacing, faction, scaling_data)
