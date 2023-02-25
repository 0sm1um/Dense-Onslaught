local mod = get_mod("Dense Onslaught")

-- Settings for Ambient Spawns and compositions.
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
	PackSpawningSettings.default.roaming_set.breed_packs_override = {
		{
			"shield_rats",
			8,
			0.08
		},
		{
			"plague_monks",
			15,
			0.08
		},
		{
			"marauders",
			8,
			0.08
		},
		{
			"marauders_elites",
			10,
			0.20
		}
	}
	PackSpawningSettings.default_light.roaming_set.breed_packs_override = {
		{
			"shield_rats",
			8,
			0.09
		},
		{
			"plague_monks",
			15,
			0.15
		},
		{
			"marauders",
			8,
			0.09
		},
		{
			"marauders_elites",
			8,
			0.15
		}
	}
	PackSpawningSettings.skaven.roaming_set.breed_packs_override = {
		{
			"shield_rats",
			4,
			0.20
		},
		{
			"plague_monks",
			15,
			0.25
		}
	}
	PackSpawningSettings.skaven_light.roaming_set.breed_packs_override = {
		{
			"shield_rats",
			4,
			0.20
		},
		{
			"plague_monks",
			15,
			0.08
		}
	}
	PackSpawningSettings.chaos.roaming_set.breed_packs_override = {
		{
			"marauders_and_warriors",
			15,
			0.20
		},
		{
			"marauders_shields",
			8,
			0.12
		},
		{
			"marauders_elites",
			8,
			0.20
		},
		{
			"marauders_berzerkers",
			10,
			0.20
		}
	}
	PackSpawningSettings.chaos_light.roaming_set.breed_packs_override = {
		{
			"marauders_and_warriors",
			9,
			0.20
		},
		{
			"marauders_shields",
			8,
			0.06
		},
		{
			"marauders_elites",
			12,
			0.20
		},
		{
			"marauders_berzerkers",
			10,
			0.20
		}
	}
	PackSpawningSettings.beastmen.roaming_set.breed_packs_override = {
		{
			"beastmen_elites",
			20,
			0.25
		},
		{
			"beastmen",
			3,
			0.08
		},
		{
			"beastmen_light",
			3,
			0.08
		}
	}
	PackSpawningSettings.beastmen_light.roaming_set.breed_packs_override = {
		{
			"beastmen_light",
			6,
			0.08
		}
	}
	PackSpawningSettings.skaven_beastmen.roaming_set.breed_packs_override = {
		{
			"shield_rats",
			4,
			0.20
		},
		{
			"plague_monks",
			13,
			0.15
		},
		{
			"beastmen",
			5,
			0.08
		},
		{
			"beastmen_elites",
			15,
			0.25
		}
	}
	PackSpawningSettings.chaos_beastmen.roaming_set.breed_packs_override = {
		{
			"marauders",
			6,
			0.08
		},
		{
			"marauders_elites",
			13,
			0.20
		},
		{
			"beastmen",
			5,
			0.08
		},
		{
			"beastmen_elites",
			13,
			0.2
		}
	}
	PackSpawningSettings.default.difficulty_overrides = nil
	PackSpawningSettings.skaven.difficulty_overrides = nil
	PackSpawningSettings.skaven_light.difficulty_overrides = nil
	PackSpawningSettings.chaos.difficulty_overrides = nil
	PackSpawningSettings.beastmen.difficulty_overrides = nil
	PackSpawningSettings.skaven_beastmen.difficulty_overrides = nil
	PackSpawningSettings.chaos_beastmen.difficulty_overrides = nil
