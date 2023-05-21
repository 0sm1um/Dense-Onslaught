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
	
	--[[
	PackSpawningSettings.default.area_density_coefficient = 0.2
	PackSpawningSettings.default_light.area_density_coefficient = 0.2
	PackSpawningSettings.skaven.area_density_coefficient = 0.2
	PackSpawningSettings.skaven_light.area_density_coefficient = 0.2
	PackSpawningSettings.chaos.area_density_coefficient = 0.2
	PackSpawningSettings.chaos_light.area_density_coefficient = 0.2
	PackSpawningSettings.beastmen.area_density_coefficient = 0.2
	PackSpawningSettings.beastmen_light.area_density_coefficient = 0.2
	PackSpawningSettings.skaven_beastmen.area_density_coefficient = 0.2
	PackSpawningSettings.chaos_beastmen.area_density_coefficient = 0.2
--]]
	
--	PackSpawningSettings.default.difficulty_overrides = nil
--	PackSpawningSettings.skaven.difficulty_overrides = nil
--	PackSpawningSettings.skaven_light.difficulty_overrides = nil
--	PackSpawningSettings.chaos.difficulty_overrides = nil
--	PackSpawningSettings.beastmen.difficulty_overrides = nil
--	PackSpawningSettings.skaven_beastmen.difficulty_overrides = nil
--	PackSpawningSettings.chaos_beastmen.difficulty_overrides = nil

--mod:dofile("scripts/managers/conflict_director/conflict_settings")

	PackSpawningSettings.default.roaming_set = {
		breed_packs = "dense_standard",
		breed_packs_peeks_overide_chance = {
			0.5,
			0.5
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
			0.5,
			0.5
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
			0.5,
			0.5
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
			0.5,
			0.5
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
		breed_packs = "skaven_beastmen",
		breed_packs_peeks_overide_chance = {
			1,
			1
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
		breed_packs = "chaos_beastmen",
		breed_packs_peeks_overide_chance = {
			1,
			1
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
	--[[
	local difficulties = Difficulties
	local start_time = os.clock()
	for conflict_director_name, data in pairs(ConflictDirectors) do
		data.name = conflict_director_name
		data.contained_breeds = {}
	
		for i = 1, #difficulties do
			local difficulty = difficulties[i]
			local difficulty_breeds = {}
	
			mod.ConflictUtils_find_conflict_director_breeds(data, difficulty, difficulty_breeds)
	
			data.contained_breeds[difficulty] = difficulty_breeds
		end
	end
	--]]