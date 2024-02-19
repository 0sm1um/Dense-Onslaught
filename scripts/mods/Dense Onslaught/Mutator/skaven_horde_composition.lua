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

	if mod.difficulty_level == 0 then
		mod.gain = mod:get("master_horde_scale")
		trash_scale = mod:get("trash_scale")
		shield_trash_scale = mod:get("shield_trash_scale")
		elite_scale = mod:get("armor_scale")
		shield_elite_scale = mod:get("shield_armor_scale")
		super_armor_scale = mod:get("super_armor_scale")
	end

	local trash_entities = {"skaven_slave","skaven_clan_rat"}
	local shield_trash_entities = {"skaven_clan_rat_with_shield"}
	local elite_entities = {"skaven_storm_vermin_commander"}
	local shield_elite_entities = {"skaven_storm_vermin_with_shield"}
	local berzerker_entities = {"skaven_plague_monk"}
	local super_armor_entities = {"skaven_storm_vermin"}

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

--[[
	Key to understanding:
		Plain: Always Unshielded trash
		Zerker: Always Shielded Trash
		Shielders: Always Shielded Trash
		Leader: Always unshielded trash and white SV
		Frenzy: Always mix of SV and berzerkers
]]

	HordeCompositionsPacing.huge = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					24,
					36
				},
				"skaven_clan_rat",
				{
					16,
					24
				},
				"skaven_clan_rat_with_shield",
				{
					2,
					8
				},
				"skaven_storm_vermin_commander",
				{
					1,
					4
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					2
				},
				"skaven_plague_monk",
				{
					1,
					3
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge_shields = {
		{
			name = "shielders",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					24,
					32
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					2
				},
				"skaven_clan_rat",
				{
					10,
					18
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					9
				},
				"skaven_storm_vermin_commander",
				{
					1,
					2
				},
				"skaven_plague_monk",
				{
					2,
					6
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
					24,
					32
				},
				"skaven_clan_rat",
				{
					8,
					12
				},
				"skaven_clan_rat_with_shield",
				{
					3,
					8
				},
				"skaven_storm_vermin_commander",
				{
					3,
					8
				},
			}
		},
		{
			name = "shielders",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					24,
					32
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					12
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					3
				},
				"skaven_clan_rat",
				{
					10,
					18
				},
				"skaven_storm_vermin_commander",
				{
					2,
					6
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
					24,
					32
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					9
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					9
				},
				"skaven_plague_monk",
				{
					5,
					9
				},
				"skaven_clan_rat",
				{
					10,
					18
				},
			}
		},
		{
			name = "shielders",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					24,
					32
				},
				"skaven_clan_rat",
				{
					10,
					18
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					2
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					9 
				},
				"skaven_plague_monk",
				{
					2,
					6
				},
				"skaven_storm_vermin_commander",
				{
					1,
					3
				},
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}

scale_horde_composition(HordeCompositionsPacing, faction, scaling_data) -- Skaven don't have a faction name, so we pass in "huge" and update the subsequent factions after.
