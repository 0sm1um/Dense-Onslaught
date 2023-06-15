local nurgle = {}

nurgle.dense_nurgle_end_event01 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event",
        composition_type = "skaven_shields"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "event_maulers_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 10) and count_event_breed("chaos_raider") < 5
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "onslaught_custom_special_disabler"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event",
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
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("chaos_berzerker") < 5
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event",
        composition_type = "event_stormvermin_shielders"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "dense_event_large_chaos"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 10) and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_berzerker") < 5
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_monk",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_monk",
        composition_type = "onslaught_plague_monks_medium"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_stingers_plague_monk"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_plague_monk") < 5 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event01_done"
    }
}

nurgle.dense_nurgle_end_event_specials_01 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier",
            "skaven_gutter_runner",
            "skaven_pack_master",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_specials_done"
    }
}

nurgle.dense_nurgle_end_event_specials_02 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_gutter_runner",
            "skaven_pack_master",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier",
            "skaven_gutter_runner",
            "skaven_pack_master",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_specials_done"
    }
}

nurgle.dense_nurgle_end_event_specials_03 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier",
            "skaven_gutter_runner",
            "skaven_pack_master",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier",
            "skaven_gutter_runner",
            "skaven_pack_master",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_specials_done"
    }
}

nurgle.dense_nurgle_end_event_escape_02 = {
    {
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event02",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event02",
        composition_type = "dense_event_smaller"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5
        end
    },
    {
        "delay",
        duration = 3
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event02",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event02",
        composition_type = "dense_event_smaller"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5
        end
    },
    {
        "delay",
        duration = 3
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event02",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event02",
        composition_type = "dense_event_smaller"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5
        end
    },
    {
        "delay",
        duration = 3
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_escape_02_done"
    }
}

nurgle.dense_nurgle_end_event_loop_01 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event",
        composition_type = "onslaught_event_skaven_elite_adds"
    },	
    {
        "delay",
        duration = 3
    },
    {
        "event_horde",
        limit_spawners = 3,
        spawner_id = "onslaught_beastmen_event",
        composition_type = "onslaught_event_skaven_elite_adds"
    },	
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 4 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_loop_done"
    }
}

nurgle.dense_nurgle_end_event_loop_02 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "event_maulers_medium"
    },	
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "delay",
        duration = 3
    },
    {
        "event_horde",
        spawner_id = "onslaught_beastmen_event",
        composition_type = "onslaught_event_chaos_elite_adds"
    },	
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "event_chaos_extra_spice_small"
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 4 and (count_event_breed("chaos_raider") + count_event_breed("chaos_warrior")) < 4
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_loop_done"
    }
}

nurgle.dense_nurgle_end_event_loop_03 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "onslaught_event_chaos_elite_adds"
    },	
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_slave") < 4 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_loop_done"
    }
}

nurgle.dense_nurgle_end_event_loop_04 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "chaos_berzerkers_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "event_horde",
        limit_spawners = 3,
        spawner_id = "onslaught_beastmen_event",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },	
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        spawner_id = "onslaught_beastmen_event",
        composition_type = "onslaught_event_chaos_elite_adds"
    },
    {
        "delay",
        duration = 3
    },	
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("chaos_berzerker") < 2 and count_event_breed("chaos_marauder") < 2 and (count_event_breed("chaos_raider") + count_event_breed("chaos_warrior")) < 4
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_loop_done"
    }
}

nurgle.dense_nurgle_end_event_loop_05 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "nurgle_end_event",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "nurgle_end_event",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 3,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "onslaught_event_skaven_elite_adds"
    },
    {
        "delay",
        duration = 3
    },	
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_slave") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_loop_done"
    }
}

nurgle.dense_nurgle_end_event_loop_06 = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 3,
        spawner_id = "onslaught_beastmen_event",
        composition_type = "beastmen_trash"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_beastmen_stinger"
    },
    {
        "event_horde",
        limit_spawners = 3,
        spawner_id = "nurgle_end_event_chaos",
        composition_type = "beastmen_mix"
    },	
    {
        "delay" ,
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 3,
        spawner_id = "onslaught_beastmen_event",
        composition_type = "beastmen_mix"
    },
    {
        "delay",
        duration = 6
    },	
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return (count_event_breed("beastmen_gor") + count_event_breed("beastmen_ungor") < 10) and count_event_breed("beastmen_bestigor") < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_loop_done"
    }	
}

nurgle.dense_nurgle_end_event_escape = {
    {
        "set_master_event_running",
        name = "nurgle_end_event"
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
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_gate_1",
        breed_name = "beastmen_bestigor"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_gate_2",
        breed_name = "beastmen_bestigor"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_gate_3",
        breed_name = "beastmen_standard_bearer"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_gate_4",
        breed_name = "beastmen_bestigor"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_gate_5",
        breed_name = "beastmen_bestigor"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_gate_6",
        breed_name = "beastmen_bestigor"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_thirdroom_1",
        breed_name = "beastmen_standard_bearer"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_thirdroom_2",
        breed_name = "beastmen_bestigor"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_thirdroom_3",
        breed_name = "beastmen_bestigor"
    },
    {	
        "spawn_at_raw",
        spawner_id = "onslaught_beastmen_thirdroom_4",
        breed_name = "beastmen_bestigor"
    },
    {
        "delay",
        duration = 10
    },	
    {
        "event_horde",
        spawner_id = "nurgle_end_event02",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        spawner_id = "nurgle_end_event02",
        composition_type = "dense_event_smaller"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5
        end
    },
    {
        "flow_event",
        flow_event_name = "nurgle_end_event_escape_done"
    }
}

return nurgle