local dlc_bogenhafen_slum = {}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_pacing_off = {
    {
        "text",
        text = "",
        duration = 0
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_event_pacing_off = {
    {
        "text",
        text = "",
        duration = 0
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_event_start = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_slum_event_start"
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
        enable = false
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_mid_01",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_mid_01",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_mid_01",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_left_01",
        composition_type = "event_maulers_small"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_right_01",
        composition_type = "event_maulers_small"
    },
    {
        "delay",
        duration = 15
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_slum_event_start_done"
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_event_loop = {
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
        spawner_id = "bogenhafen_slum_event_front_left_01",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_left_01",
        composition_type = "dense_chaos_elites"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_left_01",
        composition_type = "slum_warrior"
    },	
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_mid_01",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_right_01",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_right_01",
        composition_type = "dense_chaos_elites"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_right_01",
        composition_type = "slum_warrior"
    },	
    {
        "delay",
        duration = 41
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_slum_event_loop_done"
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_event_spice_mid = {
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
        spawner_id = "bogenhafen_slum_event_front_mid_01",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_mid_01",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_front_mid_01",
        composition_type = "slum_specials"
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_event_spice_left = {
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
        spawner_id = "bogenhafen_slum_event_left_01",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_left_01",
        composition_type = "onslaught_event_small_fanatics"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_left_01",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_left_01",
        composition_type = "event_maulers_small"
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_event_spice_right = {
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
        spawner_id = "bogenhafen_slum_event_left_01",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_left_01",
        composition_type = "onslaught_event_small_fanatics"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_left_01",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_left_01",
        composition_type = "event_maulers_small"
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_event_end_loop = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_roof_01",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_roof_01",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_roof_01",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_roof_01",
        composition_type = "slum_warrior"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_roof_01",
        composition_type = "slum_warrior"
    },	
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_roof_01",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_event_roof_01",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("chaos_marauder_with_shield") + count_event_breed("chaos_marauder")) < 8
        end
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 4
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_slum_event_end_loop"
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_gauntlet_part_01 = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_slum_gauntlet_master"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 130
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
        "event_horde",
        spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_cutoff",
        composition_type = "dense_event_extra_spice_large"
    },
    {
        "event_horde",
        spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_cutoff",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_cutoff",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "spawn_special",
        spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
        breed_name = "skaven_ratling_gunner"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = "skaven_ratling_gunner"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = "skaven_ratling_gunner"
    },
    {
        "delay",
        duration = 3
    },
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_cutoff_3",
        composition_type = "slum_escape_chaos"
    },
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_cutoff_4",
        composition_type = "slum_escape_skaven"
    },	
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_behind",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "delay",
        duration = 2
    },
    {
        "spawn_special",
        spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
        breed_name = "skaven_pack_master"
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_gauntlet_wall = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_slum_gauntlet_master"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 130
    },
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_cutoff_4",
        composition_type = "slum_escape_chaos"
    },	
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_cutoff_3",
        composition_type = "slum_escape_chaos"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_gauntlet_wall_01",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_gauntlet_wall_01",
        composition_type = "event_maulers_medium"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_gauntlet_wall_01",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        spawner_id = "bogenhafen_slum_gauntlet_wall",
        composition_type = "onslaught_chaos_warriors"
    }	
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_gauntlet_wall_smash = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_slum_gauntlet_master"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 130
    }
}

dlc_bogenhafen_slum.dense_dlc_bogenhafen_slum_gauntlet_part_02 = {
    {
        "set_master_event_running",
        name = "dlc_bogenhafen_slum_gauntlet_master"
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_slum_portal_boss",
        breed_name = "chaos_troll"
    },	
    {
        "set_freeze_condition",
        max_active_enemies = 130
    },
    {
        "event_horde",
        spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        spawner_id = "onslaught_slum_gauntlet_cutoff_3",
        composition_type = "dense_event_extra_spice_large"
    },
    {
        "event_horde",
        spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_slum_escape_crate_big",
        breed_name = "chaos_warrior"
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_slum_escape_crate_small",
        breed_name = "chaos_warrior"
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_slum_escape_wall",
        breed_name = "chaos_warrior"
    },	
    {
        "spawn_special",
        spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
        breed_name = "skaven_ratling_gunner"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 3 and (count_event_breed("chaos_marauder_with_shield") + count_event_breed("chaos_marauder")) < 9 and count_event_breed("chaos_warrior") < 2 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and count_event_breed("skaven_slave") < 14 and count_event_breed("skaven_storm_vermin_commander") < 4
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "flow_event",
        flow_event_name = "dlc_bogenhafen_slum_gauntlet_part_02_done"
    }
}

return dlc_bogenhafen_slum