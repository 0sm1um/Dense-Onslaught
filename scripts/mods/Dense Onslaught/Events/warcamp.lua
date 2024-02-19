local mod = get_mod("Dense Onslaught")

	--Warcamp
	-- Ons+ Event

	HordeCompositions.event_warcamp_elites = {
		{
			name = "warrior",
			weight = 5,
			breeds = {
				"chaos_warrior",
				4
			}
		},
		{
			name = "zerker",
			weight = 3,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_berzerker",
				{
					4,
					6
				}
			}
		},
		{
			name = "mixed",
			weight = 2,
			breeds = {
				"chaos_warrior",
				3,
				"chaos_raider",
				{
					2,
					3
				}
			}
		}
	}
	
	HordeCompositions.event_ram_elites = {
		{
			name = "mauler",
			weight = 5,
			breeds = {
				"chaos_warrior",
				1,
				"chaos_raider",
				{
					2,
					3
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_warrior",
				1,
				"chaos_berzerker",
				{
					4,
					5
				}
			}
		},
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"chaos_warrior",
				1,
				"chaos_raider",
				{
					1,
					2
				},
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		}
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
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
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
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 12
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
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
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
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
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
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
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
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
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
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
		},			
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "warcamp_payload"
		}
	}
	
	TerrorEventBlueprints.warcamp.warcamp_door_guard = {
		{
			"disable_kick"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_shield_dude_1",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_shield_dude_2",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_sword_dude_1",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_sword_dude_2",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_2h_dude_1",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_left",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_right",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_top_left",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_top_right",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_boss",
			breed_name = "chaos_troll",
			breed_name = "chaos_spawn",
			optional_data = { 
				max_health_modifier = 0.4
			}	
			
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
			"spawn_special",
			breed_name = "chaos_corruptor_sorcerer",
		},
		{
			"spawn_special",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_pack_master",
				"skaven_poison_wind_globadier"
			}
		},		
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_warcamp_elites"
		},
		{
			"delay",
			duration = 8
		},
		{
			"spawn_special",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_gutter_runner",
				"skaven_pack_master"
			}
		},	
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 15) and count_event_breed("chaos_warrior") < 3
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
					1,
					2
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
					1,
					2
				},
				"chaos_berzerker",
				{
					1,
					2
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
					9,
					12
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_warrior",
				{
					1,
					2
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
					7,
					9
				},
				"chaos_berzerker",
				{
					4,
					5
				}
			}
		},
		{
			name = "somevermin",
			weight = 2,
			breeds = {
				"chaos_warrior",
				{
					3,
					4
				},
				"chaos_marauder",
				{
					6,
					7
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
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
			breed_name = "chaos_exalted_champion_warcamp"
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
			composition_type = "onslaught_event_chaos_elite_adds_small"
		},	
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top_behind",
			composition_type = "onslaught_event_chaos_elite_adds_small"
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
			composition_type = "onslaught_event_chaos_adds_small"
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


	--[[
	HordeCompositions.event_warcamp_elites = {
		{
			name = "warrior",
			weight = 5,
			breeds = {
				"chaos_warrior",
				4
			}
		},
		{
			name = "zerker",
			weight = 3,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_berzerker",
				{
					4,
					6
				}
			}
		},
		{
			name = "mixed",
			weight = 2,
			breeds = {
				"chaos_warrior",
				3,
				"chaos_raider",
				{
					2,
					3
				}
			}
		}
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
			composition_type = "onslaught_chaos_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 12
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
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
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
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
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
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_warcamp_elites"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 15) and count_event_breed("chaos_warrior") < 3
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
					1,
					2
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
					1,
					2
				},
				"chaos_berzerker",
				{
					1,
					2
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
					9,
					12
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_warrior",
				{
					1,
					2
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
					7,
					9
				},
				"chaos_berzerker",
				{
					4,
					5
				}
			}
		},
		{
			name = "somevermin",
			weight = 2,
			breeds = {
				"chaos_warrior",
				{
					3,
					4
				},
				"chaos_marauder",
				{
					6,
					7
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				}
			}
		}
	}
	-- See hooks for Bodvar logic.
--]]