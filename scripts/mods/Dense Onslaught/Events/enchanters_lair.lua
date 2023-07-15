local mod = get_mod("Dense Onslaught")

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
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_slave") < 10
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
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_storm_vermin_commander") < 3
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
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					22,
					24
				},
				"chaos_berzerker",
				{
					3,
					4
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
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_raider",
				{
					15,
					17
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
					10,
					12
				},
				"chaos_berzerker",
				{
					15,
					17
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
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_warrior",
				8
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
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					22,
					24
				},
				"chaos_berzerker",
				{
					3,
					4
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
					10,
					12
				},
				"chaos_raider",
				{
					15,
					17
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
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_berzerker",
				{
					15,
					17
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
					13,
					14
				},
				"chaos_marauder_with_shield",
				7,
				"chaos_warrior",
				8
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
					11
				},
				"chaos_fanatic",
				{
					4,
					5
				}
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
					15,
					17
				},
				"chaos_fanatic",
				{
					15,
					17
				},
				"chaos_berzerker",
				3
			}
		},
		{
			name = "wave_b",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_fanatic",
				{
					15,
					17
				},
				"chaos_raider",
				3
			}
		},
		end_time = 9999,
		start_time = 0
	}
