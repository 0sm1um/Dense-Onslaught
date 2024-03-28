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

local mean = 0.4
local range = 0.15

PackDistributions = {
	periodical = {
		max_low_density = mean,
		min_low_density = mean - range,
		min_hi_density = mean,
		max_hi_density = mean + range,
		random_distribution = false,
		zero_density_below = 0,
		max_hi_dist = 3,
		min_hi_dist = 2,
		max_low_dist = 10,
		min_low_dist = 7,
		zero_clamp_max_dist = 5
	},
	random = {}
}

PackSpawningDistribution = {
	standard = {
		goal_density = mean,
		clamp_main_path_zone_area = 100,
		length_density_coefficient = 0,
		spawn_cycle_length = 350,
		clamp_outer_zones_used = 1,
		distribution_method = "periodical",
		calculate_nearby_islands = false
	}
}
	
	local gain = 0
	mod.difficulty_level = mod:get("difficulty_level")
	if mod.difficulty_level == 1 then
		PackSpawningSettings.default.area_density_coefficient = 0.07
		PackSpawningSettings.skaven.area_density_coefficient = 0.07
		PackSpawningSettings.chaos.area_density_coefficient = 0.07
		PackSpawningSettings.beastmen.area_density_coefficient = 0.07
	elseif mod.difficulty_level == 2 then
		PackSpawningSettings.default.area_density_coefficient = 0.0725
		PackSpawningSettings.skaven.area_density_coefficient = 0.0725
		PackSpawningSettings.chaos.area_density_coefficient = 0.0725
		PackSpawningSettings.beastmen.area_density_coefficient = 0.0725
	elseif mod.difficulty_level == 3 then
		PackSpawningSettings.default.area_density_coefficient = 0.075
		PackSpawningSettings.skaven.area_density_coefficient = 0.075
		PackSpawningSettings.chaos.area_density_coefficient = 0.075
		PackSpawningSettings.beastmen.area_density_coefficient = 0.075
	elseif mod.difficulty_level == 0 then
		PackSpawningSettings.default.area_density_coefficient = mod:get("ambient_spawn_rate")
		PackSpawningSettings.skaven.area_density_coefficient = mod:get("ambient_spawn_rate")
		PackSpawningSettings.chaos.area_density_coefficient = mod:get("ambient_spawn_rate")
		PackSpawningSettings.beastmen.area_density_coefficient = mod:get("ambient_spawn_rate")
	end

	RecycleSettings.max_grunts = 180                                      
	RecycleSettings.push_horde_if_num_alive_grunts_above = 180            

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
		breed_packs = "dense_beastmen",
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


	PackSpawningSettings.default_light = PackSpawningSettings.default
	PackSpawningSettings.skaven_light = PackSpawningSettings.skaven
	PackSpawningSettings.chaos_light = PackSpawningSettings.chaos
	PackSpawningSettings.beastmen_light = PackSpawningSettings.beastmen
