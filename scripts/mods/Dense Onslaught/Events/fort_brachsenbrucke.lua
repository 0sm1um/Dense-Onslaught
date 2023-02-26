local mod = get_mod("Dense Onslaught")
	
--Fort Brachshit
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
