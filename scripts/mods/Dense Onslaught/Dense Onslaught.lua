local mod = get_mod("Dense Onslaught")

local mutator = mod:persistent_table("DenseOnslaught")

mod:dofile("scripts/mods/Dense Onslaught/base/base")

mutator.start = function()

	mutator.OriginalTerrorEventBlueprints = table.clone(TerrorEventBlueprints)
	mutator.OriginalHordeCompositions = table.clone(HordeCompositions)
	mutator.OriginalHordeCompositionsPacing = table.clone(HordeCompositionsPacing)
	mutator.OriginalBreedPacks = table.clone(BreedPacks)
	mutator.OriginalPackSpawningSettings = table.clone(PackSpawningSettings)
	mutator.OriginalRecycleSettings  = table.clone(RecycleSettings)
	mutator.OriginalPacingSettingsDefault = table.clone(PacingSettings.default)
	mutator.OriginalPacingSettingsChaos = table.clone(PacingSettings.chaos)
	mutator.OriginalPacingSettingsBeastmen = table.clone(PacingSettings.beastmen)
	mutator.OriginalSpecialsSettings = table.clone(SpecialsSettings)
	mutator.OriginalBossSettings = table.clone(BossSettings)
	mutator.OriginalBreedActions = table.clone(BreedActions)
	mutator.OriginalThreatValue = {}
	for name, breed in pairs(Breeds) do
		if breed.threat_value then
			mutator.OriginalThreatValue[name] = breed.threat_value
		end
	end

	mutator.OriginalBeastmenBannerBuff = BuffTemplates.healing_standard.buffs

	--Non-event settings and compositions
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

	PacingSettings.default.peak_fade_threshold = 110
	PacingSettings.default.peak_intensity_threshold = 120
	PacingSettings.default.sustain_peak_duration = { 5, 10 }
	PacingSettings.default.relax_duration = { 7, 10 }
	PacingSettings.default.horde_frequency = { 30, 45 }
	PacingSettings.default.multiple_horde_frequency = { 6, 9 }
	PacingSettings.default.max_delay_until_next_horde = { 60, 72 }
	PacingSettings.default.horde_startup_time = { 10, 20 }

	PacingSettings.default.mini_patrol.only_spawn_above_intensity = 0
	PacingSettings.default.mini_patrol.only_spawn_below_intensity = 900
	PacingSettings.default.mini_patrol.frequency = { 6, 10 }

	PacingSettings.default.difficulty_overrides = nil

	PacingSettings.chaos.peak_fade_threshold = 110
	PacingSettings.chaos.peak_intensity_threshold = 120
	PacingSettings.chaos.sustain_peak_duration = { 5, 10 }
	PacingSettings.chaos.relax_duration = { 10, 13 }
	PacingSettings.chaos.horde_frequency = { 30, 45 }
	PacingSettings.chaos.multiple_horde_frequency = { 6, 9 }
	PacingSettings.chaos.max_delay_until_next_horde = { 70, 90 }
	PacingSettings.chaos.horde_startup_time = { 10, 20 }
	PacingSettings.chaos.multiple_hordes = 3

	PacingSettings.chaos.mini_patrol.only_spawn_above_intensity = 0
	PacingSettings.chaos.mini_patrol.only_spawn_below_intensity = 900
	PacingSettings.chaos.mini_patrol.frequency = { 6, 10 }

	PacingSettings.chaos.difficulty_overrides = nil

	PacingSettings.beastmen.peak_fade_threshold = 110
	PacingSettings.beastmen.peak_intensity_threshold = 120
	PacingSettings.beastmen.sustain_peak_duration = { 5, 10 }
	PacingSettings.beastmen.relax_duration = { 10, 13 }
	PacingSettings.beastmen.horde_frequency = { 35, 50 }
	PacingSettings.beastmen.multiple_horde_frequency = { 6, 9 }
	PacingSettings.beastmen.max_delay_until_next_horde = { 75, 95 }
	PacingSettings.beastmen.horde_startup_time = { 10, 20 }

	PacingSettings.beastmen.mini_patrol.only_spawn_above_intensity = 0
	PacingSettings.beastmen.mini_patrol.only_spawn_below_intensity = 900
	PacingSettings.beastmen.mini_patrol.frequency = { 6, 10 }

	PacingSettings.beastmen.difficulty_overrides = nil

	HordeCompositionsPacing.small = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					8,
					10
				},
				"skaven_clan_rat",
				{
					12,
					14
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					10,
					12
				},
				"skaven_clan_rat_with_shield",
				{
					7,
					8
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.medium = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					15,
					20
				},
				"skaven_clan_rat",
				{
					26,
					30
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					16,
					20
				},
				"skaven_clan_rat",
				{
					10,
					12
				}
			}
		},
		{
			name = "leader",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					15,
					20
				},
				"skaven_clan_rat",
				{
					18,
					20
				}

			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.large = {
		{
			name = "plain",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					15,
					20
				},
				"skaven_clan_rat",
				{
					35,
					42
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_clan_rat",
				{
					40,
					42
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					12
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
					20
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_storm_vermin_commander",
				{
					5,
					6
				},
				"skaven_plague_monk",
				{
					2,
					3
				}

			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					20,
					30
				},
				"skaven_clan_rat",
				{
					10,
					12
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					15
				},
				"skaven_storm_vermin_with_shield",
				{
					3,
					4
				},
				"skaven_plague_monk",
				{
					3,
					4
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					22,
					28
				},
				"skaven_clan_rat",
				{
					20,
					30
				},
				"skaven_plague_monk",
				{
					7,
					8
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
					20,
					25
				},
				"skaven_clan_rat_with_shield",
				{
					18,
					20
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_plague_monk",
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
					20,
					22
				},
				"skaven_clan_rat",
				{
					30,
					35
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
					22,
					28
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					8,
					10
				},
				"skaven_storm_vermin_with_shield",
				{
					2,
					3
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
					20,
					22
				},
				"skaven_clan_rat",
				{
					30,
					34
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
					20,
					22
				},
				"skaven_clan_rat",
				{
					26,
					28
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
					20,
					24
				},
				"skaven_clan_rat",
				{
					24,
					28
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
					22,
					24
				},
				"skaven_clan_rat",
				{
					24,
					28
				},
				"skaven_clan_rat_with_shield",
				{
					18,
					20
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
					20,
					24
				},
				"skaven_clan_rat",
				{
					12,
					30
				},
				"skaven_storm_vermin_commander",
				{
					7,
					8
				},
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					18,
					22
				},
				"skaven_clan_rat",
				{
					24,
					26
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
					2,
					3
				},
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					22,
					24
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_storm_vermin_commander",
				{
					7,
					8
				}
			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					18,
					20
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					3,
					5
				},
				"skaven_storm_vermin_commander",
				{
					4,
					5
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
					18,
					20
				},
				"skaven_clan_rat",
				{
					28,
					30
				},
				"skaven_plague_monk",
				{
					7,
					8
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
					15,
					18
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					7
				},
				"skaven_plague_monk",
				{
					7,
					8
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
					20,
					22
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
					15,
					18
				},
				"skaven_clan_rat",
				{
					20,
					22
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
	HordeCompositionsPacing.chaos_medium = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					3,
					4
				},
				"chaos_fanatic",
				{
					15,
					20
				}
			}
		},
		{
			name = "zerkers",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_berzerker",
				{
					1,
					1
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_marauder_with_shield",
				{
					1,
					3
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_raider",
				{
					1,
					1
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_large = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					5,
					6
				},
				"chaos_fanatic",
				{
					20,
					25
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_raider",
				{
					2,
					2
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_raider",
				{
					1,
					1
				},
				"chaos_berzerker",
				{
					1,
					2
				},
				"chaos_marauder_with_shield",
				{
					1,
					2
				},
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					18,
					20
				},
				"chaos_marauder",
				{
					24,
					26
				},
				"chaos_raider",
				{
					6,
					7
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					24,
					26
				},
				"chaos_marauder",
				{
					14,
					16
				},
				"chaos_berzerker",
				{
					6,
					7
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					8,
					10
				},
				"chaos_marauder_with_shield",
				{
					18,
					20
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_warrior",
				1,
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder",
				{
					18,
					20
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					12,
					14
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_shields = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					15,
					16
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_raider",
				{
					3,
					4
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_raider",
				{
					6,
					7
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder",
				{
					14,
					16
				},
				"chaos_raider",
				{
					7,
					8
				},
				"chaos_marauder_with_shield",
				{
					6,
					7
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					18,
					20
				},
				"chaos_marauder",
				{
					16,
					18
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_marauder_with_shield",
				{
					6,
					7
				},
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_armor = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					20,
					22
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					3,
					4
				},
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					12,
					14
				},
				"chaos_berzerker",
				{
					6,
					8
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					10,
					12
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					4,
					6
				},
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					14,
					16
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					2,
					3
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder",
				{
					18,
					20
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_berzerker",
				{
					4,
					6
				},
				"chaos_warrior",
				1
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_berzerker = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					14,
					16
				},
				"chaos_marauder",
				{
					24,
					26
				},
				"chaos_berzerker",
				{
					7,
					8
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					18,
					20
				},
				"chaos_berzerker",
				{
					5,
					6
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					16,
					18
				},
				"chaos_marauder",
				{
					16,
					18
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_berzerker",
				{
					6,
					7
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					14,
					16
				},
				"chaos_marauder",
				{
					18,
					20
				},
				"chaos_berzerker",
				{
					7,
					8
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					14,
					16
				},
				"chaos_marauder",
				{
					16,
					18
				},
				"chaos_raider",
				{
					4,
					5
				},
				"chaos_berzerker",
				{
					4,
					5
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				},
				"chaos_warrior",
				1
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.beastmen_medium = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					12,
					14
				},
				"beastmen_ungor",
				{
					5,
					7
				}
			}
		},
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					7,
					9
				},
				"beastmen_ungor",
				{
					8,
					10
				}
			}
		},
		{
			name = "leader_gor",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					12,
					14
				},
				"beastmen_ungor",
				{
					5,
					7
				},
				"beastmen_bestigor",
				{
					1,
					2
				}
			}
		},
		{
			name = "leader_ungor",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					7,
					9
				},
				"beastmen_ungor",
				{
					8,
					10
				},
				"beastmen_bestigor",
				{
					1,
					2
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
	HordeCompositionsPacing.beastmen_large = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					16,
					18
				},
				"beastmen_ungor",
				{
					5,
					7
				}
			}
		},
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					12,
					14
				},
				"beastmen_ungor",
				{
					8,
					10
				}
			}
		},
		{
			name = "leader_gor",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					16,
					18
				},
				"beastmen_ungor",
				{
					5,
					7
				},
				"beastmen_bestigor",
				{
					2,
					2
				}
			}
		},
		{
			name = "leader_ungor",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					12,
					14
				},
				"beastmen_ungor",
				{
					8,
					10
				},
				"beastmen_bestigor",
				{
					2,
					2
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
	HordeCompositionsPacing.beastmen_huge = {
		{
			name = "plain",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					35,
					38
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					4,
					5
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "leader",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					30,
					32
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					4,
					5
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					2
				},
				"skaven_storm_vermin_commander",
				{
					1,
					2
				},
			}
		},
		{
			name = "leader_gor",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					38,
					40
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
				},
				"chaos_berzerker",
				{
					1,
					2
				},
				"skaven_plague_monk",
				{
					1,
					2
				},
			}
		},
		{
			name = "leader_ungor",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					38,
					40
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
				},
				"chaos_raider",
				{
					1,
					2
				},
				"skaven_storm_vermin_commander",
				{
					1,
					2
				},

			}

		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
	HordeCompositionsPacing.beastmen_huge_armor = {
		{
			name = "plain",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					30,
					32
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
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
				},
				"chaos_raider",
				{
					3,
					4
				},
			}
		},
		{
			name = "leader",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					38,
					40
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
				},
				"chaos_berzerker",
				{
					3,
					4
				},
			}
		},
		{
			name = "leader_gor",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					38,
					40
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					7,
					8
				}
			}
		},
		{
			name = "leader",
			weight = 7,
			breeds = {
				"beastmen_ungor",
				{
					35,
					37
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
				},
				"skaven_plague_monk",
				{
					3,
					4
				},
			},
		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}

	SpecialsSettings.default.max_specials = 8
	SpecialsSettings.default_light.max_specials = 8
	SpecialsSettings.skaven.max_specials = 8
	SpecialsSettings.skaven_light.max_specials = 8
	SpecialsSettings.chaos.max_specials = 8
	SpecialsSettings.chaos_light.max_specials = 8
	SpecialsSettings.beastmen.max_specials = 8
	SpecialsSettings.skaven_beastmen.max_specials = 8
	SpecialsSettings.chaos_beastmen.max_specials = 8
	PacingSettings.default.delay_specials_threat_value = nil
	PacingSettings.chaos.delay_specials_threat_value = nil
	PacingSettings.beastmen.delay_specials_threat_value = nil
	SpecialsSettings.default.methods.specials_by_slots = {
		max_of_same = 4,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.default_light.methods.specials_by_slots = {
		max_of_same = 2,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.skaven.methods.specials_by_slots = {
		max_of_same = 2,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.skaven_light.methods.specials_by_slots = {
		max_of_same = 2,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.chaos.methods.specials_by_slots = {
		max_of_same = 2,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.chaos_light.methods.specials_by_slots = {
		max_of_same = 2,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.beastmen.methods.specials_by_slots = {
		max_of_same = 2,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.skaven_beastmen.methods.specials_by_slots = {
		max_of_same = 2,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.chaos_beastmen.methods.specials_by_slots = {
		max_of_same = 2,
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			25,
			50
		}
	}
	SpecialsSettings.beastmen.breeds = {
		"beastmen_standard_bearer",
		"chaos_vortex_sorcerer",
		"chaos_vortex_sorcerer",
		"chaos_corruptor_sorcerer",
		"chaos_corruptor_sorcerer",
		"skaven_gutter_runner",
		"skaven_gutter_runner",
		"skaven_pack_master",
		"skaven_pack_master",
		"skaven_ratling_gunner",
		"skaven_ratling_gunner"
	}
	SpecialsSettings.skaven_beastmen.breeds = {
		"skaven_gutter_runner",
		"skaven_gutter_runner",
		"skaven_pack_master",
		"skaven_pack_master",
		"skaven_ratling_gunner",
		"skaven_ratling_gunner",
		"skaven_poison_wind_globadier",
		"skaven_poison_wind_globadier",
		"skaven_warpfire_thrower",
		"skaven_warpfire_thrower",
		"beastmen_standard_bearer"
	}
	SpecialsSettings.chaos_beastmen.breeds = {
		"skaven_gutter_runner",
		"skaven_gutter_runner",
		"skaven_pack_master",
		"skaven_pack_master",
		"skaven_poison_wind_globadier",
		"skaven_poison_wind_globadier",
		"chaos_vortex_sorcerer",
		"chaos_vortex_sorcerer",
		"chaos_corruptor_sorcerer",
		"chaos_corruptor_sorcerer",
		"skaven_warpfire_thrower",
		"skaven_warpfire_thrower",
		"beastmen_standard_bearer"
	}

	SpecialsSettings.default.difficulty_overrides.hard = nil
	SpecialsSettings.default.difficulty_overrides.harder = nil
	SpecialsSettings.default.difficulty_overrides.hardest = nil
	SpecialsSettings.default.difficulty_overrides.cataclysm = nil
	SpecialsSettings.default.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.default.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.default_light.difficulty_overrides.hard = nil
	SpecialsSettings.default_light.difficulty_overrides.harder = nil
	SpecialsSettings.default_light.difficulty_overrides.hardest = nil
	SpecialsSettings.default_light.difficulty_overrides.cataclysm = nil
	SpecialsSettings.default_light.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.default_light.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.skaven.difficulty_overrides.hard = nil
	SpecialsSettings.skaven.difficulty_overrides.harder = nil
	SpecialsSettings.skaven.difficulty_overrides.hardest = nil
	SpecialsSettings.skaven.difficulty_overrides.cataclysm = nil
	SpecialsSettings.skaven.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.skaven.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.skaven_light.difficulty_overrides.hard = nil
	SpecialsSettings.skaven_light.difficulty_overrides.harder = nil
	SpecialsSettings.skaven_light.difficulty_overrides.hardest = nil
	SpecialsSettings.skaven_light.difficulty_overrides.cataclysm = nil
	SpecialsSettings.skaven_light.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.skaven_light.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.chaos.difficulty_overrides.hard = nil
	SpecialsSettings.chaos.difficulty_overrides.harder = nil
	SpecialsSettings.chaos.difficulty_overrides.hardest = nil
	SpecialsSettings.chaos.difficulty_overrides.cataclysm = nil
	SpecialsSettings.chaos.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.chaos.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.chaos_light.difficulty_overrides.hard = nil
	SpecialsSettings.chaos_light.difficulty_overrides.harder = nil
	SpecialsSettings.chaos_light.difficulty_overrides.hardest = nil
	SpecialsSettings.chaos_light.difficulty_overrides.cataclysm = nil
	SpecialsSettings.chaos_light.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.chaos_light.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.beastmen.difficulty_overrides.hard = nil
	SpecialsSettings.beastmen.difficulty_overrides.harder = nil
	SpecialsSettings.beastmen.difficulty_overrides.hardest = nil
	SpecialsSettings.beastmen.difficulty_overrides.cataclysm = nil
	SpecialsSettings.beastmen.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.beastmen.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.hard = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.harder = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.hardest = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.cataclysm = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.hard = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.harder = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.hardest = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.cataclysm = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.cataclysm_3 = nil

	Breeds.skaven_rat_ogre.threat_value = 25
	Breeds.skaven_stormfiend.threat_value = 25
	Breeds.chaos_spawn.threat_value = 25
	Breeds.chaos_troll.threat_value = 25
	Breeds.beastmen_minotaur.threat_value = 25

	Managers.state.conflict:set_threat_value("skaven_rat_ogre", 25)
	Managers.state.conflict:set_threat_value("skaven_stormfiend", 25)
	Managers.state.conflict:set_threat_value("chaos_spawn", 25)
	Managers.state.conflict:set_threat_value("chaos_troll", 25)
	Managers.state.conflict:set_threat_value("beastmen_minotaur", 25)

	BossSettings.default.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.default_light.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.skaven.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.skaven_light.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.chaos.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.chaos_light.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.beastmen.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.skaven_beastmen.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.chaos_beastmen.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.beastmen_light.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	---------------------
	--Patrol Spice

	GenericTerrorEvents.boss_event_beastmen_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard"
			}
		}
	}

	GenericTerrorEvents.boss_event_skaven_beastmen_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard",
				"storm_vermin_shields_infront",
				"storm_vermin_shields_infront"
			}
		}
	}

	GenericTerrorEvents.boss_event_chaos_beastmen_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard"
			}
		}
	}

	GenericTerrorEvents.boss_event_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"storm_vermin_two_column",
				"storm_vermin_shields_infront",
				"chaos_warrior_default"
			}
		}
	}
	GenericTerrorEvents.boss_event_skaven_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"storm_vermin_shields_infront",
				"storm_vermin_two_column"
			}
		}
	}
	GenericTerrorEvents.boss_event_chaos_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"chaos_warrior_default"
			}
		}
	}


	PatrolFormationSettings.chaos_warrior_default = {
		settings = PatrolFormationSettings.default_marauder_settings,

		normal = {
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			},
			{
				"chaos_raider"
			},
			{
				"chaos_raider"
			},
			{
				"chaos_marauder",
				"chaos_marauder"
			},
			{
				"chaos_marauder",
				"chaos_marauder"
			},
			{
				"chaos_warrior"
			},
			{
				"chaos_marauder",
				"chaos_marauder"
			}
		},
		hard = {
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			},
			{
				"chaos_warrior"
			},
			{
				"chaos_marauder",
				"chaos_marauder"
			},
			{
				"chaos_raider",
				"chaos_raider"
			},
			{
				"chaos_marauder",
				"chaos_marauder"
			},
			{
				"chaos_warrior"
			},
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			}
		},
		harder = {
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			},
			{
				"chaos_raider",
				"chaos_raider"
			},
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			}
		},
		hardest = {
			{
				"chaos_raider"
			},
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			},
			{
				"chaos_raider",
				"chaos_raider"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
			}
		},
		cataclysm = {
			{
				"chaos_raider"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_berzerker",
				"chaos_berzerker"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_berzerker",
				"chaos_berzerker"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_raider",
				"chaos_raider"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_berzerker",
				"chaos_berzerker"
			},
			{
				"chaos_raider",
				"chaos_raider"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			},
			{
				"chaos_berzerker",
				"chaos_berzerker"
			},
			{
				"chaos_warrior",
				"chaos_warrior"
			}
		}
	}


	PatrolFormationSettings.storm_vermin_two_column = {
		settings = {
			extra_breed_name = "skaven_storm_vermin_with_shield",
			use_controlled_advance = true,
			sounds = {
				PLAYER_SPOTTED = "storm_vermin_patrol_player_spotted",
				FORMING = "Play_stormvermin_patrol_forming",
				FOLEY = "Play_stormvermin_patrol_foley",
				FORMATED = "Play_stormvemin_patrol_formated",
				FOLEY_EXTRA = "Play_stormvermin_patrol_shield_foley",
				FORMATE = "storm_vermin_patrol_formate",
				CHARGE = "storm_vermin_patrol_charge",
				VOICE = "Play_stormvermin_patrol_voice"
			},
			offsets = PatrolFormationSettings.default_settings.offsets,
			speeds = PatrolFormationSettings.default_settings.speeds
		},
		normal = {
			{
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_clan_rat",
				"skaven_clan_rat"
			},
			{
				"skaven_clan_rat",
				"skaven_clan_rat"
			},
			{
				"skaven_clan_rat",
				"skaven_clan_rat"
			}
		},
		hard = {
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			}
		},
		harder = {
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			}
		},
		hardest = {
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			}
		},
		cataclysm = {
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			}
		}
	}


	PatrolFormationSettings.storm_vermin_shields_infront = {
		settings = {
			extra_breed_name = "skaven_storm_vermin_with_shield",
			use_controlled_advance = true,
			sounds = {
				PLAYER_SPOTTED = "storm_vermin_patrol_player_spotted",
				FORMING = "Play_stormvermin_patrol_forming",
				FOLEY = "Play_stormvermin_patrol_foley",
				FORMATED = "Play_stormvemin_patrol_formated",
				FOLEY_EXTRA = "Play_stormvermin_patrol_shield_foley",
				FORMATE = "storm_vermin_patrol_formate",
				CHARGE = "storm_vermin_patrol_charge",
				VOICE = "Play_stormvermin_patrol_voice"
			},
			offsets = PatrolFormationSettings.default_settings.offsets,
			speeds = PatrolFormationSettings.default_settings.speeds
		},
		normal = {
			{
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_clan_rat",
				"skaven_clan_rat",
				"skaven_clan_rat",
				"skaven_clan_rat"
			}
		},
		hard = {
			{
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			}
		},
		harder = {
			{
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				EMPTY,
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				EMPTY
			}
		},
		hardest = {
			{
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin",
				EMPTY,
				EMPTY,
				"skaven_storm_vermin"
			}
		},
		cataclysm = {
			{
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				EMPTY,
				EMPTY,
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin_with_shield",
				EMPTY,
				EMPTY,
				"skaven_storm_vermin_with_shield"
			}
		}
	}


	PatrolFormationSettings.beastmen_standard = {
		settings = {
			sounds = {
				PLAYER_SPOTTED = "beastmen_patrol_player_spotted",
				FORMING = "beastmen_patrol_forming",
				FOLEY = "beastmen_patrol_foley",
				FORMATED = "beastmen_patrol_formated",
				FORMATE = "beastmen_patrol_formate",
				CHARGE = "beastmen_patrol_charge",
				VOICE = "beastmen_patrol_voice"
			},
			offsets = {
				ANCHOR_OFFSET = {
					x = 1.4,
					y = 0.6
				}
			},
			speeds = {
				FAST_WALK_SPEED = 2.6,
				MEDIUM_WALK_SPEED = 2.35,
				WALK_SPEED = 2.12,
				SPLINE_SPEED = 2.22,
				SLOW_SPLINE_SPEED = 0.1
			},
		},
		normal = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		},
		hard = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastman_ungor",
				"beastman_ungor"
			},
			{
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		},
		harder = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		},
		hardest = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			},
			{
				"beastmen_gor",
				"beastmen_gor"
			}
		},
		cataclysm = {
			{
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_standard_bearer",
				"beastmen_standard_bearer"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			},
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
			}
		}
	}

	---------------------
	--Generic event spawnsets

	HordeCompositions.event_smaller = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					5,
					7
				},
				"skaven_clan_rat",
				{
					7,
					9
				}
			}
		},
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					4,
					6
				},
				"skaven_clan_rat",
				{
					6,
					7
				},
				"skaven_clan_rat_with_shield",
				{
					1,
					2
				}
			}
		},
		{
			name = "leader",
			weight = 3,
			breeds = {
				"skaven_slave",
				{
					7,
					9
				},
				"skaven_storm_vermin_commander",
				{
					1,
					2
				}
			}
		}
	}

	HordeCompositions.event_small = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					8,
					10
				},
				"skaven_clan_rat",
				{
					13,
					15
				}
			}
		},
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					9,
					10
				},
				"skaven_clan_rat",
				{
					8,
					9
				},
				"skaven_clan_rat_with_shield",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader",
			weight = 3,
			breeds = {
				"skaven_slave",
				{
					13,
					15
				},
				"skaven_clan_rat_with_shield",
				{
					1,
					2
				},
				"skaven_storm_vermin_commander",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.event_medium = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					12,
					13
				},
				"skaven_clan_rat",
				{
					28,
					31
				}
			}
		},
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					16,
					18
				},
				"skaven_clan_rat",
				{
					15,
					16
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					6
				}
			}
		},
		{
			name = "leader",
			weight = 3,
			breeds = {
				"skaven_slave",
				{
					14,
					17
				},
				"skaven_clan_rat",
				{
					14,
					18
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					6
				},
				"skaven_storm_vermin_commander",
				{
					2,
					3
				}
			}
		}
	}

	HordeCompositions.event_large = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					22,
					26
				},
				"skaven_clan_rat",
				{
					34,
					38
				}
			}
		},
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					14,
					17
				},
				"skaven_clan_rat",
				{
					30,
					35
				},
				"skaven_clan_rat_with_shield",
				{
					8,
					13
				}
			}
		},
		{
			name = "leader",
			weight = 3,
			breeds = {
				"skaven_slave",
				{
					12,
					14
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					7,
					11
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				}
			}
		},
		{
			name = "shielders",
			weight = 3,
			breeds = {
				"skaven_slave",
				{
					14,
					16
				},
				"skaven_clan_rat",
				{
					20,
					21
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					14
				},
				"skaven_storm_vermin_with_shield",
				{
					2,
					2
				}
			}
		}
	}

	HordeCompositions.event_small_chaos = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					10,
					13
				}
			}
		},
		{
			name = "shielders",
			weight = 3,
			breeds = {
				"chaos_marauder_with_shield",
				{
					5,
					7
				},
				"chaos_marauder",
				{
					4,
					5
				}
			}
		}
	}

	HordeCompositions.event_medium_chaos = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					14,
					16
				},
				"chaos_fanatic",
				{
					20,
					25
				}
			}
		},
		{
			name = "shielders",
			weight = 3,
			breeds = {
				"chaos_marauder_with_shield",
				{
					5,
					6
				},
				"chaos_marauder",
				{
					4,
					5
				},
				"chaos_fanatic",
				{
					20,
					25
				}
			}
		},
		{
			name = "leader",
			weight = 5,
			breeds = {
				"chaos_marauder",
				{
					4,
					5
				},
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_raider",
				{
					2,
					2
				}
			}
		},
		{
			name = "zerker",
			weight = 3,
			breeds = {
				"chaos_marauder",
				{
					5,
					6
				},
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_berzerker",
				{
					1,
					2
				}
			}
		}
	}

	HordeCompositions.event_large_chaos = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					22,
					26
				},
				"chaos_fanatic",
				{
					22,
					26
				}
			}
		},
		{
			name = "shielders",
			weight = 3,
			breeds = {
				"chaos_marauder_with_shield",
				{
					9,
					13
				},
				"chaos_marauder",
				{
					8,
					11
				},
				"chaos_fanatic",
				{
					22,
					26
				}
			}
		},
		{
			name = "leader",
			weight = 5,
			breeds = {
				"chaos_marauder",
				{
					8,
					11
				},
				"chaos_fanatic",
				{
					22,
					26
				},
				"chaos_raider",
				{
					3,
					4
				}
			}
		},
		{
			name = "zerker",
			weight = 3,
			breeds = {
				"chaos_marauder",
				{
					8,
					11
				},
				"chaos_fanatic",
				{
					22,
					26
				},
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		}
	}

	HordeCompositions.event_extra_spice_small = {
		{
			name = "few_clanrats",
			weight = 20,
			breeds = {
				"skaven_clan_rat",
				{
					4,
					5
				},
				"skaven_clan_rat_with_shield",
				{
					6,
					7
				},
				"skaven_storm_vermin_commander",
				1
			}
		},
		{
			name = "storm_clanrats",
			weight = 2,
			breeds = {
				"skaven_clan_rat",
				{
					6,
					7
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					5
				},
				"skaven_storm_vermin_with_shield",
				1
			}
		}
	}

	HordeCompositions.event_extra_spice_medium = {
		{
			name = "few_clanrats",
			weight = 10,
			breeds = {
				"skaven_clan_rat",
				{
					8,
					13
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					15
				},
				"skaven_storm_vermin_commander",
				{
					2,
					3
				}
			}
		},
		{
			name = "storm_clanrats",
			weight = 3,
			breeds = {
				"skaven_clan_rat",
				{
					10,
					15
				},
				"skaven_clan_rat_with_shield",
				{
					8,
					13
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					2
				}
			}
		}
	}

	HordeCompositions.event_extra_spice_large = {
		{
			name = "plain",
			weight = 10,
			breeds = {
				"skaven_clan_rat",
				{
					17,
					19
				},
				"skaven_clan_rat_with_shield",
				{
					20,
					24
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				}
			}
		},
		{
			name = "lotsofvermin",
			weight = 3,
			breeds = {
				"skaven_clan_rat",
				{
					20,
					24
				},
				"skaven_clan_rat_with_shield",
				{
					17,
					19
				},
				"skaven_storm_vermin_with_shield",
				{
					2,
					3
				}
			}
		}
	}

	TerrorEventBlueprints.generic_disable_pacing = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	TerrorEventBlueprints.generic_enable_specials = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	---------------------
	--Unscaled Onslaught variants of generic compositions

	HordeCompositions.onslaught_chaos_shields = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder_with_shield",
				{
					3,
					4
				}
			}
		}
	}

	HordeCompositions.onslaught_chaos_berzerkers_small = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		}
	}

	HordeCompositions.onslaught_chaos_berzerkers_medium = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		}
	}

	HordeCompositions.onslaught_chaos_warriors = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_warrior",
				{
					2,
					3
				}
			}
		}
	}

	HordeCompositions.onslaught_event_small_fanatics = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					5,
					6
				}
			}
		}
	}

	HordeCompositions.onslaught_plague_monks_small = {
		{
			name = "mines_plague_monks",
			weight = 1,
			breeds = {
				"skaven_plague_monk",
				{
					3,
					4
				}
			}
		}
	}

	HordeCompositions.onslaught_plague_monks_medium = {
		{
			name = "mines_plague_monks",
			weight = 1,
			breeds = {
				"skaven_plague_monk",
				{
					4,
					5
				}
			}
		}
	}

	HordeCompositions.onslaught_storm_vermin_small = {
		{
			name = "somevermin",
			weight = 3,
			breeds = {
				"skaven_storm_vermin_commander",
				{
					2,
					3
				}
			}
		}
	}

	HordeCompositions.onslaught_storm_vermin_medium = {
		{
			name = "somevermin",
			weight = 3,
			breeds = {
				"skaven_storm_vermin_commander",
				{
					3,
					4
				}
			}
		}
	}

	HordeCompositions.onslaught_storm_vermin_white_medium = {
		{
			name = "somevermin",
			weight = 3,
			breeds = {
				"skaven_storm_vermin",
				{
					3,
					4
				}
			}
		}
	}

	HordeCompositions.onslaught_storm_vermin_shields_small = {
		{
			name = "somevermin",
			weight = 3,
			breeds = {
				"skaven_storm_vermin_with_shield",
				{
					2,
					3
				}
			}
		}
	}

	HordeCompositions.onslaught_event_military_courtyard_plague_monks = {
		{
			name = "mixed",
			weight = 1,
			breeds = {
				"skaven_plague_monk",
				{
					3,
					3
				},
				"skaven_clan_rat",
				{
					4,
					6
				}
			}
		}
	}

	HordeCompositions.onslaught_military_end_event_plague_monks = {
		{
			name = "military_plague_monks",
			weight = 1,
			breeds = {
				"skaven_plague_monk",
				{
					3,
					4
				}
			}
		}
	}

	---------------------
	--Custom compositions

	HordeCompositions.event_extra_spice_unshielded = {
		{
			name = "few_clanrats",
			weight = 10,
			breeds = {
				"skaven_clan_rat",
				{
					18,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					7
				}
			}
		},
		{
			name = "storm_clanrats",
			weight = 5,
			breeds = {
				"skaven_clan_rat",
				{
					18,
					22
				},
				"skaven_storm_vermin_commander",
				{
					2,
					3
				}
			}
		}
	}

	HordeCompositions.skaven_shields = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_clan_rat_with_shield",
				{
					7,
					9
				}
			}
		},
		{
			name = "somevermin",
			weight = 5,
			breeds = {
				"skaven_clan_rat_with_shield",
				{
					4,
					5
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.event_stormvermin_shielders = {
		{
			name = "plain",
			weight = 10,
			breeds = {
				"skaven_storm_vermin_commander",
				2,
				"skaven_storm_vermin_with_shield",
				{
					2,
					3
				}
			}
		}
	}

	HordeCompositions.event_stormvermin_special = {
		{
			name = "plain",
			weight = 10,
			breeds = {
				"skaven_storm_vermin",
				3,
			}
		}
	}

	HordeCompositions.event_maulers_small = {
		{
			name = "plain",
			weight = 10,
			breeds = {
				"chaos_raider",
				{
					2,
					3
				}
			}
		}
	}

	HordeCompositions.event_maulers_medium = {
		{
			name = "plain",
			weight = 10,
			breeds = {
				"chaos_raider",
				{
					5,
					6
				}
			}
		}
	}

	HordeCompositions.event_bestigors_medium = {
		{
			name = "plain",
			weight = 10,
			breeds = {
				"beastmen_bestigor",
				{
					5,
					6
				}
			}
		}
	}

	---------------------
	--Custom specials & bosses

	HordeCompositions.onslaught_custom_special_denial = {
		{
			name = "gasrat",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					1,
					1
				}
			}
		},
		{
			name = "gunner",
			weight = 10,
			breeds = {
				"skaven_ratling_gunner",
				{
					1,
					1
				}
			}
		},
		{
			name = "stormer",
			weight = 10,
			breeds = {
				"chaos_vortex_sorcerer",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_specials_heavy_denial = {
		{
			name = "gasrat",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					2,
					2
				},
				"skaven_ratling_gunner",
				{
					1,
					1
				},
				"chaos_vortex_sorcerer",
				{
					1,
					1
				}
			}
		},
		{
			name = "gunner",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					1,
					1
				},
				"skaven_ratling_gunner",
				{
					2,
					2
				},
				"chaos_vortex_sorcerer",
				{
					1,
					1
				}
			}
		},
		{
			name = "stormer",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					1,
					1
				},
				"skaven_ratling_gunner",
				{
					1,
					1
				},
				"chaos_vortex_sorcerer",
				{
					2,
					2
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_special_disabler = {
		{
			name = "assassin",
			weight = 10,
			breeds = {
				"skaven_gutter_runner",
				{
					1,
					1
				}
			}
		},
		{
			name = "packmaster",
			weight = 10,
			breeds = {
				"skaven_pack_master",
				{
					1,
					1
				}
			}
		},
		{
			name = "leech",
			weight = 10,
			breeds = {
				"chaos_corruptor_sorcerer",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_specials_heavy_disabler = {
		{
			name = "assassin",
			weight = 10,
			breeds = {
				"skaven_gutter_runner",
				{
					2,
					2
				},
				"skaven_pack_master",
				{
					1,
					1
				}
			}
		},
		{
			name = "packmaster",
			weight = 10,
			breeds = {
				"skaven_pack_master",
				{
					2,
					2
				},
				"chaos_corruptor_sorcerer",
				{
					1,
					1
				}
			}
		},
		{
			name = "leech",
			weight = 10,
			breeds = {
				"chaos_corruptor_sorcerer",
				{
					2,
					2
				},
				"skaven_gutter_runner",
				{
					1,
					1
				}
			}
		},
		{
			name = "mixed",
			weight = 10,
			breeds = {
				"skaven_gutter_runner",
				{
					1,
					1
				},
				"skaven_pack_master",
				{
					1,
					1
				},
				"chaos_corruptor_sorcerer",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.onslaught_custom_special_skaven = {
		{
			name = "assassin",
			weight = 10,
			breeds = {
				"skaven_gutter_runner",
				{
					1,
					1
				}
			}
		},
		{
			name = "packmaster",
			weight = 10,
			breeds = {
				"skaven_pack_master",
				{
					1,
					1
				}
			}
		},
		{
			name = "gasrat",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					1,
					1
				}
			}
		},
		{
			name = "gunner",
			weight = 10,
			breeds = {
				"skaven_ratling_gunner",
				{
					1,
					1
				}
			}
		},
		{
			name = "warpfire",
			weight = 10,
			breeds = {
				"skaven_warpfire_thrower",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.onslaught_custom_boss_ogre = {
		{
			name = "ogre",
			weight = 10,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_stormfiend = {
		{
			name = "fiend",
			weight = 10,
			breeds = {
				"skaven_stormfiend",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_spawn = {
		{
			name = "spawn",
			weight = 10,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_troll = {
		{
			name = "troll",
			weight = 10,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_minotaur = {
		{
			name = "mino",
			weight = 10,
			breeds = {
				"beastmen_minotaur",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_random = {
		{
			name = "ogre",
			weight = 5,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		},
		{
			name = "fiend",
			weight = 5,
			breeds = {
				"skaven_stormfiend",
				{
					1,
					1
				}
			}
		},
		{
			name = "spawn",
			weight = 5,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
		{
			name = "troll",
			weight = 5,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.onslaught_custom_boss_random = {
		{
			name = "ogre",
			weight = 5,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		},
		{
			name = "fiend",
			weight = 5,
			breeds = {
				"skaven_stormfiend",
				{
					1,
					1
				}
			}
		},
		{
			name = "spawn",
			weight = 5,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
		{
			name = "troll",
			weight = 5,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.onslaught_custom_boss_random_no_fiend = {
		{
			name = "ogre",
			weight = 5,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		},
		{
			name = "spawn",
			weight = 5,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
		{
			name = "troll",
			weight = 5,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		}
	}

	---------------------
	--Righteous Stand

	TerrorEventBlueprints.military.military_courtyard_event_01 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "courtyard_hidden",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 20 and count_event_breed("chaos_fanatic") < 26
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 27 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard_hidden",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard_hidden",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "onslaught_courtyard_roof_middle",
			composition_type = "onslaught_custom_boss_random_no_fiend"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 10
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "courtyard_hidden",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "courtyard_hidden",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 24 and count_event_breed("chaos_fanatic") < 32
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 30 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_plague_monk") < 12
			end
		},
				{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 30 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_plague_monk") < 12
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 30 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_plague_monk") < 12
			end
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_02 = TerrorEventBlueprints.military.military_courtyard_event_01

	TerrorEventBlueprints.military.military_courtyard_event_specials_01 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard_hidden",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard_hidden",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_specials_02 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard_hidden",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_specials_03 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_specials_04 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_custom_specials_heavy_disabler"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_specials_05 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_custom_specials_heavy_disabler"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	--01	Warriors & Plague Monks
	--02	Berzerkers & Stormvermins
	--03	Mixed Shielders
	--04	Extra Denial
	--05	Extra Disablers

	HordeCompositions.onslaught_military_mauler_assault = {
		{
			name = "plain",
			weight = 1,
			breeds = {
				"chaos_raider",
				{
				15,
				16
				},
				"chaos_warrior",
				{
				5,
				6
				},
			}
		}
	}

	HordeCompositions.military_end_event_chaos_01 = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_raider",
				{
					10,
					13,
				},
				"chaos_marauder",
				{
					20,
					22
				},
				"chaos_fanatic",
				{
					20,
					22
				}
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"chaos_raider",
				{
					10,
					13,
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					8,
					9
				},
				"chaos_fanatic",
				{
					18,
					19
				}
			}
		}
	}

	HordeCompositions.military_end_event_berzerkers = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_berzerker",
				15,
				"chaos_marauder_with_shield",
				20
			}
		}
	}

	TerrorEventBlueprints.military.military_temple_guards = {
		{
			"disable_kick"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards02",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards05",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards06",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards07",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards09",
			breed_name = "chaos_warrior"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_temple_guard_assault",
			composition_type = "onslaught_military_mauler_assault"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_start = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"disable_kick"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "end_event_start",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_troll"
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 25 and count_event_breed("skaven_clan_rat_with_shield") < 24 and count_event_breed("skaven_slave") < 30 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_start_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_01_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_01_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_01_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_01_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_02_left = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_02_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_02_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_02_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_02_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_02_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_02_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_02_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_03_left = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 25 and count_event_breed("skaven_slave") < 28 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_03_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_03_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 25 and count_event_breed("skaven_slave") < 28 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_03_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_03_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_middle",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 25 and count_event_breed("skaven_slave") < 28 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_03_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_03_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_03_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_04_left = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_04_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_04_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_04_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_04_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_middle",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_04_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_04_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_04_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_05_left = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "end_event_left",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_05_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_05_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "end_event_right",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_05_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_05_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "end_event_middle",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_05_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_05_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "end_event_back",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_05_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_06_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_06_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_06_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_06_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_06_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_06_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_specials_01 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 2 and count_event_breed("skaven_pack_master") < 2 and count_event_breed("skaven_ratling_gunner") < 2 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 2 and count_event_breed("chaos_vortex_sorcerer") < 3 and count_event_breed("chaos_corruptor_sorcerer") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_specials_02 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 2 and count_event_breed("skaven_pack_master") < 2 and count_event_breed("skaven_ratling_gunner") < 2 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 2 and count_event_breed("chaos_vortex_sorcerer") < 3 and count_event_breed("chaos_corruptor_sorcerer") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_specials_03 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 2 and count_event_breed("skaven_pack_master") < 2 and count_event_breed("skaven_ratling_gunner") < 2 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 2 and count_event_breed("chaos_vortex_sorcerer") < 3 and count_event_breed("chaos_corruptor_sorcerer") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_specials_04 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 2 and count_event_breed("skaven_pack_master") < 2 and count_event_breed("skaven_ratling_gunner") < 2 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 2 and count_event_breed("chaos_vortex_sorcerer") < 3 and count_event_breed("chaos_corruptor_sorcerer") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_specials_05 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 2 and count_event_breed("skaven_pack_master") < 2 and count_event_breed("skaven_ratling_gunner") < 2 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 2 and count_event_breed("chaos_vortex_sorcerer") < 3 and count_event_breed("chaos_corruptor_sorcerer") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_specials_06 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 2 and count_event_breed("skaven_pack_master") < 2 and count_event_breed("skaven_ratling_gunner") < 2 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 2 and count_event_breed("chaos_vortex_sorcerer") < 3 and count_event_breed("chaos_corruptor_sorcerer") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}

	--01 2x denial 1x skaven
	--02 2x denial 1x disabler
	--03 2x disabler 1x denial
	--04 2x disabler 1x skaven
	--05 Mass denial
	--06 3x skaven

	TerrorEventBlueprints.military.military_end_event_survival_escape = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_start",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 12
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_escape_done"
		}
	}

	---------------------
	--Convocation of Decay

	TerrorEventBlueprints.catacombs.catacombs_puzzle_event_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_puzzle_event_loop"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 30 and count_event_breed("skaven_slave") < 36 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 12
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"flow_event",
			flow_event_name = "catacombs_puzzle_event_loop_done"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_puzzle_event_a = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_puzzle_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"flow_event",
			flow_event_name = "catacombs_puzzle_event_a_done"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_puzzle_event_b = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_puzzle_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"flow_event",
			flow_event_name = "catacombs_puzzle_event_b_done"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_puzzle_event_c = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_puzzle_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "event_maulers_medium"
		},
		{
			"flow_event",
			flow_event_name = "catacombs_puzzle_event_c_done"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_special_event_a = {
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_storm_vermin_shields_small"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_special_event_b = {
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_02",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_02",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_plague_monks_medium"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_special_event_c = {
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_01",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_02",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_03",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_plague_monks_medium"
		},
	}

	--a shields & warriors
	--b maulers
	--c berzerkers

	--a special shielded storm
	--b special monk
	--c special mass warpfire

	--Because otherwise triple boss event is triggered early by respawning player..
	local function living_player_has_dropped()
		for i, player in pairs(Managers.player:players()) do
			if player.player_unit then
				local status_extension = ScriptUnit.has_extension(player.player_unit, "status_system")
				if status_extension and not status_extension.is_ready_for_assisted_respawn(status_extension) then
					if POSITION_LOOKUP[player.player_unit].z < -15 then
						return true
					end
				end
			end
		end
		return false
	end

	TerrorEventBlueprints.catacombs.catacombs_load_sorcerers = {
		{
			"force_load_breed_package",
			breed_name = "chaos_dummy_sorcerer"
		},
		{
			"continue_when",
			condition = function (t)
				return living_player_has_dropped()
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_pool_boss_1",
			breed_name = {
				"chaos_spawn",
				"beastmen_minotaur"
			}

		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_pool_boss_2",
			breed_name = "chaos_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_pool_boss_3",
			breed_name = {
				"skaven_rat_ogre",
				"skaven_stormfiend"
			}
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_end_event_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 6,
			spawner_id = "end_event",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 30 and count_event_breed("skaven_storm_vermin_commander") < 10 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 16 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_01_done"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_end_event_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 30 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 6,
			spawner_id = "end_event",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 16 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 6,
			spawner_id = "end_event",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},

		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 16 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 16 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_02_done"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_end_event_specials_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event_specials"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 9
			end
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_end_event_specials_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event_specials"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 9
			end
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.catacombs.catacombs_end_event_specials_03 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event_specials"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 9
			end
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_specials_done"
		}
	}

	---------------------
	--Hunger in the Dark

	TerrorEventBlueprints.mines.mines_end_event_start = {
		{
			"disable_kick"
		},
		{
			"enable_bots_in_carry_event"
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_first_wave = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_mines_extra_troll_3",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_mines_extra_troll_1",
			breed_name = "chaos_troll",
			optional_data = {
				enhancements = enhancement_1
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 30 and count_event_breed("skaven_slave") < 30 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 12
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_first_wave_done"
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_mines_extra_troll_3",
			breed_name = "chaos_troll",
			optional_data = {
				enhancements = enhancement_1
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 25 and count_event_breed("chaos_berzerker") < 12
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 25 and count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 10 and count_event_breed("chaos_raider") < 12
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 20 and count_event_breed("chaos_fanatic") < 25 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 12
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 2
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 2
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 12 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 12
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_loop_done"
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_loop_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 20 and count_event_breed("chaos_fanatic") < 25 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 10
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_maulers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 20 and count_event_breed("chaos_fanatic") < 25 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 12 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 10 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 9
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_loop_02_done"
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_specials_01 = {
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") + count_event_breed("chaos_vortex_sorcerer")) < 8 and (count_event_breed("skaven_gutter_runner") + count_event_breed("skaven_pack_master") + count_event_breed("chaos_corruptor_sorcerer")) < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_specials_02 = {
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") + count_event_breed("chaos_vortex_sorcerer")) < 8 and (count_event_breed("skaven_gutter_runner") + count_event_breed("skaven_pack_master") + count_event_breed("chaos_corruptor_sorcerer")) < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_specials_03 = {
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") + count_event_breed("chaos_vortex_sorcerer")) < 8 and (count_event_breed("skaven_gutter_runner") + count_event_breed("skaven_pack_master") + count_event_breed("chaos_corruptor_sorcerer")) < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_stop = {
		{
			"control_specials",
			enable = true
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_trolls = {
		{
			"force_load_breed_package",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_01",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_02",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_03",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_04",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_05",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_06",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_07",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_08",
			breed_name = "chaos_dummy_troll"
		},
		{
			"stop_event",
			stop_event_name = "mines_end_event_loop"
		},
		{
			"stop_event",
			stop_event_name = "mines_end_event_loop_02"
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_trolls_done"
		}
	}

	TerrorEventBlueprints.mines.mines_troll_boss = {
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_bell_boss",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_boss",
			breed_name = "chaos_troll"
		},
		{
			"set_time_challenge",
			time_challenge_name = "mines_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "mines_speed_event_cata"
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return count_event_breed("chaos_troll") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_troll_boss_done"
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "mines_speed_event"
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "mines_speed_event_cata"
		}
	}

	TerrorEventBlueprints.mines.mines_end_event_escape = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "escape",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 15 and count_event_breed("chaos_berzerker") < 10
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "escape",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_escape_done"
		}
	}

	---------------------
	--Halescourge

	TerrorEventBlueprints.ground_zero.gz_elevator_guards_a = {
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_1",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_2",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_3",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_4",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_5",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_6",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_1",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_2",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_3",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_4",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_5",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_6",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_7",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_8",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_1",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_2",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_3",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_4",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_5",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_6",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"delay",
			duration = 5
		}
	}

	local ACTIONS = BreedActions.chaos_exalted_sorcerer
	local restore_bubbledude = {
		"BTSpawnAllies",
		enter_hook = "sorcerer_spawn_horde",
		name = "sorcerer_spawn_horde",
		action_data = ACTIONS.spawn_allies_horde
	}

	table.insert(BreedBehaviors.chaos_exalted_sorcerer[7], 2, restore_bubbledude)

	TerrorEventBlueprints.ground_zero.gz_chaos_boss = {
		{
			"set_master_event_running",
			name = "gz_chaos_boss"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"spawn_at_raw",
			spawner_id = "warcamp_chaos_boss",
			breed_name = "chaos_exalted_sorcerer"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_sorcerer") == 1
			end
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_sorcerer") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "gz_chaos_boss_dead"
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	HordeCompositions.sorcerer_boss_event_defensive = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					10,
					14
				},
				"chaos_marauder",
				{
					16,
					18
				},
				"chaos_marauder_with_shield",
				{
					12,
					15
				},
				"chaos_raider",
				{
					5,
					6
				},
				"chaos_warrior",
				1,
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_b",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					9,
					11
				},
				"chaos_marauder",
				{
					20,
					24
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_berzerker",
				{
					5,
					6
				},
				"chaos_warrior",
				1,
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_c",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					9,
					11
				},
				"chaos_marauder",
				{
					20,
					24
				},
				"chaos_warrior",
				{
					2,
					3
				},
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_d",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					12,
					15
				},
				"chaos_marauder",
				{
					20,
					24
				},
				"chaos_raider",
				{
					6,
					7
				},
				"chaos_warrior",
				1,
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_e",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					24,
					26
				},
				"chaos_berzerker",
				{
					6,
					7
				},
				"chaos_warrior",
				1,
				"chaos_plague_sorcerer",
				2
			}
		},
		start_time = 0
	}

	HordeCompositions.sorcerer_extra_spawn = HordeCompositions.sorcerer_boss_event_defensive

	---------------------
	--Athel Yenlui

	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_time_challenge",
			time_challenge_name = "elven_ruins_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "elven_ruins_speed_event_cata"
		},
		{
			"set_master_event_running",
			name = "ruins_end_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"disable_kick"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_small"
		},
		{
			"continue_when",
			duration = 10,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = {
				2,
				3
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 35,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		}
	}

	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event_flush = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "elven_ruins_speed_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = {
				1,
				2
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_ogre"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_stormfiend"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_ogre"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		}
	}

	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event_device_fiddlers = {
		{
			"control_specials",
			enable = false
		},
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_1",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_2",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_3",
			breed_name = "skaven_clan_rat"
		}
	}

	---------------------
	--Screaming Bell

	HordeCompositions.event_bell_monks = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"skaven_plague_monk",
				{
					4,
					5
				}
			}
		}
	}

	HordeCompositions.event_bell_warriors = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_warrior",
				10
			}
		}
	}

	TerrorEventBlueprints.bell.canyon_bell_event = {
		{
			"set_master_event_running",
			name = "canyon_bell_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "bell_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "bell_speed_event_cata"
		},
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_monks"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_monks"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
			end
		},
		{
			"flow_event",
			flow_event_name = "canyon_bell_event_done"
		}
	}

	TerrorEventBlueprints.bell.canyon_ogre_boss = {
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"spawn_at_raw",
			spawner_id = "canyon_ogre_boss",
			breed_name = "chaos_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_second_ogre",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			spawner_id = "canyon_ogre_boss",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_second_ogre",
			breed_name = "skaven_rat_ogre"
		},
		{
			"delay",
			duration = 40
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_monks"
		},
		{
			"delay",
			duration = 10
		}
	}

	TerrorEventBlueprints.bell.canyon_escape_event = {
		{
			"set_master_event_running",
			name = "canyon_escape_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "canyon_escape_event",
			composition_type = "onslaught_custom_specials_heavy_disabler"
		},
		{
			"event_horde",
			spawner_id = "canyon_escape_event",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_clan_rat_with_shield") < 8 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 3
			end
		}
	}

	---------------------
	--Fort Brachsenbr𣫥

	HordeCompositions.event_fort_pestilen = {
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					17,
					19
				},
				"skaven_clan_rat",
				{
					23,
					25
				},
				"skaven_plague_monk",
				{
					8,
					9
				}
			}
		}
	}

	HordeCompositions.event_fort_savagery = {
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					19,
					23
				},
				"chaos_marauder",
				{
					10,
					11
				},
				"chaos_berzerker",
				{
					6,
					7
				}
			}
		}
	}

	TerrorEventBlueprints.fort.fort_pacing_off = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		}
	}

	TerrorEventBlueprints.fort.fort_terror_event_climb = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_terror_event_climb"
		},
		{
			"event_horde",
			spawner_id = "terror_event_climb",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_terror_event_climb_done"
		}
	}

	TerrorEventBlueprints.fort.fort_terror_event_inner_yard_skaven = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_terror_event_inner_yard"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_slave") < 24 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 6 and count_event_breed("skaven_storm_vermin_commander") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_terror_event_inner_yard_done"
		}
	}

	TerrorEventBlueprints.fort.fort_terror_event_inner_yard_chaos = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_terror_event_inner_yard"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_marauder") < 10 and count_event_breed("chaos_marauder_with_shield") < 7
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_terror_event_inner_yard_done"
		}
	}

	TerrorEventBlueprints.fort.fort_horde_gate = {
		{
			"set_master_event_running",
			name = "fort_horde_gate"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "Fort_Big_SV",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				max_health_modifier = 2.5,
				size_variation_range = {
				    1.773,
				    1.774
				},
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_2",
			breed_name = "skaven_rat_ogre",
			optional_data = {
				enhancements = relentless
			}
		},
		{
			"delay",
			duration = 30
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("skaven_storm_vermin") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_gate_done"
		}
	}

	-- TerrorEventBlueprints.fort.fort_horde_cannon = {
		-- {
			-- "set_master_event_running",
			-- name = "fort_horde_cannon"
		-- },
		-- {
			-- "set_freeze_condition",
			-- max_active_enemies = 100
		-- },
		-- {
			-- "control_pacing",
			-- enable = false
		-- },
		-- {
			-- "control_specials",
			-- enable = false
		-- },
		-- {
			-- "event_horde",
			-- spawner_id = "fort_horde_cannon",
			-- composition_type = "event_fort_pestilen"
		-- },
		-- {
			-- "delay",
			-- duration = 5
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "siege_1",
			-- breed_name = "skaven_warpfire_thrower"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "siege_2",
			-- breed_name = "skaven_poison_wind_globadier"
		-- },
		-- {
			-- "delay",
			-- duration = {
				-- 5,
				-- 9
			-- }
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "siege_4",
			-- breed_name = "skaven_poison_wind_globadier"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "siege_6",
			-- breed_name = "skaven_ratling_gunner"
		-- },
		-- {
			-- "continue_when",
			-- condition = function (t)
				-- return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_plague_monk") < 6 and count_event_breed("skaven_poison_wind_globadier") < 4 and count_event_breed("skaven_warpfire_thrower") < 4 and count_event_breed("skaven_ratling_gunner") < 4
			-- end
		-- },
		-- {
			-- "delay",
			-- duration = 7
		-- },
		-- {
			-- "flow_event",
			-- flow_event_name = "fort_horde_cannon_done"
		-- }
	-- }

	TerrorEventBlueprints.fort.fort_horde_cannon_skaven = {
		{
			"set_master_event_running",
			name = "fort_horde_cannon"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "event_fort_pestilen"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "manual_special_spawners",
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_pack_master",
				"skaven_gutter_runner",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			},
		},
		{
			"delay",
			duration = 8
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_1",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_2",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = {
				5,
				9
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_4",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_6",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "fort_horde_cannon",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "manual_special_spawners",
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_pack_master",
				"skaven_gutter_runner",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			},
		},
		{
			"delay",
			duration = 30
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "fort_horde_cannon",
			composition_type = "event_fort_pestilen"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 6 and count_event_breed("skaven_poison_wind_globadier") < 10 and count_event_breed("skaven_warpfire_thrower") < 6 and count_event_breed("skaven_ratling_gunner") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_cannon_done"
		}
	}

	TerrorEventBlueprints.fort.fort_horde_cannon_chaos = {
		{
			"set_master_event_running",
			name = "fort_horde_cannon"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "event_fort_savagery"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"spawn_at_raw",
			spawner_id = "manual_special_spawners",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_gutter_runner",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_1",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_2",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = {
				5,
				9
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_4",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_6",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "fort_horde_cannon",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 20
		},
		{
			"spawn_at_raw",
			spawner_id = "manual_special_spawners",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_gutter_runner",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 45
		},
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "event_fort_savagery"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 15 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_warrior") < 4 and count_event_breed("skaven_poison_wind_globadier") < 10 and count_event_breed("skaven_warpfire_thrower") < 6 and count_event_breed("chaos_vortex_sorcerer") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_cannon_done"
		}
	}

	TerrorEventBlueprints.fort.fort_siegers = {
		{
			"set_master_event_running",
			name = "fort_siegers"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_1",
			breed_name = "skaven_stormfiend"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_2",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_3",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_4",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_5",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_6",
			breed_name = "chaos_marauder"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 2 and count_event_breed("chaos_raider") < 2 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2 and count_event_breed("skaven_stormfiend") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "siege_broken"
		}
	}

	---------------------
	--Into the Nest

	TerrorEventBlueprints.skaven_stronghold.stronghold_pacing_off = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	TerrorEventBlueprints.skaven_stronghold.stronghold_pacing_on = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	TerrorEventBlueprints.skaven_stronghold.stronghold_horde_water_wheels = {
		{
			"set_master_event_running",
			name = "stronghold_horde_water_wheels"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 8 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_storm_vermin") < 8 and count_breed("skaven_storm_vermin_commander") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "stronghold_horde_water_wheels_done"
		}
	}

	TerrorEventBlueprints.skaven_stronghold.stronghold_boss = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"disable_kick"
		},
		{
			"set_master_event_running",
			name = "stronghold_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "stronghold_boss",
			breed_name = "skaven_storm_vermin_warlord",
			optional_data = {
				max_health_modifier = 1.5,
				enhancements = enhancement_4
			}
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_warlord") == 1
			end
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_warlord") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "stronghold_boss_killed"
		},
		{
			"delay",
			duration = 8
		},

		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	HordeCompositions.stronghold_boss_event_defensive = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					5,
					7
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					15,
					20
				},
				"skaven_plague_monk",
				{
					6,
					8
				},
				"skaven_storm_vermin_with_shield",
				4,
			}
		},
		{
			name = "somevermin",
			weight = 4,
			breeds = {
				"skaven_clan_rat",
				{
					10,
					12
				},
				"skaven_clan_rat_with_shield",
				{
					22,
					24
				},
				"skaven_plague_monk",
				{
					9,
					10
				},
				"skaven_storm_vermin_with_shield",
				4,
			}
		}
	}

	HordeCompositions.stronghold_boss_trickle = {
		{
			name = "plain",
			weight = 8,
			breeds = {
				"skaven_slave",
				{
					8,
					10
				},
				"skaven_clan_rat",
				{
					7,
					8
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					6
				}
			}
		},
		{
			name = "plain",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					5,
					6
				},
				"skaven_clan_rat",
				{
					5,
					6
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					5
				},
				"skaven_storm_vermin_commander",
				3
			}
		}
	}

	HordeCompositions.stronghold_boss_initial_wave = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_storm_vermin",
				14,
				"skaven_plague_monk",
				8,
				"skaven_clan_rat",
				{
					15,
					17
				}
			}
		}
	}

	BreedActions.skaven_storm_vermin_warlord.spawn_allies.difficulty_spawn_list = {
			easy = {
				"skaven_storm_vermin"
			},
			normal = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			hard = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			survival_hard = {
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			harder = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			survival_harder = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			hardest = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vzermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			survival_hardest = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			}
	}

	BreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value = 800

	--See hooks for boss behaviour changes.

	---------------------
	--Against the Grain

	TerrorEventBlueprints.farmlands.farmlands_rat_ogre = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "skaven_rat_ogre",
			optional_data = {
				enhancements = enhancement_1
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"beastmen_minotaur",
				"chaos_troll"
			},
			optional_data = {
				enhancements = relentless
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("beastmen_minotaur") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_storm_fiend = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "skaven_rat_ogre",
			optional_data = {
				enhancements = enhancement_1
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"beastmen_minotaur",
				"chaos_troll"
			},
			optional_data = {
				enhancements = relentless
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("beastmen_minotaur") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_chaos_troll = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "chaos_troll",
			optional_data = {
				enhancements = enhancement_1
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_troll") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"beastmen_minotaur",
				"chaos_troll"
			},
			optional_data = {
				enhancements = relentless
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("beastmen_minotaur") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_chaos_spawn = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "beastmen_minotaur",
			optional_data = {
				enhancements = enhancement_1
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_spawn") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"beastmen_minotaur",
				"chaos_troll"
			},
			optional_data = {
				enhancements = relentless
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("beastmen_minotaur") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_spawn_guards = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"spawn_at_raw",
			spawner_id = "wall_guard_01",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "wall_guard_02",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "wall_guard_03",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_wall_guard_extra_1",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "windmill_guard",
			breed_name = "chaos_warrior"
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_01"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "event_large"
		},
		{
			"spawn_at_raw",
			spawner_id = "Against_the_Grain_1st_event",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function,
				size_variation_range = {
				    1.4,
				    1.45
				}
			}
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_specials_heavy_disabler"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 25 and count_event_breed("skaven_slave") < 50
			end
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "Against_the_Grain_1st_event",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function,
				size_variation_range = {
				    1.2,
				    1.25
				}
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 35 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			spawner_id = "hay_barn_back",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_back",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_specials_heavy_disabler"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 35 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "Against_the_Grain_1st_event",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function,
				size_variation_range = {
				    1.2,
				    1.25
				}
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_specials_heavy_disabler"
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 35 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_hay_barn_bridge_guards = {
		{
			"spawn_at_raw",
			spawner_id = "hay_barn_bridge_guards",
			breed_name = "chaos_warrior",
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_1",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_2",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function,
				size_variation_range = {
				    1.2,
				    1.25
				}
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_3",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_4",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_5",
			breed_name = "chaos_berzerker"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"set_time_challenge",
			time_challenge_name = "farmlands_speed_event"
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_hay_barn = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"disable_kick"
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_hay_barn"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "hay_barn_guards",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "hay_barn_manual_spawns",
			breed_name = "chaos_marauder"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_cellar_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_cellar_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_cellar_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_cellar_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_cellar_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "Against_the_Grain_2nd_event",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function,
				size_variation_range = {
				    1.2,
				    1.25
				}
			}
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "hay_barn_front_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_front_invis",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_front_invis",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_front_invis",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "hay_barn_interior",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 30 and count_event_breed("chaos_warrior") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "Against_the_Grain_2nd_event",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function,
				size_variation_range = {
				    1.4,
				    1.45
				}
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_storm_vermin_commander") < 16
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"spawn_at_raw",
			spawner_id = "Against_the_Grain_2nd_event",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function,
				size_variation_range = {
				    1.4,
				    1.45
				}
			}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 35,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 45 and count_event_breed("skaven_storm_vermin_commander") < 16 and count_event_breed("skaven_storm_vermin_with_shield") < 10
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_storm_vermin_commander") < 16
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_upper_square = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_upper_square"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "skaven_shields"
		},
		{
			"spawn_at_raw",
			spawner_id = "Against_the_Grain_2nd_event",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function,
				size_variation_range = {
				    1.4,
				    1.45
				}
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 30 and count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("chaos_marauder") < 30
			end
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_sawmill_door = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_sawmill_door"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_sawmill = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_sawmill"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_clan_rat_with_shield") < 30 and count_event_breed("skaven_slave") < 40
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_gate_open_event = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "farmlands_speed_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	---------------------
	--Empire in Flames

	TerrorEventBlueprints.ussingen.ussingen_gate_guards = {
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_1",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_2",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_3",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			spawner_id = "gate_spawner_1",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			spawner_id = "gate_spawner_2",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		}
	}

	TerrorEventBlueprints.ussingen.ussingen_payload_event_01 = {
		{
			"control_pacing",
			enable = false
		},
		{
			"disable_kick"
		},
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "ussingen_payload_event"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cart_guard_1",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cart_guard_2",
			breed_name = "chaos_warrior"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "ussingen_payload_start",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 12 and count_event_breed("chaos_raider") < 7 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 24 and count_event_breed("chaos_fanatic") < 26 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
			{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
			{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cart_guard_1",
			breed_name = "chaos_troll"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cart_guard_1",
			breed_name = "chaos_spawn"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cart_guard_2",
			breed_name = "chaos_troll"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 8 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 22 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_warrior") < 6
			end
		},
	}

	TerrorEventBlueprints.ussingen.ussingen_payload_event_loop_01 = {
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_small_chaos"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer",
				"skaven_poison_wind_globadier"
			},
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 6,
			difficulty_requirement = HARDER
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_medium_chaos",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_raider") < 16 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_marauder_with_shield") < 16
			end
		},
		{
			"flow_event",
			flow_event_name = "ussingen_payload_event_loop_done"
		}
	}

	TerrorEventBlueprints.ussingen.ussingen_payload_event_loop_02 = {
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_chaos_extra_spice_small",
			difficulty_requirement = HARDER
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer",
				"skaven_poison_wind_globadier"
			},
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_raider") < 16 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_marauder_with_shield") < 16
			end
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_maulers_medium"
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_raider") < 16 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_marauder_with_shield") < 16
			end
		},
		{
			"flow_event",
			flow_event_name = "ussingen_payload_event_loop_done"
		}
	}

	TerrorEventBlueprints.ussingen.ussingen_payload_event_loop_03 = {
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_pack_master",
				"skaven_gutter_runner"
			},
			difficulty_requirement = HARDER
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_vortex_sorcerer"
			},
			difficulty_requirement = CATACLYSM
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_raider") < 16 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_marauder_with_shield") < 16
			end
		},
		{
			"flow_event",
			flow_event_name = "ussingen_payload_event_loop_done"
		}
	}

	TerrorEventBlueprints.ussingen.ussingen_payload_event_loop_04 = {
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_chaos_extra_spice_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"chaos_vortex_sorcerer",
				"skaven_pack_master",
				"skaven_ratling_gunner"
			},
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 10
		},
		{
			duration = 15,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_raider") < 16 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_marauder_with_shield") < 16
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			duration = 15,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_raider") < 16 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_marauder_with_shield") < 16
			end
		},
		{
			"flow_event",
			flow_event_name = "ussingen_payload_event_loop_done"
		}
	}

	TerrorEventBlueprints.ussingen.ussingen_payload_event_02 = {
		{
			"control_pacing",
			enable = false
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "ussingen_payload_event"
		},
		{
			"delay",
			duration = 4
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"delay",
			duration = 12
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	TerrorEventBlueprints.ussingen.ussingen_gate_open_event = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "ussingen_gate_open",
			composition_type = "event_ussingen_gate_group"
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			spawner_id = "ussingen_mansion_garden_payload",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "ussingen_mansion_garden_payload",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 8
		},
		{
			"control_specials",
			enable = true
		}
	}

	HordeCompositions.event_ussingen_gate_group = {
		{
			name = "storm_slaves",
			weight = 1,
			breeds = {
				"skaven_slave",
				57,
				"skaven_clan_rat_with_shield",
				14,
				"skaven_storm_vermin_commander",
				{
					7,
					8
				}
			}
		}
	}

	TerrorEventBlueprints.ussingen.ussingen_escape = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "ussingen_escape"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_escape_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_escape_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_escape_event",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_escape_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_raider") < 6 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "ussingen_escape_restart"
		}
	}

	---------------------
	--Festering Ground

	TerrorEventBlueprints.nurgle.nurgle_end_event01 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 6) and count_event_breed("skaven_slave") < 6 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_storm_vermin_with_shield") < 10  and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 5) and count_event_breed("chaos_raider") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 5) and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_storm_vermin_with_shield") < 10 and count_event_breed("skaven_storm_vermin") < 10
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 10) and count_event_breed("skaven_slave") < 8 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 7) and count_event_breed("skaven_slave") < 7 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_storm_vermin_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 10) and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 10
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_monk",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 10 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 7) and count_event_breed("skaven_slave") < 7 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_storm_vermin_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event01_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_specials_01 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 7,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 9
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_specials_02 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 7,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 9
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_specials_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_specials_03 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 7,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 9
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_specials_done"
		}
	}

	--01 2 Denial 1 random
	--02 1 Denial 1 disabler 1 random
	--03 1 Denial 2 random
	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_01 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_marauder") < 7 and count_event_breed("chaos_warrior") < 5 and count_event_breed("chaos_raider") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_02 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_chaos_extra_spice_small"
		},
		{
			"spawn_at_raw",
			spawner_id = "Festering_loop_event_1",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function,
				size_variation_range = {
				    1.2,
				    1.25
				}
			}
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_marauder") < 7 and count_event_breed("chaos_warrior") < 5 and count_event_breed("chaos_raider") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_03 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "Festering_loop_event_1",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function,
				size_variation_range = {
				    1.2,
				    1.25
				}
			}
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_marauder") < 7 and count_event_breed("chaos_warrior") < 5 and count_event_breed("chaos_raider") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_04 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_marauder") < 7 and count_event_breed("chaos_warrior") < 5 and count_event_breed("chaos_raider") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_05 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "Festering_loop_event_2",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function,
				size_variation_range = {
				    1.2,
				    1.25
				}
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_marauder") < 7 and count_event_breed("chaos_warrior") < 5 and count_event_breed("chaos_raider") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_06 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_monk",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_monk",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_monk",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_marauder") < 7 and count_event_breed("chaos_warrior") < 5 and count_event_breed("chaos_raider") < 10 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_escape = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_large"
		},
		{
			"spawn_at_raw",
			spawner_id = "Festering_escape_event",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function,
				size_variation_range = {
				    1.2,
				    1.25
				}
			}
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_slave") < 30 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_escape_done"
		}
	}

	TerrorEventBlueprints.nurgle.nurgle_end_event_escape_02 = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_slave") < 30 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event02",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_slave") < 30 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_slave") < 30 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_escape_02_done"
		}
	}


	---------------------
	--Warcamp

	HordeCompositions.event_warcamp_elites = {
		{
			name = "zerker",
			weight = 3,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_berzerker",
				{
					4,
					5
				}
			}
		},
		{
			name = "mixed",
			weight = 2,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		},
		{
			name = "mauler",
			weight = 5,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_raider",
				{
					4,
					5
				}
			}
		},
	}

	TerrorEventBlueprints.warcamp.warcamp_payload = {
		{
			"set_master_event_running",
			name = "warcamp_payload"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_marauder") < 18 and count_event_breed("chaos_marauder_with_shield") < 18
			end
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 6
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_marauder") < 18 and count_event_breed("chaos_marauder_with_shield") < 18
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_maulers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_marauder") < 18 and count_event_breed("chaos_marauder_with_shield") < 18
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "chaos_warriors"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_marauder") < 18 and count_event_breed("chaos_marauder_with_shield") < 18
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_marauder") < 18 and count_event_breed("chaos_marauder_with_shield") < 18
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_medium"
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_marauder") < 18 and count_event_breed("chaos_marauder_with_shield") < 18
			end
		},
		{
			"flow_event",
			flow_event_name = "warcamp_payload"
		}
	}

	-- TerrorEventBlueprints.warcamp.warcamp_door_guard = {
		-- {
			-- "disable_kick"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_shield_dude_1",
			-- breed_name = "chaos_warrior"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_shield_dude_2",
			-- breed_name = "chaos_warrior"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_sword_dude_1",
			-- breed_name = "chaos_berzerker"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_sword_dude_2",
			-- breed_name = "chaos_berzerker"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_2h_dude_1",
			-- breed_name = "chaos_warrior"
		-- }
	-- }

	TerrorEventBlueprints.warcamp.warcamp_camp = {
		{
			"set_master_event_running",
			name = "warcamp_camp"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_specials",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_warcamp_elites"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_warcamp_elites"
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 10 and count_event_breed("chaos_raider") < 10 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 25) and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "warcamp_camp_restart"
		}
	}

	HordeCompositions.warcamp_boss_event_trickle = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_marauder",
				{
					6,
					8
				},
				"chaos_berzerker",
				{
					6,
					7
				}
			}
		},
		{
			name = "somevermin",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					6,
					8
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_berzerker",
				{
					5,
					6
				}
			}
		}
	}

	HordeCompositions.warcamp_boss_event_defensive = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_marauder",
				{
					9,
					12
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_berzerker",
				{
					5,
					6
				},
				"chaos_raider",
				{
					5,
					6
				},
				"chaos_warrior",
				{
					2,
					3
				}
			}
		},
		{
			name = "horde",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					25,
					31
				},
				"chaos_marauder",
				{
					10,
					11
				},
				"chaos_berzerker",
				{
					10,
					12
				}
			}
		},
		{
			name = "somevermin",
			weight = 2,
			breeds = {
				"chaos_warrior",
				{
					4,
					5
				},
				"chaos_berzerker",
				{
					6,
					7
				},
				"chaos_marauder_with_shield",
				{
					13,
					15
				}
			}
		}
	}

	TerrorEventBlueprints.warcamp.warcamp_chaos_boss = {
		{
			"set_master_event_running",
			name = "warcamp_chaos_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "warcamp_chaos_boss",
			breed_name = "chaos_exalted_champion_warcamp",
			optional_data = {
				max_health_modifier = 1.5,
				enhancements = enhancement_4
			}
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_warcamp") == 1
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top_behind",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top_left",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top_right",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_warcamp") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "warcamp_chaos_boss_dead"
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	--See hooks for warcamp boss behaviour changes.

	---------------------
	--Skittergate

	TerrorEventBlueprints.skittergate.skittergate_spawn_guards = {
		{
			"spawn_at_raw",
			spawner_id = "gate_guard_01",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "gate_guard_02",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_guard",
			breed_name = "skaven_storm_vermin_commander"
		}
	}

	TerrorEventBlueprints.skittergate.skittergate_chaos_boss = {
		{
			"set_master_event_running",
			name = "skittergate_chaos_boss"
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_1",
			composition_type = "onslaught_skittergate_warriors_one"
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_3",
			composition_type = "onslaught_skittergate_warriors_three"
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_2",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_2",
			composition_type = "onslaught_skittergate_warriors_two"
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_1",
			composition_type = "onslaught_skittergate_warriors_one"
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_3",
			composition_type = "onslaught_skittergate_warriors_three"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "skittergate_chaos_boss",
			breed_name = "chaos_exalted_champion_norsca"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_norsca") == 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_norsca") < 1 or count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"event_horde",
			spawner_id = "onslaught_zerker_gatekeeper",
			composition_type = "onslaught_skittergate_warriors_three"
		},
		{
			"event_horde",
			spawner_id = "onslaught_zerker_gatekeeper",
			composition_type = "onslaught_skittergate_zerker"
		},
		{
			"event_horde",
			spawner_id = "onslaught_zerker_gatekeeper",
			composition_type = "onslaught_skittergate_zerker"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_norsca") < 1
			end
		},
		{
			"delay",
			duration = 2
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_norsca") < 1 and count_event_breed("chaos_spawn_exalted_champion_norsca") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "skittergate_chaos_boss_killed"
		}
	}

	HordeCompositions.onslaught_skittergate_warriors_one = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_warrior",
				1,
			}
		}
	}

	HordeCompositions.onslaught_skittergate_warriors_two = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_warrior",
				2,
			}
		}
	}

	HordeCompositions.onslaught_skittergate_warriors_three = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_warrior",
				3,
			}
		}
	}

	HordeCompositions.onslaught_skittergate_zerker = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_berzerker",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					20,
					24
				},
				"chaos_raider",
				{
					3,
					4
				}
			}
		}
	}

	TerrorEventBlueprints.skittergate.skittergate_gatekeeper_marauders = {
		{
			"spawn_at_raw",
			spawner_id = "skittergate_gatekeeper_marauder_01",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "skittergate_gatekeeper_marauder_02",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "skittergate_gatekeeper_marauder_03",
			breed_name = "chaos_marauder_with_shield"
		}
	}

	TerrorEventBlueprints.skittergate.skittergate_terror_event_02 = {
		{
			"set_master_event_running",
			name = "skittergate_terror_event_02"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "terror_event_02",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "terror_event_02",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "terror_event_02",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 20 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12
			end
		},
		{
			"flow_event",
			flow_event_name = "skittergate_terror_event_02_done"
		}
	}

	BreedActions.skaven_grey_seer.ground_combat.spawn_allies_cooldown = 18

	BreedActions.skaven_grey_seer.ground_combat.staggers_until_teleport = 1
	BreedActions.skaven_grey_seer.ground_combat.warp_lightning_spell_cooldown = {
			2,
			2,
			2,
			2
	}

	BreedActions.skaven_grey_seer.ground_combat.vermintide_spell_cooldown = {
			4,
			4,
			4,
			4
	}

	BreedActions.skaven_grey_seer.ground_combat.teleport_spell_cooldown = {
			1.5,
			1.5,
			1.5,
			1.5
	}

	HordeCompositions.skittergate_boss_event_defensive = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_storm_vermin",
				{
					14,
					16
				},
				"skaven_clan_rat",
				{
					10,
					12
				},
				"skaven_clan_rat_with_shield",
				{
					7,
					9
				},
				"skaven_storm_vermin_with_shield",
				{
					3,
					5
				}
			}
		},
		{
			name = "somevermin",
			weight = 3,
			breeds = {
				"skaven_slave",
				{
					25,
					30
				},
				"skaven_storm_vermin",
				{
					10,
					12
				},
				"skaven_storm_vermin_with_shield",
				{
					1,
					2
				},
				"skaven_plague_monk",
				{
					8,
					10
				}

			}
		},
		{
			name = "berzerkers",
			weight = 3,
			breeds = {
				"skaven_plague_monk",
				{
					16,
					18
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					12
				},
				"skaven_storm_vermin_with_shield",
				1
			}
		},
		{
			name = "shield_vermins",
			weight = 8,
			breeds = {
				"skaven_storm_vermin_with_shield",
				{
					10,
					11
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					12
				},
				"skaven_storm_vermin",
				6,
			}
		}
	}

	HordeCompositions.skittergate_grey_seer_trickle = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					16,
					20
				},
				"skaven_clan_rat",
				{
					9,
					10
				},
				"skaven_clan_rat_with_shield",
				{
					6,
					8
				},
				"skaven_storm_vermin_commander",
				{
					8,
					9
				},
				"skaven_plague_monk",
				{
					7,
					8
				},
				"skaven_storm_vermin_with_shield",
				1
			}
		}
	}

	--See hooks for boss logic.

	---------------------
	--The Pit

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_pacing_off = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_pacing_off = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	HordeCompositions.chaos_elites = {
		{
			name = "zerker",
			weight = 1,
			breeds = {
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		},
		{
			name = "mauler",
			weight = 1,
			breeds = {
				"chaos_raider",
				{
					3,
					4
				}
			}
		}
	}

	HordeCompositions.slum_cw = {
		{
			name = "chaos_warrior",
			weight = 2,
			breeds = {
				"chaos_warrior",
					2
			}
		}
	}

	HordeCompositions.slum_specials = {
		{
			name = "leech",
			weight = 2,
			breeds = {
				"chaos_corruptor_sorcerer",
				3,
			}
		},
		{
			name = "warpfire",
			weight = 2,
			breeds = {
				"skaven_warpfire_thrower",
				3,
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"chaos_corruptor_sorcerer",
				2,
				"skaven_warpfire_thrower",
				1,
			}
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_start = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_event_start"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_left_01",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_right_01",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_right_01",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_right_01",
			composition_type = "slum_cw"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_slum_boss_event",
			breed_name = "chaos_troll",
			optional_data = {
				enhancements = enhancement_6
			}
		},
		{
			"delay",
			duration = 12
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_slum_event_start_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_left_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_left_01",
			composition_type = "chaos_elites"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_right_01",
			composition_type = "slum_cw"
		},
		{
			"delay",
			duration = 48
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_slum_event_loop_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_spice_mid = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "slum_specials"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "onslaught_custom_special_disabler"
		},
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_spice_left = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "event_maulers_medium"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_spice_right = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "event_maulers_medium"
		},
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_end_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("chaos_marauder_with_shield") + count_event_breed("chaos_marauder")) < 14
			end
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 20 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_slum_event_end_loop"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_gauntlet_part_01 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_gauntlet_master"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_special",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 2
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_special",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			breed_name = "skaven_pack_master"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_pack_master"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_pack_master"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_behind",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_behind",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_behind",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_special",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			breed_name = "skaven_pack_master"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_gauntlet_wall = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_gauntlet_master"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall_01",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall_01",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall_01",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall",
			composition_type = "onslaught_chaos_warriors"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_gauntlet_part_02 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_gauntlet_master"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_special",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 30
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and (count_event_breed("chaos_marauder_with_shield") + count_event_breed("chaos_marauder")) < 9 and count_event_breed("chaos_warrior") < 2 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and count_event_breed("skaven_slave") < 14 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_slum_gauntlet_part_02_done"
		}
	}

	---------------------
	--Blightreaper

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_disable_pacing = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_start = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_sewer_start"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "sewer_start",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"event_horde",
			spawner_id = "sewer_start",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "sewer_start",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "sewer_start",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "sewer_start",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_slave") < 18
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_start_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_spice = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_spice",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_spice",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_spice",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_spice",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_slave") < 18
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_spice_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_mid01 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_sewer_mid01"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "sewer_mid",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_large_chaos"
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 16 and count_event_breed("skaven_slave") < 25
			end
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			spawner_id = "sewer_rawspawner01",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_mid",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_mid",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_mid",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_mid",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "sewer_mid",
			composition_type = "event_small"
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 8 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 15
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_mid01_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_end = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_sewer_end"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_end_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 20 and count_event_breed("chaos_marauder_with_shield") < 20
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_end_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "sewer_mid",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_end_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_escape = {
		{
			"set_master_event_running",
			name = "bogenhafenhafen_sewer_escape"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_sewer_exit_gun_1",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_sewer_exit_gun_2",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_escape_done"
		}
	}

	HordeCompositions.onslaught_blightreaper_temple_easy = {
		{
			name = "skaven_offensive",
			weight = 1,
			breeds = {
				"skaven_storm_vermin_commander",
				{
					4,
					5
				},
				"skaven_plague_monk",
				{
					4,
					5
				}
			}
		},
		{
			name = "skaven_mixed",
			weight = 1,
			breeds = {
				"skaven_storm_vermin_with_shield",
				5,
				"skaven_plague_monk",
				{
					5,
					5
				}
			}
		},
		{
			name = "skaven_defensive",
			weight = 1,
			breeds = {
				"skaven_storm_vermin_with_shield",
				5,
				"skaven_storm_vermin_commander",
				{
					4,
					5
				}
			}
		},
		{
			name = "chaos_mixed",
			weight = 1,
			breeds = {
				"chaos_berzerker",
				{
					6,
					7
				},
				"chaos_marauder_with_shield",
				16,
			}
		},
		{
			name = "chaos_offensive",
			weight = 1,
			breeds = {
				"chaos_warrior",
				3,
				"chaos_raider",
				{
					5,
					6
				},
			}
		},
		{
			name = "chaos_zerg",
			weight = 1,
			breeds = {
				"chaos_warrior",
				3,
				"chaos_berzerker",
				{
					5,
					6
				},
			}
		},
		{
			name = "chaos_defensive",
			weight = 1,
			breeds = {
				"chaos_raider",
				{
					6,
					7
				},
				"chaos_marauder_with_shield",
				16,
			}
		},
		{
			name = "chaos_leader",
			weight = 1,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		}
	}

	HordeCompositions.onslaught_blightreaper_temple_hard = {
		{
			name = "chaos_defensive",
			weight = 1,
			breeds = {
				"chaos_warrior",
				6,
				"chaos_marauder_with_shield",
				{
					10,
					12
				}
			}
		},
		{
			name = "chaos_offensive",
			weight = 1,
			breeds = {
				"chaos_warrior",
				4,
				"chaos_raider",
				{
					5,
					6
				}
			}
		},
		{
			name = "chaos_zerg",
			weight = 1,
			breeds = {
				"chaos_warrior",
				4,
				"chaos_berzerker",
				{
					6,
					7
				}
			}
		},
		{
			name = "chaos_leader",
			weight = 1,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_raider",
				{
					4,
					6
				},
				"chaos_berzerker",
				{
					4,
					6
				}
			}
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_loop = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_loop"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_loop",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 30
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_plague_monk") < 5 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_warrior") < 3 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_gutter_runner") < 4 and count_event_breed("skaven_pack_master") < 4 and (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_ratling_gunner")) < 7
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 30
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_plague_monk") < 5 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_warrior") < 3 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_gutter_runner") < 4 and count_event_breed("skaven_pack_master") < 4 and (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_ratling_gunner")) < 7
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "storm_vermin_medium"
		},
		{
			"delay",
			duration = 30
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_plague_monk") < 5 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_warrior") < 3 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_gutter_runner") < 4 and count_event_breed("skaven_pack_master") < 4 and (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_ratling_gunner")) < 7
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_loop",
			composition_type = "event_medium_shield"
		},
		{
			"delay",
			duration = 30
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_plague_monk") < 5 and count_event_breed("chaos_fanatic") < 24 and count_event_breed("chaos_marauder") < 16 and count_event_breed("chaos_warrior") < 3 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_gutter_runner") < 4 and count_event_breed("skaven_pack_master") < 4 and (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_ratling_gunner")) < 7
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_loop_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_start = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_end_start"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"disable_kick"
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_start",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 35 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_marauder") < 26 and count_event_breed("chaos_marauder_with_shield") < 20 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"event_horde",
			spawner_id = "temple_event_start",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 35 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_marauder") < 26 and count_event_breed("chaos_marauder_with_shield") < 20 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_start_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button1 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button1"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button1",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_specials_heavy_disabler"
		},
		{
			"delay",
			duration = 30
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 35 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_marauder") < 26 and count_event_breed("chaos_marauder_with_shield") < 20 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_rawspawner01",
			breed_name = "skaven_rat_ogre",
			optional_data = {
				max_health_modifier = 0.6,
			    enhancements = enhancement_5
			}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 35 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_marauder") < 26 and count_event_breed("chaos_marauder_with_shield") < 20 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button1_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button2 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button2"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_rawspawner01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_rawspawner02",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 35 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_marauder") < 26 and count_event_breed("chaos_marauder_with_shield") < 20 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_window1",
			breed_name = "storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_hidden",
			breed_name = "storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_front4",
			breed_name = "storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_storm_vermin") < 8 and count_event_breed("skaven_slave") < 35 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_marauder") < 26 and count_event_breed("chaos_marauder_with_shield") < 20 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button2_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button3 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button3"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button3",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button3",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button3",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_window1",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_hidden",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_front4",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 35 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_marauder") < 26 and count_event_breed("chaos_marauder_with_shield") < 20 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"spawn_special",
			amount = 3,
			spawner_id = "temple_event_button3",
			breed_name = "chaos_corruptor_sorcerer"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_window1",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_hidden",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_front4",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button3",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 35 and count_event_breed("skaven_storm_vermin_with_shield") < 8 and count_event_breed("skaven_plague_monk") < 10 and count_event_breed("chaos_marauder") < 26 and count_event_breed("chaos_marauder_with_shield") < 20 and count_event_breed("chaos_raider") < 10 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button3_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button4 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button4"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button4",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_blightreaper_temple_hard"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_window2",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_hidden",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_front2",
			breed_name = "khorne_buff_spawn_function",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 24 and count_event_breed("chaos_marauder_with_shield") < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_blightreaper_temple_hard"
		},
		{
			"delay",
			duration = 5
		},
				{
			"spawn_at_raw",
			spawner_id = "onslaught_button_window2",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_hidden",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_front2",
			breed_name = "khorne_buff_spawn_function",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 24 and count_event_breed("chaos_marauder_with_shield") < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button4_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button5 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button5"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_rawspawner01",
			breed_name = "chaos_spawn",
			optional_data = {
				max_health_modifier = 0.75,
				enhancements = enhancement_5
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_button_hidden",
			breed_name = "chaos_spawn",
			optional_data = {
				max_health_modifier = 0.75,
				enhancements = enhancement_6
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "onslaught_blightreaper_temple_hard"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 24 and count_event_breed("chaos_marauder_with_shield") < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button5_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_escape = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_escape"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 24 and count_event_breed("chaos_marauder_with_shield") < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 24 and count_event_breed("chaos_marauder_with_shield") < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 24 and count_event_breed("chaos_marauder_with_shield") < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 24 and count_event_breed("chaos_marauder_with_shield") < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 24 and count_event_breed("chaos_marauder_with_shield") < 15 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 8 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button5_done"
		}
	}

	-------------------
	--Horn of Magnus

	HordeCompositions.onslaught_gutter_assistants = {
		{
			name = "monk",
			weight = 5,
			breeds = {
				"skaven_plague_monk",
				1
			}
		},
		{
			name = "shield",
			weight = 5,
			breeds = {
				"skaven_storm_vermin_with_shield",
				1
			}
		},
		{
			name = "pack",
			weight = 5,
			breeds = {
				"skaven_pack_master",
				1
			}
		},
		{
			name = "warpfire",
			weight = 2,
			breeds = {
				"skaven_warpfire_thrower",
				1
			}
		}
	}

	TerrorEventBlueprints.magnus.magnus_gutter_runner_treasure = {
		{
			"spawn_special",
			breed_name = "skaven_gutter_runner",
			amount = {
				2,
				3
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_gutterrunner_stinger"
		},
		{
			"event_horde",
			composition_type = "onslaught_gutter_assistants"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "gutter_runner_treasure_restart"
		}
	}

	TerrorEventBlueprints.magnus.magnus_door_a = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 12
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_magnus_boss_middle",
			breed_name = "skaven_rat_ogre",
			optional_data = {
				enhancements = shield_shatter
			}
		},
		{
			"delay",
			duration = 12
		},
		{
			"continue_when",
			duration = 10,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 12 and count_breed("chaos_fanatic") < 16 and count_breed("chaos_raider") < 6 and count_breed("chaos_berzerker") < 6
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			},
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "magnus_door_event_specials",
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	TerrorEventBlueprints.magnus.magnus_door_b = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_magnus_boss_middle",
			breed_name = "chaos_troll",
			optional_data = {
				enhancements = relentless
			}
		},
		{
			"delay",
			duration = 12
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn",
			{
				1,
				2
			},
			spawner_id = "magnus_door_event_specials",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	TerrorEventBlueprints.magnus.magnus_end_event = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_master_event_running",
			name = "magnus_end_event"
		},
		{
			"flow_event",
			flow_event_name = "magnus_horn_crescendo_starting"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn_first",
			composition_type = "event_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "magnus_end_event_first_wave_killed"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"disable_kick"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_fanatic") < 18 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"control_specials",
			enable = true
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 1
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_fanatic") < 18 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_magnus_boss_end",
			breed_name = "skaven_rat_ogre",
			optional_data = {
				enhancements = relentless
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_horn",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("skaven_plague_monk") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "magnus_horn_event_done"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_pacing",
			enable = true
		}
	}

	---------------------
	--Garden of Morr

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_1_a = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium",
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium",
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium",
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small",
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small",
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small",
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small",
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small",
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium",
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium",
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "cemetery_brew_event_specials",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
	}

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_1_b = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_poison_wind_globadier",
			amount = 3
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
	}

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_2_a = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_2",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_poison_wind_globadier",
			amount = 2
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_2",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "chaos_vortex_sorcerer",
			amount = 2
		},
		{
			"delay",
			duration = 5
		}
	}

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_2_b = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_2",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_2",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = slaanesh_buff_spawn_function
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "chaos_vortex_sorcerer",
			amount = 2
		},
		{
			"delay",
			duration = 5
		}
	}

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_3_a = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_3",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_3",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "skaven_warpfire_thrower",
			amount = 3
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_3",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		}
	}

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_3_b = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_ratling_gunner",
			amount = 3
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_3",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_3",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_3",
			breed_name = "skaven_storm_vermin",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
	}

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_4_a = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		}
	}

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_4_b = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		}
	}

	TerrorEventBlueprints.cemetery.cemetery_plague_brew_exit_event = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_4",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_4",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_chain_4",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		}
	}

	---------------------
	--Engines of War

	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_loop = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				2,
				4
			}
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_slave") < 12 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
			end
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_loop_restart"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_resistance_loop = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "forest_camp_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_camp_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			}
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				4,
				9
			}
		},
		{
			"spawn_special",
			amount = 2,
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			}
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 10 and count_event_breed("skaven_slave") < 24 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 16 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 10
			end
		},
		{
			"delay",
			duration = {
				13,
				17
			}
		},
		{
			"event_horde",
			spawner_id = "forest_camp_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_special",
			amount = 2,
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner"
			}
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				4,
				9
			}
		},
		{
			"spawn_special",
			amount = 2,
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"skaven_poison_wind_globadier",
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 10 and count_event_breed("skaven_slave") < 24 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 16 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 10
			end
		},
		{
			"delay",
			duration = {
				13,
				17
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_resistance_loop_restart"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_a = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 12
			end
		},
		{
			"delay",
			duration = {
				10,
				15
			}
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_a_done"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_b = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 12
			end
		},
		{
			"delay",
			duration = {
				10,
				15
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_b_done"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_c = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "skaven_shields"
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 10
			end
		},
		{
			"delay",
			duration = {
				10,
				15
			}
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "skaven_shields"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_c_done"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_finale = {
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"stop_event",
			stop_event_name = "forest_skaven_camp_resistance_loop"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_door_a",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_door_a",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_door_a",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_doomwheel_boss",
			breed_name = "skaven_rat_ogre",
			optional_data = {
			    enhancements = enhancement_5
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("skaven_stormfiend") < 1
			end
		},
		{
			"stop_master_event"
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_finale_done"
		},
		{
			"disable_bots_in_carry_event"
		},
		{
			"control_pacing",
			enable = true
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_end_event_loop = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"delay",
			duration = {
				10,
				15
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_loop_restart"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_end_event_a = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				6,
				9
			}
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				30,
				34
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_end_event_b = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = {
				40,
				45
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_end_event_c = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				38,
				42
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	}

	TerrorEventBlueprints.forest_ambush.forest_end_finale = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_custom_boss_minotaur"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	}

	---------------------
	--Dark Omens

	local horde_sound_settings = {
		skaven = {
			stinger_sound_event = "enemy_horde_stinger",
			music_states = {
				horde = "horde"
			}
		},
		chaos = {
			stinger_sound_event = "enemy_horde_chaos_stinger",
			music_states = {
				pre_ambush = "pre_ambush_chaos",
				horde = "horde_chaos"
			}
		},
		beastmen = {
			stinger_sound_event = "enemy_horde_beastmen_stinger",
			music_states = {
				pre_ambush = "pre_ambush_beastmen",
				horde = "horde_beastmen"
			}
		}
	}

	local function num_spawned_enemies()
		local spawned_enemies = Managers.state.conflict:spawned_units()

		return #spawned_enemies
	end

	local function num_alive_standards()
		local alive_standards = Managers.state.conflict:alive_standards()

		return #alive_standards
	end

	TerrorEventBlueprints.crater.crater_mid_event = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "crater_mid_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_01",
			composition_type = "onslaught_custom_boss_minotaur",
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_01",
			composition_type = "ungor_archers",
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_02",
			composition_type = "ungor_archers",
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("beastmen_minotaur") < 1 and count_breed("beastmen_ungor_archer") < 5
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_01",
			composition_type = "event_medium_beastmen",
			sound_settings = horde_sound_settings.beastmen
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_02",
			composition_type = "event_medium_beastmen",
			sound_settings = horde_sound_settings.beastmen
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("beastmen_gor") < 1 and count_breed("beastmen_ungor") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_mid_event_enable_gate"
		},
		{
			"delay",
			duration = 1
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "crater_mid_event_door_elite_02",
			composition_type = "crater_bestigor_medium",
			sound_settings = horde_sound_settings.beastmen
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("beastmen_bestigor") < 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"control_specials",
			enable = true
		},
		{
			"flow_event",
			flow_event_name = "crater_mid_event_done"
		}
	}

	TerrorEventBlueprints.crater.crater_end_event_manual_spawns = {
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_01",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_02",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_03",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_04",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_05",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_06",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_07",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_08",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_10",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_11",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_12",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_13",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_14",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_15",
			breed_name = "beastmen_bestigor"
		}
	}

	TerrorEventBlueprints.crater.crater_end_event_intro_wave = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "crater_end_event_intro_wave"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event_intro_wave",
			composition_type = "event_large_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event_intro_wave",
			composition_type = "event_large_beastmen"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 55,
			condition = function (t)
				return count_event_breed("beastmen_gor") < 4 and count_breed("beastmen_ungor") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_intro_wave_done"
		}
	}

	TerrorEventBlueprints.crater.crater_end_event_wave_01 = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "crater_end_event_wave_01"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return num_spawned_enemies() < 16
			end
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 10
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_medium_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_medium_beastmen"
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return num_alive_standards() < 1 and count_event_breed("beastmen_gor") < 8 and count_event_breed("beastmen_ungor") < 8
			end
		},
		{
			"spawn_at_raw",
			breed_name = "beastmen_minotaur",
			spawner_id = "event_minotaur"
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_01_done"
		}
	}

	TerrorEventBlueprints.crater.crater_end_event_wave_02 = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "crater_end_event_wave_02"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 14
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return num_spawned_enemies() < 20
			end
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 10
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return num_alive_standards() < 1 and count_event_breed("beastmen_gor") < 8 and count_event_breed("beastmen_ungor") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_02_done"
		}
	}

	TerrorEventBlueprints.crater.crater_end_event_wave_03 = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "crater_end_event_wave_03"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return num_spawned_enemies() < 20
			end
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 12
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "ungor_archers"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return num_alive_standards() < 1 and count_event_breed("beastmen_gor") < 8 and count_event_breed("beastmen_ungor") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_03_done"
		}
	}

	TerrorEventBlueprints.crater.crater_end_event_wave_04 = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "crater_end_event_wave_04"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return num_spawned_enemies() < 16
			end
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 12
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "ungor_archers"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "ungor_archers"
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_04_repeat"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return num_alive_standards() < 1 and count_event_breed("beastmen_gor") < 5 and count_event_breed("beastmen_ungor") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_04_done"
		}
	}

	TerrorEventBlueprints.crater.crater_end_event_minotaur = {
		{
			"spawn_at_raw",
			breed_name = "beastmen_minotaur",
			spawner_id = "event_minotaur",
			difficulty_requirement = HARD
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("beastmen_minotaur") == 2
			end
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("beastmen_minotaur") < 2
			end
		}
	}

	HordeCompositions.event_small_beastmen = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					13,
					14
				}
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"beastmen_ungor",
				{
					3,
					4
				},
				"beastmen_gor",
				{
					9,
					10
				}
			}
		}
	}

	HordeCompositions.event_medium_beastmen = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					16,
					17
				},
				"beastmen_ungor",
				{
					8,
					9
				}
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					7,
					8
				},
				"beastmen_ungor",
				{
					15,
					16
				}
			}
		}
	}

	HordeCompositions.event_large_beastmen = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					18,
					19
				},
				"beastmen_ungor",
				{
					16,
					17
				}
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					22,
					23
				},
				"beastmen_ungor",
				{
					14,
					15
				}
			}
		}
	}

	HordeCompositions.crater_bestigor_medium = {
		{
			name = "ambestigor",
			weight = 3,
			breeds = {
				"beastmen_bestigor",
				{
					9,
					10
				},
				"beastmen_standard_bearer",
				2
			}
		}
	}

	---------------------
	--Old Haunts

	TerrorEventBlueprints.dlc_portals.dlc_portals_control_pacing_disabled = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_temple_inside = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "dlc_portals_temple_inside"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_hordes",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 6
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 14 and count_event_breed("skaven_slave") < 14 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_portals_temple_inside_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_temple_inside_specials = {
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_haunts_ladder_left1",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_haunts_ladder_right1",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_temple_yard = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_temple_yard"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_special",
			spawner_id = "portals_temple_yard",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower"
			}
		},
		{
			"spawn_special",
			spawner_id = "portals_temple_yard",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower"
			}
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"delay",
			duration = 6
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 25 and count_event_breed("chaos_fanatic") < 30 and count_event_breed("chaos_raider") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_portals_temple_yard_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_temple_yard_exit = {
		{
			"spawn_at_raw",
			spawner_id = "portals_temple_yard_exit",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 18
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_hordes",
			enable = true
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_guards = {
		{
			"event_horde",
			spawner_id = "portals_end_event_guards",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_guards",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_guards",
			composition_type = "chaos_warriors"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_haunts_heads_stairs1",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_hordes",
			enable = false
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_a = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_event"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 5,
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 1,
			breed_name = {
				"skaven_poison_wind_globadier",
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_pack_master",
			spawner_id = "portals_end_event_specials",
			amount = 6,
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 15
			end
		},
		{
			"flow_event",
			flow_event_name = "portals_end_event_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_b = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_event"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 7
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 4,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower"
			}
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 2,
			breed_name = {
				"skaven_ratling_gunner"
			},
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_haunts_heads_basement",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = khorne_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 55,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_fanatic") < 14 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "portals_end_event_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_c = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_event"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_haunts_heads_basement",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_haunts_heads_entrance",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 4,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			},
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 3,
			breed_name = {
				"skaven_gutter_runner"
			},
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 55,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_plague_monk") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "portals_end_event_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_d = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_event"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 4
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 5,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_ratling_gunner"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "plague_monks_medium",
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_haunts_heads_stairs1",
			breed_name = "skaven_plague_monk",
			optional_data = {
				spawned_func = nurgle_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 55,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 15 and count_event_breed("chaos_fanatic") < 15 and count_event_breed("chaos_raider") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "portals_end_event_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_escape_specials = {
		{
			"event_horde",
			spawner_id = "portals_end_escape_specials",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_specials",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_specials",
			composition_type = "plague_monks_medium"
		},
		{
			"spawn_special",
			spawner_id = "portals_end_escape_specials",
			amount = 3,
			breed_name = {
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 4
		},
		{
			"spawn_special",
			spawner_id = "portals_end_escape_specials",
			amount = 3,
			breed_name = {
				"skaven_pack_master"
			}
		},
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_escape_a = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_escape"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_special",
			spawner_id = "portals_end_escape_specials",
			amount = 4,
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "plague_monks_medium"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_special",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "portals_end_escape_specials",
			amount = 1,
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_plague_monk") < 8 and count_event_breed("skaven_storm_vermin_with_shield") < 6
			end
		},
		{
			"delay",
			duration = {
				1,
				4
			}
		},
		{
			"flow_event",
			flow_event_name = "portals_end_escape_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_escape_b = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_escape"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "event_maulers_medium"
		},
		{
			"spawn_special",
			spawner_id = "portals_end_escape_specials",
			amount = 2,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_fanatic") < 12
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"spawn_special",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "portals_end_escape_specials",
			amount = 1,
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 15 and count_event_breed("chaos_fanatic") < 15 and count_event_breed("chaos_raider") < 6
			end
		},
		{
			"delay",
			duration = {
				1,
				4
			}
		},
		{
			"flow_event",
			flow_event_name = "portals_end_escape_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_end_escape_yard = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_escape_yard"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_haunts_heads_portal",
			breed_name = "chaos_spawn",
			optional_data = {
				enhancements = enhancement_7
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_fanatic") < 12
			end
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_raider") < 2
			end
		},
		{
			"delay",
			duration = {
				1,
				5
			}
		},
		{
			"flow_event",
			flow_event_name = "portals_end_escape_yard_done"
		}
	}

	-------------------
	--Blood in the Darkness

	TerrorEventBlueprints.dlc_bastion.bastion_gate_event = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "bastion_gate_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_hordes",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"delay",
			duration = 1
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "plague_monks_medium"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 25 and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_rat_ogre",
			spawner_id = "bastion_gate_event_special",
			optional_data = {
				enhancements = relentless
			}
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 24) and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "plague_monks_medium"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "bastion_gate_event_special",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 24) and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_large"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_medium_shield"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 24) and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 8
			end
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 24) and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 24) and count_event_breed("skaven_slave") < 32 and count_event_breed("skaven_storm_vermin_commander") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_medium_shield"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 14 and count_event_breed("chaos_warrior") < 10
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "chaos_warriors_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_stormfiend",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_spawn",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 20 and count_event_breed("chaos_fanatic") < 22 and count_event_breed("chaos_warrior") < 10
			end
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_troll",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_troll",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "chaos_warriors_small"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 7
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_fanatic") < 8 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_gate_event_done"
		}
	}

	TerrorEventBlueprints.dlc_bastion.bastion_finale_event = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "bastion_finale_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"delay",
			duration = 10
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = "chaos_warrior",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 16 and count_event_breed("skaven_slave") < 22 and count_event_breed("skaven_storm_vermin_commander") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "nngl_bastion_vo_sorcerer_taunt"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 16 and count_event_breed("skaven_slave") < 22 and count_event_breed("skaven_storm_vermin_commander") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "nngl_bastion_vo_sorcerer_taunt"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_medium_shield"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 16 and count_event_breed("skaven_slave") < 22 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 6
			end
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_small"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_small"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 16 and count_event_breed("skaven_slave") < 22 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 6 and count_event_breed("skaven_plague_monk") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "nngl_bastion_vo_sorcerer_taunt"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_medium_shield"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_pack_master",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_pack_master",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_pack_master",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
			optional_data = {
				spawned_func = tzeentch_buff_spawn_function
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_warpfire_thrower") < 3 and count_event_breed("skaven_warpfire_thrower") < 3 and count_event_breed("skaven_pack_master") < 3 and count_event_breed("skaven_poison_wind_globadier") < 3 and count_event_breed("skaven_gutter_runner") < 3
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_slave") < 28 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 6 and count_event_breed("skaven_plague_monk") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_vo_finale_tiring"
		},
		{
			"delay",
			duration = 3
		},
		{
			"flow_event",
			flow_event_name = "nngl_bastion_vo_sorcerer_taunt"
		},
		{
			"delay",
			duration = 3
		},
		{
			"flow_event",
			flow_event_name = "bastion_finale_event_boss"
		}
	}

	TerrorEventBlueprints.dlc_bastion.bastion_event_rat_ogre = {
		{
			"set_master_event_running",
			name = "bastion_event_boss"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_warrior") < 8 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_finale_event_escape"
		}
	}

	TerrorEventBlueprints.dlc_bastion.bastion_event_storm_fiend = {
		{
			"set_master_event_running",
			name = "bastion_event_boss"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_warrior") < 8 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_finale_event_escape"
		}
	}

	TerrorEventBlueprints.dlc_bastion.bastion_event_chaos_spawn = {
		{
			"set_master_event_running",
			name = "bastion_event_boss"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_warrior") < 8 and count_event_breed("chaos_raider") < 8 and count_event_breed("chaos_berzerker") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_finale_event_escape"
		}
	}

	TerrorEventBlueprints.dlc_bastion.bastion_finale_event_gauntlet = {
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_storm_vermin_white_medium"
		},
		{
			"delay",
			duration = 7
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	-----------------
	--Enchanter's lair

	TerrorEventBlueprints.dlc_castle.castle_catacombs_welcome_committee = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "catacombs_welcome_committee",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "catacombs_welcome_committee",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "catacombs_welcome_committee",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "catacombs_welcome_committee",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "catacombs_welcome_committee",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "catacombs_special_welcome",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "catacombs_special_welcome",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "catacombs_special_welcome",
			composition_type = "onslaught_chaos_warriors"
		}
	}

	TerrorEventBlueprints.dlc_castle.castle_chaos_boss = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"set_master_event_running",
			name = "castle_chaos_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "castle_chaos_boss",
			breed_name = "chaos_exalted_sorcerer_drachenfels"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_exalted_sorcerer_drachenfels") == 1
			end
		},
		{
			"flow_event",
			flow_event_name = "castle_chaos_boss_spawn"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_sorcerer_drachenfels") < 1
			end
		},
		{
			"control_specials",
			enable = true
		},
		{
			"flow_event",
			flow_event_name = "castle_chaos_boss_dead"
		}
	}

	TerrorEventBlueprints.dlc_castle.castle_catacombs_end_event_loop = {
		{
			"set_master_event_running",
			name = "escape_catacombs"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "escape_catacombs",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 18 and count_event_breed("skaven_slave") < 16
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "castle_catacombs_end_event_loop_done"
		}
	}

	TerrorEventBlueprints.dlc_castle.castle_catacombs_end_event_loop_extra_spice = {
		{
			"set_master_event_running",
			name = "escape_catacombs"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_escape_spice",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_escape_spice",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_escape_spice",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_storm_vermin_commander") < 6
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "castle_catacombs_end_event_loop_extra_spice_done"
		}
	}

	HordeCompositions.chaos_event_defensive = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					45,
					51
				},
				"chaos_marauder",
				{
					21,
					23
				},
				"chaos_marauder_with_shield",
				{
					22,
					24
				},
				"chaos_berzerker",
				{
					6,
					7
				}
			}
		},
		{
			name = "wave_b",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					20,
					24
				},
				"chaos_marauder_with_shield",
				{
					18,
					20
				},
				"chaos_raider",
				{
					4,
					5
				},
				"chaos_berzerker",
				{
					4,
					5
				},
				"chaos_warrior",
				2
			}
		},
		{
			name = "wave_c",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					22,
					23
				},
				"chaos_marauder_with_shield",
				{
					20,
					22
				},
				"chaos_raider",
				{
					23,
					25
				}
			}
		},
		{
			name = "wave_d",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					18,
					20
				},
				"chaos_berzerker",
				{
					23,
					25
				}
			}
		},
		{
			name = "wave_e",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					18,
					20
				},
				"chaos_marauder",
				{
					22,
					23
				},
				"chaos_marauder_with_shield",
				{
					20,
					25
				},
				"chaos_warrior",
				10
			}
		},
		end_time = 9999,
		start_time = 0
	}

	HordeCompositions.chaos_event_defensive_intense = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					45,
					51
				},
				"chaos_marauder",
				{
					25,
					27
				},
				"chaos_marauder_with_shield",
				{
					30,
					31
				},
				"chaos_berzerker",
				{
					8,
					9
				}
			}
		},
		{
			name = "wave_b",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					20,
					24
				},
				"chaos_marauder_with_shield",
				{
					30,
					32
				},
				"chaos_raider",
				{
					5,
					6
				},
				"chaos_berzerker",
				{
					5,
					6
				},
				"chaos_warrior",
				2
			}
		},
		{
			name = "wave_c",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					20,
					22
				},
				"chaos_raider",
				{
					25,
					27
				}
			}
		},
		{
			name = "wave_d",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					20,
					22
				},
				"chaos_marauder_with_shield",
				{
					20,
					22
				},
				"chaos_berzerker",
				{
					25,
					27
				}
			}
		},
		{
			name = "wave_e",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					18,
					20
				},
				"chaos_marauder",
				{
					22,
					24
				},
				"chaos_marauder_with_shield",
				15,
				"chaos_warrior",
				10
			}
		},
		end_time = 9999,
		start_time = 0
	}

	HordeCompositions.chaos_event_offensive_small = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					10,
					12
				},
				"chaos_fanatic",
				{
					8,
					10
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_berzerker",
				{
					2,
					3
				},
				"chaos_warrior",
				1
			}
		},
		end_time = 9999,
		start_time = 0
	}

	HordeCompositions.chaos_event_offensive = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					25,
					30
				},
				"chaos_fanatic",
				{
					25,
					30
				},
				"chaos_berzerker",
				8
			}
		},
		{
			name = "wave_b",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					25,
					30
				},
				"chaos_fanatic",
				{
					25,
					30
				},
				"chaos_raider",
				7
			}
		},
		end_time = 9999,
		start_time = 0
	}

	create_weights()

	mod:enable_all_hooks()

	mutator.active = true
