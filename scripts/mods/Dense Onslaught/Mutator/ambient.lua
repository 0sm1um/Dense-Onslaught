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
	BuffTemplates.healing_standard.buffs = {
		{
			multiplier = 0.25,
			stat_buff = "damage_dealt",
			name = "curse_khorne_champions_damage_buff",
			max_stacks = 1
		}
	}
	BeastmenStandardTemplates.healing_standard.radius = 10
	UtilityConsiderations.beastmen_place_standard.distance_to_target.max_value = 15
	RecycleSettings.max_grunts = 165
	RecycleSettings.push_horde_if_num_alive_grunts_above = 300
	PackSpawningSettings.default.area_density_coefficient = 0.15
	PackSpawningSettings.default_light.area_density_coefficient = 0.15
	PackSpawningSettings.skaven.area_density_coefficient = 0.15
	PackSpawningSettings.skaven_light.area_density_coefficient = 0.15
	PackSpawningSettings.chaos.area_density_coefficient = 0.15
	PackSpawningSettings.chaos_light.area_density_coefficient = 0.15
	PackSpawningSettings.beastmen.area_density_coefficient = 0.15
	PackSpawningSettings.beastmen_light.area_density_coefficient = 0.15
	PackSpawningSettings.skaven_beastmen.area_density_coefficient = 0.15
	PackSpawningSettings.chaos_beastmen.area_density_coefficient = 0.15

	PackSpawningSettings.default.difficulty_overrides = nil
	PackSpawningSettings.skaven.difficulty_overrides = nil
	PackSpawningSettings.skaven_light.difficulty_overrides = nil
	PackSpawningSettings.chaos.difficulty_overrides = nil
	PackSpawningSettings.beastmen.difficulty_overrides = nil
	PackSpawningSettings.skaven_beastmen.difficulty_overrides = nil
	PackSpawningSettings.chaos_beastmen.difficulty_overrides = nil
