local mod = get_mod("Dense Onslaught")

	local faction = "beastmen"

	local trash_scale = 1
	local shield_trash_scale = 1
	local elite_scale = 1
	local shield_elite_scale = 1
	local berzerker_scale = 1
	local super_armor_scale = 1

	if mod.difficulty_level == 0 then
		mod.gain = mod:get("master_horde_scale")
		trash_scale = mod:get("trash_scale")
		shield_trash_scale = mod:get("shield_trash_scale")
		elite_scale = mod:get("armor_scale")
		shield_elite_scale = mod:get("shield_armor_scale")
		super_armor_scale = mod:get("super_armor_scale")
	end

	local trash_entities = {"beastmen_ungor","beastmen_gor"}
	local shield_trash_entities = {"chaos_marauder_with_shield","skaven_clan_rat_with_shield"}
	local elite_entities = {"beastmen_bestigor","chaos_raider","skaven_storm_vermin_commander","skaven_storm_vermin"}
	local shield_elite_entities = {"skaven_storm_vermin_with_shield"}
	local berzerker_entities = {"chaos_berzerker", "skaven_plague_monk"}
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
				"beastmen_gor",
				{
					12,
					16
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
				}
			}
		},
		{
			name = "plain_chaos",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					12,
					16
				},
				"beastmen_ungor",
				{
					5,
					6
				},
				"chaos_marauder",
				{
					4,
					6
				},
				"chaos_raider",
				{
					1,
					2
				},
				"beastmen_bestigor",
				{
					2,
					3
				}
			}
		},
		{
			name = "chaos_shield",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					12,
					16
				},
				"beastmen_ungor",
				{
					4,
					6
				},
				"chaos_marauder_with_shield",
				{
					4,
					5
				},
				"beastmen_bestigor",
				{
					2,
					3
				},
				"chaos_berzerker",
				{
					3,
					6
				}

			}
		},
		{
			name = "chaos_raiders",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					12,
					16
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					1,
					3
				},
				"chaos_raider",
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
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
	HordeCompositionsPacing.beastmen_huge_armor = {
		{
			name = "plain_skaven",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					12,
					16
				},
				"beastmen_ungor",
				{
					5,
					6
				},
				"skaven_clan_rat",
				{
					5,
					9
				},
				"beastmen_bestigor",
				{
					3,
					4
				}
			}
		},
		{
			name = "skaven_shield",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					12,
					16
				},
				"beastmen_ungor",
				{
					5,
					6
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					9 
				},
				"beastmen_bestigor",
				{
					3,
					4
				},
				"skaven_plague_monk",
				{
					3,
					6
				},
			}
		},
		{
			name = "skaven_armor",
			weight = 5,
			breeds = {
				"beastmen_gor",
				{
					12,
					16
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					1,
					2
				},
				"skaven_storm_vermin_commander",
				{
					1,
					2
				},
				"skaven_storm_vermin",
				{
					1,
					2
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					2
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}

scale_horde_composition(HordeCompositionsPacing, faction, scaling_data)
