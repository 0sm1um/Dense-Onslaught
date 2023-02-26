local mod = get_mod("Dense Onslaught")
	
	--Athel Yenlui
	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_time_challenge",
			time_challenge_name = "elven_ruins_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "elven_ruins_speed_event_cata"
		},
		{
			"set_master_event_running",
			name = "ruins_end_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"disable_kick"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_small"
		},
		{
			"continue_when",
			duration = 10,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = {
				2,
				3
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 35,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 25,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 30 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_clan_rat_with_shield") < 20 and count_event_breed("skaven_storm_vermin_commander") < 9 and count_event_breed("skaven_storm_vermin_with_shield") < 9
			end
		}
	}

	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event_flush = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "elven_ruins_speed_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = {
				1,
				2
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_ogre"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_stormfiend"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_ogre"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		}
	}

	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event_device_fiddlers = {
		{
			"control_specials",
			enable = false
		},
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_1",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_2",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_3",
			breed_name = "skaven_clan_rat"
		}
	}

