local mod = get_mod("Dense Onslaught")

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
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_at_raw",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
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
		}
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
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
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
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		}
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
			"spawn_at_raw",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
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
			"spawn_at_raw",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
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
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"spawn_at_raw",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
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
			"spawn_at_raw",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
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
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_white_medium"
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
		}
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
			"spawn_at_raw",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
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
			"spawn_at_raw",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
		},
		{
			"event_horde",
			composition_type = "onslaught_storm_vermin_white_medium"
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
			"spawn_at_raw",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1
			end,
			spawner_id = "onslaught_cemetery_entrance",
			breed_name = "skaven_stormfiend"
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
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		}
	}
