local mod = get_mod("Dense Onslaught")

-- Settings for Ambient Spawns
	
	--[[
	My rationale for these settings are as follows:
	I want increased ambients compared to base onslaught to slow down progression through map.
	However, I want more skaven ambients due to their lower HP.
	Increasing max_grunts means players can be caught out of position more if they can't get to
	their hold spot in time.
	--]]
	

	-- These parameters seem to correlated with increasing or decreasing ambient spawns.
	-- Note they are VERY sensitive

	PackSpawningSettings.default.area_density_coefficient = 0.045
	PackSpawningSettings.skaven.area_density_coefficient = 0.045
	PackSpawningSettings.chaos.area_density_coefficient = 0.045
	PackSpawningSettings.beastmen.area_density_coefficient = 0.045

	PackSpawningSettings.default_light.area_density_coefficient = PackSpawningSettings.default.area_density_coefficient
	PackSpawningSettings.skaven_light.area_density_coefficient = PackSpawningSettings.skaven.area_density_coefficient
	PackSpawningSettings.chaos_light.area_density_coefficient = PackSpawningSettings.chaos.area_density_coefficient
	PackSpawningSettings.beastmen_light.area_density_coefficient = PackSpawningSettings.beastmen.area_density_coefficient
	PackSpawningSettings.skaven_beastmen.area_density_coefficient = PackSpawningSettings.beastmen.area_density_coefficient
	PackSpawningSettings.chaos_beastmen.area_density_coefficient = PackSpawningSettings.beastmen.area_density_coefficient

	RecycleSettings.max_grunts = 200                                      -- Specific to Dense, raises upper cap to ambient spawning.
	RecycleSettings.push_horde_if_num_alive_grunts_above = 200            -- Same as Ons+

	PackSpawningSettings.default.roaming_set = {
		breed_packs = "dense_standard",
		breed_packs_peeks_overide_chance = {
			0,
			0
		},
		breed_packs_override = {
			{
				"skaven",
				2,
				0.035
			},
			{
				"plague_monks",
				2,
				0.035
			},
			{
				"marauders",
				2,
				0.03
			},
			{
				"marauders_elites",
				2,
				0.03
			}
		}
	}

	PackSpawningSettings.skaven.roaming_set = {
		breed_packs = "dense_skaven",
		breed_packs_peeks_overide_chance = {
			0,
			0
		},
		breed_packs_override = {
			{
				"skaven",
				2,
				0.035
			},
			{
				"shield_rats",
				2,
				0.035
			},
			{
				"plague_monks",
				2,
				0.035
			}
		}
	}

	PackSpawningSettings.chaos.roaming_set = {
		breed_packs = "dense_chaos",
		breed_packs_peeks_overide_chance = {
			0,
			0
		},
		breed_packs_override = {
			{
				"marauders_and_warriors",
				2,
				0.03
			},
			{
				"marauders_shields",
				2,
				0.03
			},
			{
				"marauders_elites",
				2,
				0.03
			},
			{
				"marauders_berzerkers",
				2,
				0.03
			}
		}
	}
	
	PackSpawningSettings.beastmen.roaming_set = {
		breed_packs = "beastmen",
		breed_packs_peeks_overide_chance = {
			0,
			0
		},
		breed_packs_override = {
			{
				"beastmen_elites",
				2,
				0.035
			},
			{
				"beastmen",
				2,
				0.035
			}
		}
	}



--[[
	PackSpawningSettings.skaven_beastmen.roaming_set = {
		breed_packs = "dense_skaven_beastmen",
		breed_packs_peeks_overide_chance = {
			0,
			0
		},
		breed_packs_override = {
			{
				"shield_rats",
				2,
				0.035
			},
			{
				"plague_monks",
				2,
				0.035
			},
			{
				"beastmen_elites",
				2,
				0.035
			}
		}
	}
		
		
	PackSpawningSettings.chaos_beastmen.roaming_set = {
		breed_packs = "dense_chaos_beastmen",
		breed_packs_peeks_overide_chance = {
			0,
			0
		},
		breed_packs_override = {
			{
				"marauders_elites",
				2,
				0.03
			},
			{
				"beastmen_elites",
				2,
				0.03
			}
		}
	}
--]]	


	PackSpawningSettings.default_light = PackSpawningSettings.default
	PackSpawningSettings.skaven_light = PackSpawningSettings.skaven
	PackSpawningSettings.chaos_light = PackSpawningSettings.chaos
	PackSpawningSettings.beastmen_light = PackSpawningSettings.beastmen
	PackSpawningSettings.beastmen_light = PackSpawningSettings.beastmen
	PackSpawningSettings.beastmen_light = PackSpawningSettings.beastmen
