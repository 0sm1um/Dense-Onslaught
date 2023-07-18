local mod = get_mod("Dense Onslaught")

	-- Empire in Flames

	require("scripts/mods/Dense Onslaught/Events/event_wave_composition")

	TerrorEventBlueprints.ussingen.ussingen_gate_guards = {
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_1",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_2",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_3",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "gate_spawner_1",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "gate_spawner_2",
			breed_name = "chaos_warrior"
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
}

table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_super_armor)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_berzerker)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_maulers)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_maulers)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_berzerker)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_light_super_armor)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_maulers)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_maulers)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_berzerker)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_light_super_armor)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_low_threshold_continue_chaos)


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
