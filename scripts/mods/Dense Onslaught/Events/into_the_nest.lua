local mod = get_mod("Dense Onslaught")

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