end

mutator.stop = function()

	TerrorEventBlueprints = mutator.OriginalTerrorEventBlueprints
	--HordeCompositions = mutator.OriginalHordeCompositions
	--PackSpawningSettings = mutator.OriginalPackSpawningSettings
	--PacingSettings.default = mutator.OriginalPacingSettingsDefault
	--PacingSettings.chaos = mutator.OriginalPacingSettingsChaos
	--SpecialsSettings = mutator.OriginalSpecialsSettings
	--BossSettings = mutator.OriginalBossSettings
	RecycleSettings.push_horde_if_num_alive_grunts_above = mutator.OriginalRecycleSettings.push_horde_if_num_alive_grunts_above
	RecycleSettings.max_grunts = mutator.OriginalRecycleSettings.max_grunts

	BeastmenStandardTemplates.healing_standard.radius = 15
	UtilityConsiderations.beastmen_place_standard.distance_to_target.max_value = 10
	BuffTemplates.healing_standard.buffs = mutator.OriginalBeastmenBannerBuff

	BreedPacks.skaven_beastmen = mutator.OriginalBreedPacks.skaven_beastmen
	BreedPacks.chaos_beastmen = mutator.OriginalBreedPacks.chaos_beastmen
	BreedPacks.beastmen = mutator.OriginalBreedPacks.beastmen
	BreedPacks.beastmen_elites = mutator.OriginalBreedPacks.beastmen_elites
	BreedPacks.beastmen_light = mutator.OriginalBreedPacks.beastmen_light
	BreedPacks.standard = mutator.OriginalBreedPacks.standard
	BreedPacks.standard_no_elites = mutator.OriginalBreedPacks.standard_no_elites
	BreedPacks.skaven = mutator.OriginalBreedPacks.skaven
	BreedPacks.shield_rats = mutator.OriginalBreedPacks.shield_rats
	BreedPacks.plague_monks = mutator.OriginalBreedPacks.plague_monks
	BreedPacks.marauders_shields = mutator.OriginalBreedPacks.marauders_shields

	PackSpawningSettings.default.area_density_coefficient = mutator.OriginalPackSpawningSettings.default.area_density_coefficient
	PackSpawningSettings.default_light.area_density_coefficient = mutator.OriginalPackSpawningSettings.default_light.area_density_coefficient
	PackSpawningSettings.skaven.area_density_coefficient = mutator.OriginalPackSpawningSettings.skaven.area_density_coefficient
	PackSpawningSettings.skaven_light.area_density_coefficient = mutator.OriginalPackSpawningSettings.skaven_light.area_density_coefficient
	PackSpawningSettings.chaos.area_density_coefficient = mutator.OriginalPackSpawningSettings.chaos.area_density_coefficient
	PackSpawningSettings.chaos_light.area_density_coefficient = mutator.OriginalPackSpawningSettings.chaos_light.area_density_coefficient
	PackSpawningSettings.beastmen.area_density_coefficient = mutator.OriginalPackSpawningSettings.beastmen.area_density_coefficient
	PackSpawningSettings.skaven_beastmen.area_density_coefficient = mutator.OriginalPackSpawningSettings.skaven_beastmen.area_density_coefficient
	PackSpawningSettings.chaos_beastmen.area_density_coefficient = mutator.OriginalPackSpawningSettings.chaos_beastmen.area_density_coefficient
	PackSpawningSettings.beastmen_light.area_density_coefficient = mutator.OriginalPackSpawningSettings.beastmen_light.area_density_coefficient

	PackSpawningSettings.default.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.default.roaming_set.breed_packs_override
	PackSpawningSettings.default_light.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.default_light.roaming_set.breed_packs_override
	PackSpawningSettings.skaven.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.skaven.roaming_set.breed_packs_override
	PackSpawningSettings.skaven_light.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.skaven_light.roaming_set.breed_packs_override
	PackSpawningSettings.chaos.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.chaos.roaming_set.breed_packs_override
	PackSpawningSettings.chaos_light.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.chaos_light.roaming_set.breed_packs_override
	PackSpawningSettings.beastmen.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.beastmen.roaming_set.breed_packs_override
	PackSpawningSettings.skaven_beastmen.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.skaven_beastmen.roaming_set.breed_packs_override
	PackSpawningSettings.chaos_beastmen.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.chaos_beastmen.roaming_set.breed_packs_override
	PackSpawningSettings.beastmen_light.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.beastmen_light.roaming_set.breed_packs_override

	PackSpawningSettings.default.difficulty_overrides = mutator.OriginalPackSpawningSettings.default.difficulty_overrides
	PackSpawningSettings.skaven.difficulty_overrides = mutator.OriginalPackSpawningSettings.skaven.difficulty_overrides
	PackSpawningSettings.skaven_light.difficulty_overrides = mutator.OriginalPackSpawningSettings.skaven_light.difficulty_overrides
	PackSpawningSettings.chaos.difficulty_overrides = mutator.OriginalPackSpawningSettings.chaos.difficulty_overrides
	PackSpawningSettings.beastmen.difficulty_overrides = mutator.OriginalPackSpawningSettings.beastmen.difficulty_overrides
	PackSpawningSettings.skaven_beastmen.difficulty_overrides = mutator.OriginalPackSpawningSettings.skaven_beastmen.difficulty_overrides
	PackSpawningSettings.chaos_beastmen.difficulty_overrides = mutator.OriginalPackSpawningSettings.chaos_beastmen.difficulty_overrides

	PacingSettings.default.peak_fade_threshold = mutator.OriginalPacingSettingsDefault.peak_fade_threshold
	PacingSettings.default.peak_intensity_threshold = mutator.OriginalPacingSettingsDefault.peak_intensity_threshold
	PacingSettings.default.sustain_peak_duration = mutator.OriginalPacingSettingsDefault.sustain_peak_duration
	PacingSettings.default.relax_duration = mutator.OriginalPacingSettingsDefault.relax_duration
	PacingSettings.default.horde_frequency = mutator.OriginalPacingSettingsDefault.horde_frequency
	PacingSettings.default.multiple_horde_frequency = mutator.OriginalPacingSettingsDefault.multiple_horde_frequency
	PacingSettings.default.max_delay_until_next_horde = mutator.OriginalPacingSettingsDefault.max_delay_until_next_horde
	PacingSettings.default.horde_startup_time = mutator.OriginalPacingSettingsDefault.horde_startup_time

	PacingSettings.default.mini_patrol.only_spawn_above_intensity = mutator.OriginalPacingSettingsDefault.mini_patrol.only_spawn_above_intensity
	PacingSettings.default.mini_patrol.only_spawn_below_intensity = mutator.OriginalPacingSettingsDefault.mini_patrol.only_spawn_below_intensity
	PacingSettings.default.mini_patrol.frequency = mutator.OriginalPacingSettingsDefault.mini_patrol.frequency
	PacingSettings.default.difficulty_overrides = mutator.OriginalPacingSettingsDefault.difficulty_overrides

	PacingSettings.chaos.peak_fade_threshold = mutator.OriginalPacingSettingsChaos.peak_fade_threshold
	PacingSettings.chaos.peak_intensity_threshold = mutator.OriginalPacingSettingsChaos.peak_intensity_threshold
	PacingSettings.chaos.sustain_peak_duration = mutator.OriginalPacingSettingsChaos.sustain_peak_duration
	PacingSettings.chaos.relax_duration = mutator.OriginalPacingSettingsChaos.relax_duration
	PacingSettings.chaos.horde_frequency = mutator.OriginalPacingSettingsChaos.horde_frequency
	PacingSettings.chaos.multiple_horde_frequency = mutator.OriginalPacingSettingsChaos.multiple_horde_frequency
	PacingSettings.chaos.max_delay_until_next_horde = mutator.OriginalPacingSettingsChaos.max_delay_until_next_horde
	PacingSettings.chaos.horde_startup_time = mutator.OriginalPacingSettingsChaos.horde_startup_time
	PacingSettings.chaos.multiple_hordes = mutator.OriginalPacingSettingsChaos.multiple_hordes

	PacingSettings.chaos.mini_patrol.only_spawn_above_intensity = mutator.OriginalPacingSettingsChaos.mini_patrol.only_spawn_above_intensity
	PacingSettings.chaos.mini_patrol.only_spawn_below_intensity = mutator.OriginalPacingSettingsChaos.mini_patrol.only_spawn_below_intensity
	PacingSettings.chaos.mini_patrol.frequency = mutator.OriginalPacingSettingsChaos.mini_patrol.frequency
	PacingSettings.chaos.difficulty_overrides = mutator.OriginalPacingSettingsChaos.difficulty_overrides

	PacingSettings.beastmen.peak_fade_threshold = mutator.OriginalPacingSettingsBeastmen.peak_fade_threshold
	PacingSettings.beastmen.peak_intensity_threshold = mutator.OriginalPacingSettingsBeastmen.peak_intensity_threshold
	PacingSettings.beastmen.sustain_peak_duration = mutator.OriginalPacingSettingsBeastmen.sustain_peak_duration
	PacingSettings.beastmen.relax_duration = mutator.OriginalPacingSettingsBeastmen.relax_duration
	PacingSettings.beastmen.horde_frequency = mutator.OriginalPacingSettingsBeastmen.horde_frequency
	PacingSettings.beastmen.multiple_horde_frequency = mutator.OriginalPacingSettingsBeastmen.multiple_horde_frequency
	PacingSettings.beastmen.max_delay_until_next_horde = mutator.OriginalPacingSettingsBeastmen.max_delay_until_next_horde
	PacingSettings.beastmen.horde_startup_time = mutator.OriginalPacingSettingsBeastmen.horde_startup_time

	PacingSettings.beastmen.mini_patrol.only_spawn_above_intensity = mutator.OriginalPacingSettingsBeastmen.mini_patrol.only_spawn_above_intensity
	PacingSettings.beastmen.mini_patrol.only_spawn_below_intensity = mutator.OriginalPacingSettingsBeastmen.mini_patrol.only_spawn_below_intensity
	PacingSettings.beastmen.mini_patrol.frequency = mutator.OriginalPacingSettingsBeastmen.mini_patrol.frequency
	PacingSettings.beastmen.difficulty_overrides = mutator.OriginalPacingSettingsBeastmen.difficulty_overrides

	HordeCompositionsPacing.small = mutator.OriginalHordeCompositionsPacing.small
	HordeCompositionsPacing.medium = mutator.OriginalHordeCompositionsPacing.medium
	HordeCompositionsPacing.large = mutator.OriginalHordeCompositionsPacing.large
	HordeCompositionsPacing.huge = mutator.OriginalHordeCompositionsPacing.huge
	HordeCompositionsPacing.huge_shields = mutator.OriginalHordeCompositionsPacing.huge_shields
	HordeCompositionsPacing.huge_armor = mutator.OriginalHordeCompositionsPacing.huge_armor
	HordeCompositionsPacing.huge_berzerker = mutator.OriginalHordeCompositionsPacing.huge_berzerker
	HordeCompositionsPacing.chaos_medium = mutator.OriginalHordeCompositionsPacing.chaos_medium
	HordeCompositionsPacing.chaos_large = mutator.OriginalHordeCompositionsPacing.chaos_large
	HordeCompositionsPacing.chaos_huge = mutator.OriginalHordeCompositionsPacing.chaos_huge
	HordeCompositionsPacing.chaos_huge_shields = mutator.OriginalHordeCompositionsPacing.chaos_huge_shields
	HordeCompositionsPacing.chaos_huge_armor = mutator.OriginalHordeCompositionsPacing.chaos_huge_armor
	HordeCompositionsPacing.chaos_huge_berzerker = mutator.OriginalHordeCompositionsPacing.chaos_huge_berzerker
	HordeCompositionsPacing.beastmen_medium = mutator.OriginalHordeCompositionsPacing.beastmen_medium
	HordeCompositionsPacing.beastmen_large = mutator.OriginalHordeCompositionsPacing.beastmen_large
	HordeCompositionsPacing.beastmen_huge = mutator.OriginalHordeCompositionsPacing.beastmen_huge
	HordeCompositionsPacing.beastmen_huge_armor = mutator.OriginalHordeCompositionsPacing.beastmen_huge_armor

	SpecialsSettings.default.max_specials = mutator.OriginalSpecialsSettings.default.max_specials
	SpecialsSettings.default_light.max_specials = mutator.OriginalSpecialsSettings.default_light.max_specials
	SpecialsSettings.skaven.max_specials = mutator.OriginalSpecialsSettings.skaven.max_specials
	SpecialsSettings.skaven_light.max_specials = mutator.OriginalSpecialsSettings.skaven_light.max_specials
	SpecialsSettings.chaos.max_specials = mutator.OriginalSpecialsSettings.chaos.max_specials
	SpecialsSettings.chaos_light.max_specials = mutator.OriginalSpecialsSettings.chaos_light.max_specials
	SpecialsSettings.beastmen.max_specials = mutator.OriginalSpecialsSettings.beastmen.max_specials
	SpecialsSettings.skaven_beastmen.max_specials = mutator.OriginalSpecialsSettings.skaven_beastmen.max_specials
	SpecialsSettings.chaos_beastmen.max_specials = mutator.OriginalSpecialsSettings.chaos_beastmen.max_specials
	PacingSettings.default.delay_specials_threat_value = mutator.OriginalPacingSettingsDefault.delay_specials_threat_value
	PacingSettings.chaos.delay_specials_threat_value = mutator.OriginalPacingSettingsChaos.delay_specials_threat_value
	PacingSettings.beastmen.delay_specials_threat_value = mutator.OriginalPacingSettingsBeastmen.delay_specials_threat_value
	SpecialsSettings.default.methods.specials_by_slots = mutator.OriginalSpecialsSettings.default.methods.specials_by_slots
	SpecialsSettings.default_light.methods.specials_by_slots = mutator.OriginalSpecialsSettings.default_light.methods.specials_by_slots
	SpecialsSettings.skaven.methods.specials_by_slots = mutator.OriginalSpecialsSettings.skaven.methods.specials_by_slots
	SpecialsSettings.skaven_light.methods.specials_by_slots = mutator.OriginalSpecialsSettings.skaven_light.methods.specials_by_slots
	SpecialsSettings.chaos.methods.specials_by_slots = mutator.OriginalSpecialsSettings.chaos.methods.specials_by_slots
	SpecialsSettings.chaos_light.methods.specials_by_slots = mutator.OriginalSpecialsSettings.chaos_light.methods.specials_by_slots
	SpecialsSettings.beastmen.methods.specials_by_slots = mutator.OriginalSpecialsSettings.beastmen.methods.specials_by_slots
	SpecialsSettings.skaven_beastmen.methods.specials_by_slots = mutator.OriginalSpecialsSettings.skaven_beastmen.methods.specials_by_slots
	SpecialsSettings.chaos_beastmen.methods.specials_by_slots = mutator.OriginalSpecialsSettings.chaos_beastmen.methods.specials_by_slots

	SpecialsSettings.default.difficulty_overrides = mutator.OriginalSpecialsSettings.default.difficulty_overrides
	SpecialsSettings.default_light.difficulty_overrides = mutator.OriginalSpecialsSettings.default_light.difficulty_overrides
	SpecialsSettings.skaven.difficulty_overrides = mutator.OriginalSpecialsSettings.skaven.difficulty_overrides
	SpecialsSettings.skaven_light.difficulty_overrides = mutator.OriginalSpecialsSettings.skaven_light.difficulty_overrides
	SpecialsSettings.chaos.difficulty_overrides = mutator.OriginalSpecialsSettings.chaos.difficulty_overrides
	SpecialsSettings.chaos_light.difficulty_overrides = mutator.OriginalSpecialsSettings.chaos_light.difficulty_overrides
	SpecialsSettings.beastmen.difficulty_overrides = mutator.OriginalSpecialsSettings.beastmen.difficulty_overrides
	SpecialsSettings.skaven_beastmen.difficulty_overrides = mutator.OriginalSpecialsSettings.skaven_beastmen.difficulty_overrides
	SpecialsSettings.chaos_beastmen.difficulty_overrides = mutator.OriginalSpecialsSettings.chaos_beastmen.difficulty_overrides

	for name, value in pairs(mutator.OriginalThreatValue) do
		Breeds[name].threat_value = value
	end

	Managers.state.conflict:set_threat_value("skaven_rat_ogre", mutator.OriginalThreatValue["skaven_rat_ogre"])
	Managers.state.conflict:set_threat_value("skaven_stormfiend", mutator.OriginalThreatValue["skaven_stormfiend"])
	Managers.state.conflict:set_threat_value("chaos_spawn", mutator.OriginalThreatValue["chaos_spawn"])
	Managers.state.conflict:set_threat_value("chaos_troll", mutator.OriginalThreatValue["chaos_troll"])
	Managers.state.conflict:set_threat_value("beastmen_minotaur", mutator.OriginalThreatValue["beastmen_minotaur"])

	BossSettings.default.boss_events.events = mutator.OriginalBossSettings.default.boss_events.events
	BossSettings.default_light.boss_events.events = mutator.OriginalBossSettings.default_light.boss_events.events
	BossSettings.skaven.boss_events.events = mutator.OriginalBossSettings.skaven.boss_events.events
	BossSettings.skaven_light.boss_events.events = mutator.OriginalBossSettings.skaven_light.boss_events.events
	BossSettings.chaos.boss_events.events = mutator.OriginalBossSettings.chaos.boss_events.events
	BossSettings.chaos_light.boss_events.events = mutator.OriginalBossSettings.chaos_light.boss_events.events
	BossSettings.beastmen.boss_events.events = mutator.OriginalBossSettings.beastmen.boss_events.events
	BossSettings.skaven_beastmen.boss_events.events = mutator.OriginalBossSettings.skaven_beastmen.boss_events.events
	BossSettings.chaos_beastmen.boss_events.events = mutator.OriginalBossSettings.chaos_beastmen.boss_events.events
	BossSettings.beastmen_light.boss_events.events = mutator.OriginalBossSettings.beastmen_light.boss_events.events

	HordeCompositions.event_smaller = mutator.OriginalHordeCompositions.event_smaller
	HordeCompositions.event_small = mutator.OriginalHordeCompositions.event_small
	HordeCompositions.event_medium = mutator.OriginalHordeCompositions.event_medium
	HordeCompositions.event_large = mutator.OriginalHordeCompositions.event_large
	HordeCompositions.event_small_chaos = mutator.OriginalHordeCompositions.event_small_chaos
	HordeCompositions.event_medium_chaos = mutator.OriginalHordeCompositions.event_medium_chaos
	HordeCompositions.event_large_chaos = mutator.OriginalHordeCompositions.event_large_chaos
	HordeCompositions.event_extra_spice_small = mutator.OriginalHordeCompositions.event_extra_spice_small
	HordeCompositions.event_extra_spice_medium = mutator.OriginalHordeCompositions.event_extra_spice_medium
	HordeCompositions.event_extra_spice_large = mutator.OriginalHordeCompositions.event_extra_spice_large

	HordeCompositions.military_end_event_chaos_01 = mutator.OriginalHordeCompositions.military_end_event_chaos_01
	HordeCompositions.military_end_event_berzerkers = mutator.OriginalHordeCompositions.military_end_event_berzerkers
	HordeCompositions.event_ussingen_gate_group = mutator.OriginalHordeCompositions.event_ussingen_gate_group

	table.remove(BreedBehaviors.chaos_exalted_sorcerer[7], 2)
	HordeCompositions.sorcerer_boss_event_defensive = mutator.OriginalHordeCompositions.sorcerer_boss_event_defensive
	HordeCompositions.sorcerer_extra_spawn = mutator.OriginalHordeCompositions.sorcerer_extra_spawn

	BreedActions.skaven_storm_vermin_warlord.spawn_allies.difficulty_spawn_list = mutator.OriginalBreedActions.skaven_storm_vermin_warlord.spawn_allies.difficulty_spawn_list
	BreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value = mutator.OriginalBreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value
	HordeCompositions.stronghold_boss_event_defensive = mutator.OriginalHordeCompositions.stronghold_boss_event_defensive
	HordeCompositions.stronghold_boss_trickle = mutator.OriginalHordeCompositions.stronghold_boss_trickle

	HordeCompositions.warcamp_boss_event_trickle = mutator.OriginalHordeCompositions.warcamp_boss_event_trickle
	HordeCompositions.warcamp_boss_event_defensive = mutator.OriginalHordeCompositions.warcamp_boss_event_defensive

	BreedActions.skaven_grey_seer.ground_combat.spawn_allies_cooldown = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.spawn_allies_cooldown
	BreedActions.skaven_grey_seer.ground_combat.staggers_until_teleport = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.staggers_until_teleport
	BreedActions.skaven_grey_seer.ground_combat.warp_lightning_spell_cooldown = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.warp_lightning_spell_cooldown
	BreedActions.skaven_grey_seer.ground_combat.vermintide_spell_cooldown = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.vermintide_spell_cooldown
	BreedActions.skaven_grey_seer.ground_combat.teleport_spell_cooldown = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.teleport_spell_cooldown
	HordeCompositions.skittergate_grey_seer_trickle = mutator.OriginalHordeCompositions.skittergate_grey_seer_trickle
	HordeCompositions.skittergate_boss_event_defensive = mutator.OriginalHordeCompositions.skittergate_boss_event_defensive
	Breeds.skaven_storm_vermin.primary_armor_category = nil
	Breeds.skaven_storm_vermin.max_health = BreedTweaks.max_health.stormvermin
	Breeds.skaven_storm_vermin.hit_mass_counts = BreedTweaks.hit_mass_counts.stormvermin
	Breeds.skaven_storm_vermin.bloodlust_health = BreedTweaks.bloodlust_health.skaven_elite
	Breeds.skaven_storm_vermin.size_variation_range = { 1.1, 1.175 }
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 0
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 30
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 0
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 5

	---------------------

	create_weights()

	mod:disable_all_hooks()

	mutator.active = false
