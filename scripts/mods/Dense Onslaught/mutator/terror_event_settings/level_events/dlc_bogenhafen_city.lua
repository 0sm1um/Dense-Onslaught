local dlc_bogenhafen_city = {}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_disable_pacing = {
    {
        "text",
        text = "",
        duration = 0
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_sewer_start = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_sewer_start"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {	
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "event_horde",
        spawner_id = "sewer_start",
        composition_type = "dense_event_medium"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stingers_plague_monk"
    },
    {
        "event_horde",
        spawner_id = "sewer_start",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "event_horde",
        spawner_id = "onslaught_sewer_backspawn",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        spawner_id = "onslaught_sewer_backspawn",
        composition_type = "onslaught_event_small_fanatics"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 4
        end
    },
    {
        "delay",
        duration = 20
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_sewer_start_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_sewer_spice = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "sewer_spice",
        composition_type = "event_extra_spice_unshielded"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "sewer_spice",
        composition_type = "onslaught_storm_vermin_shields_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 4
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_sewer_spice_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_sewer_mid01 = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_sewer_mid01"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "event_horde",
        spawner_id = "sewer_mid",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        spawner_id = "onslaught_sewer_backspawn",
        composition_type = "dense_event_large_chaos"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 8 and count_event_breed("skaven_slave") < 15
        end
    },
    {
        "delay",
        duration = 2
    },
    {
        "spawn_at_raw",
        spawner_id = "sewer_rawspawner01",
        breed_name = "skaven_warpfire_thrower"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "sewer_mid",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "sewer_mid",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stingers_plague_monk"
    },
    {
        "event_horde",
        spawner_id = "onslaught_sewer_backspawn",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "sewer_mid",
        composition_type = "dense_event_small"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_plague_monk") < 2 and count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 2 and count_event_breed("skaven_slave") < 3
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_sewer_mid01_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_sewer_end = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_sewer_end"
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
        spawner_id = "onslaught_sewer_backspawn",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "sewer_end_chaos",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 10 and count_event_breed("chaos_marauder_with_shield") < 10
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "sewer_end_chaos",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        spawner_id = "sewer_mid",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "delay",
        duration = 10
    },
    {
        "control_specials",
        enable = true
    },
    {
        "control_pacing",
        enable = true
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_sewer_end_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_sewer_escape = {
    {
        "set_master_event_running",
        name = "bogenhafenhafen_sewer_escape"
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
        spawner_id = "sewer_escape",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_sewer_exit_gun_1",
        breed_name = {
            "skaven_ratling_gunner",
            "skaven_warpfire_thrower"
        }
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_sewer_exit_gun_2",
        breed_name = {
            "skaven_ratling_gunner",
            "skaven_warpfire_thrower"
        }
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_sewer_escape_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_temple_loop = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_temple_loop"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_loop",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "spawn_at_raw",
        spawner_id = "temple_rawspawner01",
        breed_name = {
            "skaven_poison_wind_globadier",
            "skaven_ratling_gunner",
            "skaven_warpfire_thrower",
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button5",
        composition_type = "dense_event_small_chaos"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 7 and count_event_breed("skaven_slave") < 8 and count_event_breed("skaven_storm_vermin_commander") < 2 and count_event_breed("chaos_fanatic") < 6 and count_event_breed("chaos_marauder") < 4 and count_event_breed("skaven_gutter_runner") < 2 and count_event_breed("skaven_pack_master") < 2 and (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_ratling_gunner")) < 4
        end
    },
    {
        "delay",
        duration = 12
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_temple_loop_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_temple_start = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_end_start"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "disable_kick"
    },
    {
        "control_specials",
        enable = false
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_start",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_special_disabler"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_special_disabler"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "temple_event_start",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_temple_start_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_temple_button1 = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_temple_button1"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button1",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_specials_heavy_denial"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button2",
        composition_type = "event_extra_spice_unshielded"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button4",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_temple_button1_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_temple_button2 = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_temple_button2"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button2",
        composition_type = "dense_event_medium"
    },
    {
        "spawn_at_raw",
        spawner_id = "temple_rawspawner01",
        breed_name = "skaven_ratling_gunner"
    },
    {
        "spawn_at_raw",
        spawner_id = "temple_rawspawner02",
        breed_name = "skaven_ratling_gunner"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button2",
        composition_type = "event_extra_spice_unshielded"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button4",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_temple_button2_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_temple_button3 = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_temple_button3"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stingers_plague_monk"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button3",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button3",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button3",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "spawn_special",
        amount = 3,
        spawner_id = "temple_event_button3",
        breed_name = "chaos_corruptor_sorcerer"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        spawner_id = "temple_event_button3",
        composition_type = "onslaught_blightreaper_temple_easy"
    },
    {
        "event_horde",
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_specials_heavy_denial"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_temple_button3_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_temple_button4 = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_temple_button4"
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
        spawner_id = "temple_event_button4",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button4",
        composition_type = "onslaught_blightreaper_temple_hard"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button4",
        composition_type = "onslaught_blightreaper_temple_hard"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button5",
        composition_type = "onslaught_blightreaper_temple_hard"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_special_denial"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_special_denial"
    },
    {
        "delay",
        duration = 10
    },		
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_temple_button4_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_temple_button5 = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_temple_button5"
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
        spawner_id = "temple_event_button5",
        composition_type = "onslaught_custom_boss_spawn"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button5",
        composition_type = "onslaught_custom_boss_spawn"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button5",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button5",
        composition_type = "onslaught_blightreaper_temple_hard"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "temple_event_button2",
        composition_type = "onslaught_custom_specials_heavy_denial"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2 and count_event_breed("chaos_spawn") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_temple_button5_done"
    }
}

dlc_bogenhafen_city.dense_dlc_bogenhafen_city_temple_escape = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_city_temple_escape"
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
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "dense_event_large_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "temple_event_escape",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_city_temple_button5_done"
    }
}

return dlc_bogenhafen_city