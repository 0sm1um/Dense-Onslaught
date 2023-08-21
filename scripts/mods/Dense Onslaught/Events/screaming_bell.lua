local mod = get_mod("Dense Onslaught")

require("scripts/mods/Dense Onslaught/Events/event_wave_composition")

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
}

	table.merge(TerrorEventBlueprints.bell.canyon_bell_event, dn_specials_enabled_and_pacing_disabled)
	table.merge(TerrorEventBlueprints.bell.canyon_bell_event, dn_skaven_light)
	table.merge(TerrorEventBlueprints.bell.canyon_bell_event, dn_high_threshold_continue_skaven)

	TerrorEventBlueprints.bell.canyon_ogre_boss = {
		{
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_second_ogre",
			breed_name = "chaos_troll"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_at_raw",
			spawner_id = "canyon_ogre_boss",
			breed_name = "skaven_rat_ogre"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "dn_mixed_super_armor"
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
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = true
		},
	}

	table.merge(TerrorEventBlueprints.bell.canyon_escape_event, dn_skaven_disabler_loop)
	table.merge(TerrorEventBlueprints.bell.canyon_escape_event, dn_low_threshold_continue_skaven)

