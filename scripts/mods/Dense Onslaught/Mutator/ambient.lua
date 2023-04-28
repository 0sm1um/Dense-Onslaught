local mod = get_mod("Dense Onslaught")

-- Settings for Ambient Spawns
	
	--[[
	My rationale for these settings are as follows:
	I want increased ambients compared to base onslaught to slow down progression through map.
	However, I want more skaven ambients due to their lower HP.
	Increasing max_grunts means players can be caught out of position more if they can't get to
	their hold spot in time.
	--]]
	
	PackSpawningSettings.default.area_density_coefficient = 0.13
	PackSpawningSettings.default_light.area_density_coefficient = 0.13
	PackSpawningSettings.skaven.area_density_coefficient = 0.13
	PackSpawningSettings.skaven_light.area_density_coefficient = 0.13
	PackSpawningSettings.chaos.area_density_coefficient = 0.13
	PackSpawningSettings.chaos_light.area_density_coefficient = 0.13
	PackSpawningSettings.beastmen.area_density_coefficient = 0.13
	PackSpawningSettings.beastmen_light.area_density_coefficient = 0.13
	PackSpawningSettings.skaven_beastmen.area_density_coefficient = 0.13
	PackSpawningSettings.chaos_beastmen.area_density_coefficient = 0.13

	PackSpawningSettings.default.difficulty_overrides = nil
	PackSpawningSettings.skaven.difficulty_overrides = nil
	PackSpawningSettings.skaven_light.difficulty_overrides = nil
	PackSpawningSettings.chaos.difficulty_overrides = nil
	PackSpawningSettings.beastmen.difficulty_overrides = nil
	PackSpawningSettings.skaven_beastmen.difficulty_overrides = nil
	PackSpawningSettings.chaos_beastmen.difficulty_overrides = nil
