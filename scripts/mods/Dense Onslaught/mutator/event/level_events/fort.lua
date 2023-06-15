local fort = {}

fort.dense_fort_pacing_off = {
    {
        "control_pacing",
        enable = false
    },
    {
        "control_specials",
        enable = true
    }
}

fort.dense_fort_horde_gate = {
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
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "event_horde",
        spawner_id = "fort_horde_gate",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "spawn_at_raw",
        spawner_id = "siege_1",
        breed_name = "skaven_rat_ogre",
        optional_data = {
            max_health_modifier = 0.5
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
            max_health_modifier = 0.5
        }
    },
    {
        "delay",
        duration = 30
    },
    {
        "event_horde",
        spawner_id = "fort_horde_gate",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        spawner_id = "fort_horde_gate",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "event_horde",
        spawner_id = "fort_horde_gate",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "fort_horde_gate_done"
    }
}

fort.dense_fort_terror_event_climb = {
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
        composition_type = "dense_event_smaller"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("skaven_slave") < 16 and count_event_breed("skaven_clan_rat") < 8 and count_event_breed("skaven_clan_rat_with_shield") < 7 and count_event_breed("skaven_storm_vermin_commander") < 4
        end
    },
    {
        "flow_event",
        flow_event_name = "fort_terror_event_climb_done"
    }
}

fort.dense_fort_terror_event_inner_yard_skaven = {
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
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        spawner_id = "terror_event_inner_yard",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 35,
        condition = function (t)
            return count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_storm_vermin_commander") < 4
        end
    },
    {
        "flow_event",
        flow_event_name = "fort_terror_event_inner_yard_done"
    }
}

fort.dense_fort_terror_event_inner_yard_chaos = {
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
        composition_type = "dense_event_medium_chaos"
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
        duration = 40,
        condition = function (t)
            return count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_marauder") < 5 and count_event_breed("chaos_marauder_with_shield") < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "fort_terror_event_inner_yard_done"
    }
}

fort.dense_fort_horde_cannon_skaven = {
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
        composition_type = "onslaught_storm_vermin_white_medium"
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
        composition_type = "dense_event_extra_spice_large"
    },
    {
        "delay",
        duration = 20
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
        }
    },
    {
        "continue_when",
        duration = 90,
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 6 and count_event_breed("skaven_poison_wind_globadier") < 6 and count_event_breed("skaven_warpfire_thrower") < 6 and count_event_breed("skaven_ratling_gunner") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "fort_horde_cannon_done"
    }
}

fort.dense_fort_horde_cannon_chaos = {
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
            "chaos_vortex_sorcerer",
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
        breed_name = "chaos_vortex_sorcerer"
    },
    {
        "delay",
        duration = 8
    },
    {
        "event_horde",
        limit_spawners = 3,
        spawner_id = "fort_horde_cannon",
        composition_type = "dense_event_large_chaos"
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
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner",
            "skaven_ratling_gunner",
            "skaven_warpfire_thrower"
        }
    },
    {
        "continue_when",
        duration = 120,
        condition = function (t)
            return count_event_breed("chaos_fanatic") < 20 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_poison_wind_globadier") < 6 and count_event_breed("skaven_warpfire_thrower") < 6 and count_event_breed("chaos_vortex_sorcerer") < 6
        end
    },
    {
        "flow_event",
        flow_event_name = "fort_horde_cannon_done"
    }
}

fort.dense_fort_siegers = {
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

return fort