end

local JOIN_MESSAGE = "Dense Onslaught Active"

mod:hook(MatchmakingManager, "rpc_matchmaking_request_join_lobby", function (func, self, channel_id, lobby_id, friend_join, client_dlc_unlocked_array)
	local peer_id = CHANNEL_TO_PEER_ID[channel_id]

	if mutator.active then
		mod:chat_whisper(peer_id, JOIN_MESSAGE)
	end

	return func(self, channel_id, lobby_id, friend_join, client_dlc_unlocked_array)
end)

mod:network_register("rpc_enable_white_sv", function (sender, enable)
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 31
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 31
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 1
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 1
end)

mod:network_register("rpc_disable_white_sv", function (sender, enable)
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 0
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 30
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 0
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 5
end)

mod:hook_safe("ChatManager", "_add_message_to_list", function (self, channel_id, message_sender, local_player_id, message, is_system_message, pop_chat, is_dev, message_type, link, data)
	if message == JOIN_MESSAGE and not mutator.active then
		mod:network_send("rpc_enable_white_sv", "local", true)
	end
end)

mod.on_user_joined = function (player)
	if mutator.active then
		mod:network_send("rpc_enable_white_sv", player.peer_id, mutator.active)
	end
end

mutator.toggle = function()
	if Managers.state.game_mode == nil or (Managers.state.game_mode._game_mode_key ~= "inn" and Managers.player.is_server) then
		mod:echo("You must be in the keep to do that!")
		return
	end
	if Managers.matchmaking:_matchmaking_status() ~= "idle" then
		mod:echo("You must cancel matchmaking before toggling this.")
		return
	end
	if not mutator.active then
		if not Managers.player.is_server then
			mod:echo("You must be the host to activate this.")
			return
		end
		mutator.start()
		mod:network_send("rpc_enable_white_sv", "all", true)

		mod:chat_broadcast("Dense Onslaught ENABLED.")
	else
		mutator.stop()
		mod:network_send("rpc_disable_white_sv", "all", true)

		mod:chat_broadcast("Dense Onslaught DISABLED.")
	end
end


--[[
	Callback
--]]
-- Call when game state changes (e.g. StateLoading -> StateIngame)
mod.on_game_state_changed = function(status, state)
	if not Managers.player.is_server and mutator.active and Managers.state.game_mode ~= nil then
		mutator.stop()
		mod:echo("The Dense Onslaught mutator was disabled because you are no longer the server.")
	end
	return
end

--[[
	Execution
--]]
mod:command("dense_onslaught", "Toggle Dense Onslaught. Must be host and in the keep.", function() mutator.toggle() end)
if not mutator.active then
	mod:disable_all_hooks()
end
