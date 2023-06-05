local forest_ambush = {}

forest_ambush.dense_forest_skaven_camp_loop = {
    {
        "enable_bots_in_carry_event"
    },
    {
        "set_master_event_running",
        name = "forest_camp"
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "event_extra_spice_unshielded"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "delay",
        duration = 2
    },
    {
        "spawn_special",
        spawner_id = "forest_camp_specials",
        breed_name = "skaven_poison_wind_globadier"
    },
    {
        "delay",
        duration = 4
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "delay",
        duration = {
            2,
            4
        }
    },
    {
        "spawn_special",
        spawner_id = "forest_camp_specials",
        breed_name = "skaven_poison_wind_globadier"
    },
    {
        "spawn_special",
        spawner_id = "forest_camp_specials",
        breed_name = {
            "skaven_ratling_gunner",
            "skaven_warpfire_thrower"
        }
    },
    {
        "continue_when",
        duration = 60,
        condition = function (t)
            return count_event_breed("skaven_slave") < 12 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
        end
    },
    {
        "delay",
        duration = {
            8,
            10
        }
    },
    {
        "flow_event",
        flow_event_name = "forest_skaven_camp_loop_restart"
    }
}

forest_ambush.dense_forest_skaven_camp_resistance_loop = {
    {
        "enable_bots_in_carry_event"
    },
    {
        "set_master_event_running",
        name = "forest_camp"
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "event_horde",
        spawner_id = "forest_camp_specials",
        composition_type = "onslaught_plague_monks_small"
    },
    {
        "spawn_special",
        spawner_id = "forest_camp_specials",
        breed_name = {
            "skaven_pack_master",
            "skaven_gutter_runner",
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "delay",
        duration = 2
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "event_extra_spice_unshielded"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "delay",
        duration = {
            4,
            9
        }
    },
    {
        "spawn_special",
        amount = 2,
        spawner_id = "forest_camp_specials",
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "spawn_special",
        spawner_id = "forest_camp_specials",
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "continue_when",
        duration = 60,
        condition = function (t)
            return count_event_breed("skaven_plague_monk") < 5 and count_event_breed("skaven_slave") < 12 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
        end
    },
    {
        "delay",
        duration = {
            13,
            17
        }
    },
    {
        "event_horde",
        spawner_id = "forest_camp_specials",
        composition_type = "onslaught_plague_monks_small"
    },
    {
        "spawn_special",
        amount = 2,
        spawner_id = "forest_camp_specials",
        breed_name = {
            "skaven_pack_master",
            "skaven_gutter_runner"
        }
    },
    {
        "delay",
        duration = 2
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "event_extra_spice_unshielded"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "skaven_camp_loop",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "delay",
        duration = {
            4,
            9
        }
    },
    {
        "spawn_special",
        amount = 2,
        spawner_id = "forest_camp_specials",
        breed_name = {
            "skaven_poison_wind_globadier"
        }
    },
    {
        "spawn_special",
        spawner_id = "forest_camp_specials",
        breed_name = {
            "skaven_pack_master",
            "skaven_gutter_runner",
            "skaven_poison_wind_globadier",
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "continue_when",
        duration = 60,
        condition = function (t)
            return count_event_breed("skaven_plague_monk") < 5 and count_event_breed("skaven_slave") < 12 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
        end
    },
    {
        "delay",
        duration = {
            13,
            17
        }
    },
    {
        "flow_event",
        flow_event_name = "forest_skaven_camp_resistance_loop_restart"
    }
}

forest_ambush.dense_forest_skaven_camp_a = {
    {
        "enable_bots_in_carry_event"
    },
    {
        "set_master_event_running",
        name = "forest_camp"
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
        spawner_id = "forest_skaven_camp",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "continue_when",
        duration = 15,
        condition = function (t)
            return count_event_breed("skaven_storm_vermin_commander") < 6
        end
    },
    {
        "delay",
        duration = {
            10,
            15
        }
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_storm_vermin_commander") < 4 
        end
    },
    {
        "flow_event",
        flow_event_name = "forest_skaven_camp_a_done"
    }
}

forest_ambush.dense_forest_skaven_camp_b = {
    {
        "enable_bots_in_carry_event"
    },
    {
        "set_master_event_running",
        name = "forest_camp"
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
        spawner_id = "forest_skaven_camp",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_plague_monk") < 4 
        end
    },
    {
        "delay",
        duration = {
            10,
            15
        }
    },
    {
        "flow_event",
        flow_event_name = "forest_skaven_camp_b_done"
    }
}

forest_ambush.dense_forest_skaven_camp_c = {
    {
        "enable_bots_in_carry_event"
    },
    {
        "set_master_event_running",
        name = "forest_camp"
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
        spawner_id = "forest_skaven_camp",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_storm_vermin_shields_small"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_storm_vermin_shields_small"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "skaven_shields"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "skaven_shields"
    },
    {
        "continue_when",
        duration = 15,
        condition = function (t)
            return count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_with_shield") < 5
        end
    },
    {
        "delay",
        duration = {
            10,
            15
        }
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "onslaught_storm_vermin_shields_small"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "skaven_shields"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "skaven_shields"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "forest_skaven_camp_c_done"
    }
}

forest_ambush.dense_forest_skaven_camp_finale = {
    {
        "set_master_event_running",
        name = "forest_camp"
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "stop_event",
        stop_event_name = "forest_skaven_camp_resistance_loop"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "event_horde",
        spawner_id = "forest_door_a",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_door_a",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_skaven_camp",
        composition_type = "dense_event_smaller"
    },
    {
        "delay",
        duration = 5
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_doomwheel_boss",
        breed_name = {
            "skaven_rat_ogre",
            "skaven_stormfiend"
        }
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("skaven_stormfiend") < 1
        end
    },
    {
        "stop_master_event"
    },
    {
        "flow_event",
        flow_event_name = "forest_skaven_camp_finale_done"
    },
    {
        "disable_bots_in_carry_event"
    },
    {
        "control_pacing",
        enable = true
    }
}

forest_ambush.dense_forest_end_event_loop = {
    {
        "set_master_event_running",
        name = "forest_finale"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "forest_end_event",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "delay",
        duration = 3
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 4
        end
    },
    {
        "delay",
        duration = {
            10,
            15
        }
    },
    {
        "flow_event",
        flow_event_name = "forest_end_event_loop_restart"
    }
}

forest_ambush.dense_forest_end_event_a = {
    {
        "set_master_event_running",
        name = "forest_finale"
    },
    {
        "disable_kick"
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
        spawner_id = "forest_end_event",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = {
            6,
            9
        }
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_specials",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "onslaught_storm_vermin_shields_small"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "onslaught_storm_vermin_shields_small"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "onslaught_storm_vermin_shields_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "dense_event_small"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "delay",
        duration = {
            30,
            34
        }
    },
    {
        "flow_event",
        flow_event_name = "forest_end_event_restart"
    }
}

forest_ambush.dense_forest_end_event_b = {
    {
        "set_master_event_running",
        name = "forest_finale"
    },
    {
        "disable_kick"
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "event_maulers_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_event_small_fanatics"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_event_small_fanatics"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "event_maulers_small"
    },
    {
        "delay",
        duration = {
            40,
            45
        }
    },
    {
        "flow_event",
        flow_event_name = "forest_end_event_restart"
    }
}

forest_ambush.dense_forest_end_event_c = {
    {
        "set_master_event_running",
        name = "forest_finale"
    },
    {
        "disable_kick"
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
        spawner_id = "forest_end_event",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "dense_event_large"
    },
    {
        "delay",
        duration = 1
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "delay",
        duration = 15
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "delay",
        duration = {
            38,
            42
        }
    },
    {
        "flow_event",
        flow_event_name = "forest_end_event_restart"
    }
}

forest_ambush.dense_forest_end_finale = {
    {
        "set_master_event_running",
        name = "forest_finale"
    },
    {
        "disable_kick"
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
        spawner_id = "forest_end_event_finale",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_finale",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_finale",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "delay",
        duration = 20
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_finale",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_finale",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
        composition_type = "event_maulers_medium"
    },
    {
        "event_horde",
        spawner_id = "forest_end_event_chaos",
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
            return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "flow_event",
        flow_event_name = "forest_end_event_restart"
    }
}

return forest_ambush