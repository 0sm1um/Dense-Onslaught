local dlc_castle = {}

dlc_castle.dense_castle_catacombs_welcome_committee = {
    {
        "play_stinger",
        stinger_name = "enemy_horde_stinger"
    },
    {
        "event_horde",
        spawner_id = "catacombs_welcome_committee",
        composition_type = "dense_event_large_chaos"
    },
    {
        "event_horde",
        spawner_id = "catacombs_welcome_committee",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        spawner_id = "catacombs_welcome_committee",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        spawner_id = "catacombs_special_welcome",
        composition_type = "chaos_warriors"
    },
    {
        "event_horde",
        spawner_id = "catacombs_special_welcome",
        composition_type = "onslaught_chaos_warriors"
    }
}

dlc_castle.dense_castle_chaos_boss = {
    {
        "control_pacing",
        enable = false
    },
    {
        "control_specials",
        enable = false
    },
    {
        "set_master_event_running",
        name = "castle_chaos_boss"
    },
    {
        "spawn_at_raw",
        spawner_id = "castle_chaos_boss",
        breed_name = "chaos_exalted_sorcerer_drachenfels"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_exalted_sorcerer_drachenfels") == 1
        end
    },
    {
        "flow_event",
        flow_event_name = "castle_chaos_boss_spawn"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("chaos_exalted_sorcerer_drachenfels") < 1
        end
    },
    {
        "control_specials",
        enable = true
    },
    {
        "flow_event",
        flow_event_name = "castle_chaos_boss_dead"
    }
}

dlc_castle.dense_castle_catacombs_end_event_loop = {
    {
        "set_master_event_running",
        name = "escape_catacombs"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "escape_catacombs",
        composition_type = "dense_event_large"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_slave") < 10
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "flow_event",
        flow_event_name = "castle_catacombs_end_event_loop_done"
    }
}

dlc_castle.dense_castle_catacombs_end_event_loop_extra_spice = {
    {
        "set_master_event_running",
        name = "escape_catacombs"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_escape_spice",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_escape_spice",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event_escape_spice",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_storm_vermin_commander") < 3
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "flow_event",
        flow_event_name = "castle_catacombs_end_event_loop_extra_spice_done"
    }
}

return dlc_castle