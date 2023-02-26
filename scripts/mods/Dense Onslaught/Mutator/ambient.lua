local mod = get_mod("Dense Onslaught")

-- Settings for Ambient Spawns
	Breeds.skaven_storm_vermin.bloodlust_health = BreedTweaks.bloodlust_health.beastmen_elite
	Breeds.skaven_storm_vermin.primary_armor_category = 6
	Breeds.skaven_storm_vermin.size_variation_range = { 1.23, 1.25 }
	Breeds.skaven_storm_vermin.max_health = BreedTweaks.max_health.bestigor
	Breeds.skaven_storm_vermin.hit_mass_counts = BreedTweaks.hit_mass_counts.bestigor
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 31
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 31
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 1
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 1
	BeastmenStandardTemplates.healing_standard.radius = 10
	UtilityConsiderations.beastmen_place_standard.distance_to_target.max_value = 15
	-- This code makes beastmen banners increase enemy's damage.
	
	--BuffTemplates.healing_standard.buffs = {
	--	{
	--		multiplier = 0.25,
	--		stat_buff = "damage_dealt",
	--		name = "curse_khorne_champions_damage_buff",
	--		max_stacks = 1
	--	}
	--}
	
	--[[
	My rationale for these settings are as follows:
	I want increased ambients compared to base onslaught to slow down progression through map.
	However, I want more skaven ambients due to their lower HP.
	Increasing max_grunts means players can be caught out of position more if they can't get to
	their hold spot in time.
	--]]
	
	RecycleSettings.max_grunts = 165                                       -- More than Ons+, Less than Dutch
	RecycleSettings.push_horde_if_num_alive_grunts_above = 250             -- More than Ons+, Less than Dutch
	PackSpawningSettings.default.area_density_coefficient = 0.12           -- Same as Ons+
	PackSpawningSettings.default_light.area_density_coefficient = 0.12     -- Same as Ons+
	PackSpawningSettings.skaven.area_density_coefficient = 0.15	           -- Same as Dutch
	PackSpawningSettings.skaven_light.area_density_coefficient = 0.15      -- Same as Dutch
	PackSpawningSettings.chaos.area_density_coefficient = 0.13			   -- More than Ons+, Less than Dutch
	PackSpawningSettings.chaos_light.area_density_coefficient = 0.13	   -- More than Ons+, Less than Dutch
	PackSpawningSettings.beastmen.area_density_coefficient = 0.13          -- More than Ons+, Less than Dutch
	PackSpawningSettings.beastmen_light.area_density_coefficient = 0.13    -- More than Ons+, Less than Dutch
	PackSpawningSettings.skaven_beastmen.area_density_coefficient = 0.14   -- More than Ons+, Less than Dutch
	PackSpawningSettings.chaos_beastmen.area_density_coefficient = 0.13    -- More than Ons+, Less than Dutch

	PackSpawningSettings.default.difficulty_overrides = nil
	PackSpawningSettings.skaven.difficulty_overrides = nil
	PackSpawningSettings.skaven_light.difficulty_overrides = nil
	PackSpawningSettings.chaos.difficulty_overrides = nil
	PackSpawningSettings.beastmen.difficulty_overrides = nil
	PackSpawningSettings.skaven_beastmen.difficulty_overrides = nil
	PackSpawningSettings.chaos_beastmen.difficulty_overrides = nil
