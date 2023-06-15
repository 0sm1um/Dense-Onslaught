local military = {}

military.dense_military_courtyard_event_01 = {
    {
        "set_master_event_running",
        name = "military_courtyard"
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
        spawner_id = "courtyard_hidden",
        composition_type = "dense_event_large_chaos"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 20 and count_event_breed("chaos_fanatic") < 26
        end
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "courtyard",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "courtyard",
        composition_type = "event_extra_spice_unshielded"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 27 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_slave") < 40
        end
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "courtyard_hidden",
        composition_type = "onslaught_event_military_courtyard_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "courtyard_hidden",
        composition_type = "onslaught_event_military_courtyard_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "onslaught_courtyard_roof_middle",
        composition_type = "onslaught_custom_boss_random_no_fiend_no_troll"
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "courtyard",
        composition_type = "dense_event_small"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 15,
        condition = function (t)
            return count_event_breed("skaven_plague_monk") < 10
        end
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "courtyard_hidden",
        composition_type = "dense_event_large_chaos"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 24 and count_event_breed("chaos_fanatic") < 32
        end
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "courtyard",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "courtyard",
        composition_type = "event_extra_spice_unshielded"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 30 and count_event_breed("skaven_storm_vermin_commander") < 10 and count_event_breed("skaven_slave") < 40 and count_event_breed("skaven_plague_monk") < 12
        end
    },
    {
        "flow_event",
        flow_event_name = "military_courtyard_event_done"
    }
}

military.dense_military_courtyard_event_02 = table.clone(military.dense_military_courtyard_event_01)

military.dense_military_courtyard_event_specials_01 = {
    {
        "set_master_event_running",
        name = "military_courtyard"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "courtyard_hidden",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "courtyard",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "delay",
        duration = 15
    },
    {
        "flow_event",
        flow_event_name = "military_courtyard_event_specials_done"
    }
}

military.dense_military_courtyard_event_specials_02 = {
    {
        "set_master_event_running",
        name = "military_courtyard"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_left",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_right",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_left",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_right",
        composition_type = "onslaught_storm_vermin_medium"
    },	
    {
        "delay",
        duration = 15
    },
    {
        "flow_event",
        flow_event_name = "military_courtyard_event_specials_done"
    }
}

military.dense_military_courtyard_event_specials_03 = {
    {
        "set_master_event_running",
        name = "military_courtyard"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_left",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_left",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_right",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "onslaught_courtyard_roof_left",
        composition_type = "skaven_shields"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "onslaught_courtyard_roof_right",
        composition_type = "skaven_shields"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "onslaught_courtyard_roof_right",
        composition_type = "skaven_shields"
    },
    {
        "delay",
        duration = 15
    },
    {
        "flow_event",
        flow_event_name = "military_courtyard_event_specials_done"
    }
}

military.dense_military_courtyard_event_specials_04 = {
    {
        "set_master_event_running",
        name = "military_courtyard"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_left",
        composition_type = "onslaught_custom_specials_heavy_denial"
    },
    {
        "delay",
        duration = 15
    },
    {
        "flow_event",
        flow_event_name = "military_courtyard_event_specials_done"
    }
}

military.dense_military_courtyard_event_specials_05 = {
    {
        "set_master_event_running",
        name = "military_courtyard"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_courtyard_roof_right",
        composition_type = "onslaught_custom_specials_heavy_disabler"
    },		
    {
        "delay",
        duration = 15
    },
    {
        "flow_event",
        flow_event_name = "military_courtyard_event_specials_done"
    }
}

military.dense_military_temple_guards = {
    {
        "disable_kick"
    },
    {
        "spawn_at_raw",
        spawner_id = "temple_guards02",
        breed_name = "chaos_raider"
    },
    {
        "spawn_at_raw",
        spawner_id = "temple_guards05",
        breed_name = "chaos_marauder_with_shield"
    },
    {
        "spawn_at_raw",
        spawner_id = "temple_guards06",
        breed_name = "chaos_raider"
    },
    {
        "spawn_at_raw",
        spawner_id = "temple_guards07",
        breed_name = "chaos_marauder_with_shield"
    },
    {
        "spawn_at_raw",
        spawner_id = "temple_guards09",
        breed_name = "chaos_warrior"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "onslaught_temple_guard_assault",
        composition_type = "onslaught_military_mauler_assault"
    }
}

military.dense_military_end_event_survival_start = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "disable_kick"
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
        limit_spawners = 8,
        spawner_id = "end_event_start",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        spawner_id = "end_event_start",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "onslaught_storm_vermin_white_medium"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_custom_boss_troll"
    },
    {
        "delay",
        duration = 1
    },
    {
        "continue_when",
        duration = 25,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 25 and count_event_breed("skaven_clan_rat_with_shield") < 24 and count_event_breed("skaven_slave") < 30 and count_event_breed("skaven_storm_vermin_commander") < 10
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_start_done"
    }
}

