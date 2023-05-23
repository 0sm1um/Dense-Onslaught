local mod = get_mod("Dense Onslaught")

	--[[
	Note that Skaven aren't refrenced in the horde compositions by name. Therefore, for faction we put "huge" and this script
	changes ALL horde compositions. Don't worry though, because this one is run first, therefore the chaos and beastmen
	compositions get overwritten later.
	--]]

	local faction = "huge"

	local trash_scale = 1
	local shield_trash_scale = 1
	local elite_scale = 1
	local shield_elite_scale = 1
	local berzerker_scale = 1
	local super_armor_scale = 1

	local trash_entities = {"skaven_slave","skaven_clan_rat"}
	local shield_trash_entities = {"skaven_clan_rat_with_shield"}
	local elite_entities = {"skaven_storm_vermin_commander"}
	local shield_elite_entities = {"skaven_storm_vermin_with_shield"}
	local berzerker_entities = {"skaven_plague_monk"}
	local super_armor_entities = {"skaven_storm_vermin"}
	
	local scaling_data = {
    {
        scale_factor = trash_scale * mod.gain,
        breeds = trash_entities,
    },
    {
        scale_factor = shield_trash_scale * mod.gain,
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

	HordeCompositionsPacing.huge = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					20,
					21
				},
				"skaven_plague_monk",
				{
					7,
					6
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					12,
					16
				},
				"skaven_clan_rat",
				{
					12,
					17
				},
				"skaven_clan_rat_with_shield",
				{
					9,
					10
				},
				"skaven_storm_vermin_commander",
				{
					2,
					4
				},
				"skaven_storm_vermin_with_shield",
				{
					2,
					2
				}
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					21,
					23
				},
				"skaven_storm_vermin_commander",
				{
					5,
					6
				},
				"skaven_storm_vermin",
				{
					1,
					2
				}
			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					15,
					18
				},
				"skaven_clan_rat_with_shield",
				{
					8,
					10
				},
				"skaven_storm_vermin_with_shield",
				{
					2,
					4
				},
				"skaven_storm_vermin_commander",
				{
					4,
					5
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge_shields = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					21,
					23
				},
				"skaven_clan_rat_with_shield",
				{
					7,
					9
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_plague_monk",
				{
					2,
					3
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					17,
					19
				},
				"skaven_clan_rat_with_shield",
				{
					12,
					14
				},
				"skaven_plague_monk",
				{
					3,
					4
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					14,
					16
				},
				"skaven_clan_rat",
				{
					16,
					19
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_clan_rat_with_shield",
				{
					6,
					8
				},
				"skaven_plague_monk",
				{
					4,
					5
				}
			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					10,
					16
				},
				"skaven_clan_rat",
				{
					16,
					19
				},
				"skaven_clan_rat_with_shield",
				{
					9,
					10
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_storm_vermin_with_shield",
				{
					3,
					4
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge_armor = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					14,
					16
				},
				"skaven_clan_rat",
				{
					12,
					21
				},
				"skaven_storm_vermin_commander",
				{
					5,
					6
				},
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					14,
					18
				},
				"skaven_clan_rat",
				{
					18,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					7,
					9
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_storm_vermin",
				{
					1,
					2
				},
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					10,
					16
				},
				"skaven_clan_rat",
				{
					14,
					18
				},
				"skaven_storm_vermin_commander",
				{
					5,
					6
				}
			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					14,
					18
				},
				"skaven_clan_rat",
				{
					10,
					14
				},
				"skaven_clan_rat_with_shield",
				{
					3,
					5
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_storm_vermin_with_shield",
				{
					3,
					4
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge_berzerker = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					14,
					18
				},
				"skaven_clan_rat",
				{
					19,
					21
				},
				"skaven_plague_monk",
				{
					5,
					6
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					14,
					18
				},
				"skaven_clan_rat",
				{
					14,
					18
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					7
				},
				"skaven_plague_monk",
				{
					5,
					6
				}
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					14,
					18
				},
				"skaven_clan_rat",
				{
					14,
					18
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_plague_monk",
				{
					4,
					5
				}
			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					14,
					18
				},
				"skaven_clan_rat",
				{
					12,
					15
				},
				"skaven_clan_rat_with_shield",
				{
					3,
					5
				},
				"skaven_storm_vermin_with_shield",
				{
					3,
					4
				},
				"skaven_plague_monk",
				{
					4,
					5
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}

scale_horde_composition(HordeCompositionsPacing, faction, scaling_data) -- Skaven don't have a faction name, so we pass in "huge" and update the subsequent factions after.
