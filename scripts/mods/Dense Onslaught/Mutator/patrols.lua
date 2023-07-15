local mod = get_mod("Dense Onslaught")

	--[[
	There are two prevailing design principles for the patrols in this mod:
	Patrols should be approximatly equal in difficulty.
	Patrols should not be so long that they become totally unavoidable on large numbers of maps.
	
	With this in mind, I've tried to ensure that each patrol has similar amounts of super armor,
	berzerkers, and elites.
	
	I consider Dutch white SV patrols to be the most balanced, so using that as a baseline I tried
	to design Chaos Patrols and Beastmen patrols of equivilant difficulty.
	
	As a result, Chaos Patrols have been "nerfed". Since Beastmen are rather bland to fight,
	Beastmen patrols have included both Skaven and Chaos units to bolster their numbers.
	--]]

	GenericTerrorEvents.boss_event_beastmen_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard",
				"storm_vermin_two_column",
				"chaos_warrior_default"
			}
		}
	}

	GenericTerrorEvents.boss_event_skaven_beastmen_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard",
				"storm_vermin_two_column",
				"chaos_warrior_default"
			}
		}
	}
	GenericTerrorEvents.boss_event_chaos_beastmen_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard",
				"storm_vermin_two_column",
				"chaos_warrior_default"
			}
		}
	}
	GenericTerrorEvents.boss_event_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard",
				"storm_vermin_two_column",
				"chaos_warrior_default"
			}
		}
	}
	GenericTerrorEvents.boss_event_skaven_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard",
				"storm_vermin_two_column",
				"chaos_warrior_default"
			}
		}
	}
	GenericTerrorEvents.boss_event_chaos_spline_patrol = {
		{
			"spawn_patrol",
			patrol_template = "spline_patrol",
			formations = {
				"beastmen_standard",
				"storm_vermin_two_column",
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
		-- Patrol Composition Changed From Dutch
		cataclysm = {
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
				"chaos_marauder_with_shield",
				"chaos_marauder_with_shield"
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
				"chaos_berzerker",
				"chaos_berzerker"
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
			}
		}
	}
	-- Patrol Composition Changed From Dutch
	PatrolFormationSettings.storm_vermin_two_column = {
		settings = {
			extra_breed_name = {
								"skaven_storm_vermin_with_shield",
								"skaven_plague_monk"
								},
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
		-- Patrol Composition Changed From Dutch
		cataclysm = {
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_plague_monk",
				"skaven_plague_monk"
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
				"skaven_plague_monk",
				"skaven_plague_monk"
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
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_plague_monk",
				"skaven_plague_monk"
			},
			{
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			{
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield"
			}
		}
	}
	-- Patrol Composition Changed From Dutch
	PatrolFormationSettings.beastmen_standard = {
		settings = {
			extra_breed_name = {
								"skaven_storm_vermin_with_shield",
								"skaven_storm_vermin",
								"skaven_plague_monk",
								"chaos_warrior",
								"chaos_raider",
								"chaos_berzerker"
								},
			use_controlled_advance = true,
			sounds = {
				PLAYER_SPOTTED = "beastmen_patrol_player_spotted",
				FORMING = "beastmen_patrol_forming",
				FOLEY = "beastmen_patrol_foley",
				FORMATED = "beastmen_patrol_formated",
				FORMATE = "beastmen_patrol_formate",
				CHARGE = "beastmen_patrol_charge",
				VOICE = "beastmen_patrol_voice"
			},
			offsets = PatrolFormationSettings.default_settings.offsets,
			speeds = PatrolFormationSettings.default_settings.speeds
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
		-- Patrol Composation Changed From Dutch
		cataclysm = {
			{
				"beastmen_bestigor",
				"beastmen_bestigor"
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
			}
		}
	}
