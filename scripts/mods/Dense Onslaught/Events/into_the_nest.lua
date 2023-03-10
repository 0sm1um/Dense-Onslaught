local mod = get_mod("Dense Onslaught")

	--Into the Nest
	BreedActions.skaven_storm_vermin_warlord.spawn_allies.spawn_list = {
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_plague_monk",
				"skaven_plague_monk",
				"skaven_plague_monk",
				"skaven_plague_monk",
				"skaven_pack_master",
				"skaven_ratling_gunner"
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
				"skaven_storm_vermin"
			},
			survival_harder = {
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			hardest = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			survival_hardest = {
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin_with_shield",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_plague_monk",
				"skaven_plague_monk",
				"skaven_plague_monk",
				"skaven_plague_monk",
				"skaven_pack_master",
				"skaven_ratling_gunner"
			}
	}
	
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
				return count_event_breed("skaven_slave") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2
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
			breed_name = "skaven_storm_vermin_warlord"
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
					10
				},
				"skaven_clan_rat",
				{
					15,
					20
				},
				"skaven_clan_rat_with_shield",
				{
					8,
					10
				},
				"skaven_plague_monk",
				{
					6,
					8
				},
				"skaven_storm_vermin_with_shield",
				2,
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
					10,
					12
				},
				"skaven_plague_monk",
				{
					9,
					10
				},
				"skaven_storm_vermin_with_shield",
				{
					2,
					2
				}
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
					5,
					6
				},
				"skaven_clan_rat",
				{
					5,
					7
				},
				"skaven_clan_rat_with_shield",
				{
					2,
					3
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
					7
				},
				"skaven_clan_rat_with_shield",
				{
					2,
					3
				},
				"skaven_storm_vermin",
				{
				1,
				1
				}
			}
		}
	}
	
	HordeCompositions.stronghold_boss_initial_wave = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_storm_vermin",
				10,
				"skaven_plague_monk",
				6,
				"skaven_clan_rat",
				{
					8,
					12
				}
			}
		}
	}

	--See hooks for Skarrik behaviour changes
	BreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value = 800
