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
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_berzerker)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_maulers)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_maulers)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_berzerker)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_light_super_armor)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_maulers)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_maulers)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_heavy_berzerker)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_chaos_light_super_armor)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, dn_ratling_guns)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_01, mod.continue_when_condition_chaos(5, 80))

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
}

table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_02, dn_chaos_stinger)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_02, dn_chaos_crescendo)
table.merge(TerrorEventBlueprints.ussingen.ussingen_payload_event_02, dn_specials_and_pacing_enabled)
	
	TerrorEventBlueprints.ussingen.ussingen_gate_open_event = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
	}

table.merge(TerrorEventBlueprints.ussingen.ussingen_gate_open_event, dn_skaven_trash)
table.merge(TerrorEventBlueprints.ussingen.ussingen_gate_open_event, dn_skaven_trash)
table.merge(TerrorEventBlueprints.ussingen.ussingen_gate_open_event, dn_skaven_berzerker)
table.merge(TerrorEventBlueprints.ussingen.ussingen_gate_open_event, dn_specials_and_pacing_enabled)

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
	}

	table.merge(TerrorEventBlueprints.ussingen.ussingen_escape, dn_chaos_trash)
	table.merge(TerrorEventBlueprints.ussingen.ussingen_escape, dn_chaos_elites)
	table.merge(TerrorEventBlueprints.ussingen.ussingen_escape, dn_chaos_trash)
	table.merge(TerrorEventBlueprints.ussingen.ussingen_escape, dn_low_threshold_continue_chaos)
	table.merge(TerrorEventBlueprints.ussingen.ussingen_escape, {{"flow_event", flow_event_name = "ussingen_escape_restart"}})