military.dense_military_end_event_survival_01_back = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "military_end_event_chaos_01"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_01_done"
    }
}

military.dense_military_end_event_survival_01_right = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_right",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_right_hidden",
        composition_type = "military_end_event_chaos_01"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_01_done"
    }
}

military.dense_military_end_event_survival_02_left = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_left",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_left",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_left",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_left_hidden",
        composition_type = "military_end_event_chaos_01"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_02_done"
    }
}

military.dense_military_end_event_survival_02_right = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_right",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_right",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_right",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_right_hidden",
        composition_type = "military_end_event_chaos_01"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_02_done"
    }
}

military.dense_military_end_event_survival_02_middle = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_middle",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_middle",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_middle",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "military_end_event_chaos_01"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_02_done"
    }
}

military.dense_military_end_event_survival_02_back = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "military_end_event_chaos_01"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_02_done"
    }
}

military.dense_military_end_event_survival_03_left = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_left_hidden",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_left",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_03_done"
    }
}

military.dense_military_end_event_survival_03_right = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_right",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_right",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_right",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return(count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_03_done"
    }
}

military.dense_military_end_event_survival_03_middle = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_middle",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_middle",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_middle",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_03_done"
    }
}

military.dense_military_end_event_survival_03_back = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_03_done"
    }
}

military.dense_military_end_event_survival_04_left = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_left_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_left",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_04_done"
    }
}

military.dense_military_end_event_survival_04_right = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_right_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_right",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_04_done"
    }
}

military.dense_military_end_event_survival_04_middle = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_back_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_middle",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_04_done"
    }
}

military.dense_military_end_event_survival_04_back = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_back_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_04_done"
    }
}

military.dense_military_end_event_survival_05_left = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_left",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "end_event_left",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_plague_monks_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_05_done"
    }
}

military.dense_military_end_event_survival_05_right = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_right",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "end_event_right",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_right_hidden",
        composition_type = "onslaught_plague_monks_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_right_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_right_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_05_done"
    }
}

military.dense_military_end_event_survival_05_middle = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_middle",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "end_event_middle",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_plague_monks_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_05_done"
    }
}

military.dense_military_end_event_survival_05_back = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
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
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "end_event_back",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_plague_monks_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_military_end_event_plague_monks"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_05_done"
    }
}

military.dense_military_end_event_survival_06_right = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_right",
        composition_type = "dense_event_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_right_hidden",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_right_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_right_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_06_done"
    }
}

military.dense_military_end_event_survival_06_middle = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_middle",
        composition_type = "dense_event_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_left_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_left_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_06_done"
    }
}

military.dense_military_end_event_survival_06_back = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_back",
        composition_type = "dense_event_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_back_hidden",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_back_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event_back_hidden",
        composition_type = "military_end_event_berzerkers"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_survival_06_done"
    }
}

military.dense_military_end_event_specials_01 = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "event_horde",
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_custom_special_denial"
    },
    {
        "event_horde",
        spawner_id = "end_event_right_hidden",
        composition_type = "onslaught_custom_special_denial"
    },
    {
        "event_horde",
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 20,
        condition = function (t)
            return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_specials_done"
    }
}

military.dense_military_end_event_specials_02 = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "event_horde",
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_custom_special_denial"
    },
    {
        "event_horde",
        spawner_id = "end_event_right_hidden",
        composition_type = "onslaught_custom_special_denial"
    },
    {
        "event_horde",
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_custom_special_disabler"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 20,
        condition = function (t)
            return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_specials_done"
    }
}

military.dense_military_end_event_specials_03 = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "event_horde",
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_custom_special_disabler"
    },
    {
        "event_horde",
        spawner_id = "end_event_right_hidden",
        composition_type = "onslaught_custom_special_disabler"
    },
    {
        "event_horde",
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_custom_special_denial"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 20,
        condition = function (t)
            return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_specials_done"
    }
}

military.dense_military_end_event_specials_04 = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "event_horde",
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_custom_special_disabler"
    },
    {
        "event_horde",
        spawner_id = "end_event_right_hidden",
        composition_type = "onslaught_custom_special_disabler"
    },
    {
        "event_horde",
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 20,
        condition = function (t)
            return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_specials_done"
    }
}

military.dense_military_end_event_specials_05 = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "event_horde",
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_custom_specials_heavy_denial"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 20,
        condition = function (t)
            return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_specials_done"
    }
}

military.dense_military_end_event_specials_06 = {
    {
        "set_master_event_running",
        name = "military_end_event_survival"
    },
    {
        "event_horde",
        spawner_id = "end_event_left_hidden",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "event_horde",
        spawner_id = "end_event_right_hidden",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "event_horde",
        spawner_id = "end_event_back_hidden",
        composition_type = "onslaught_custom_special_skaven"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "military_end_event_specials_done"
    }
}

return military