local skittergate = {}

skittergate.dense_skittergate_spawn_guards = {
    {
        "spawn_at_raw",
        spawner_id = "gate_guard_01",
        breed_name = "skaven_storm_vermin_commander"
    },
    {
        "spawn_at_raw",
        spawner_id = "gate_guard_02",
        breed_name = "skaven_storm_vermin_commander"
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_gate_guard",
        breed_name = "skaven_storm_vermin_commander"
    }
}

skittergate.dense_skittergate_chaos_boss = {
    {
        "set_master_event_running",
        name = "skittergate_chaos_boss"
    },
    {
        "event_horde",
        spawner_id = "onslaught_CW_gatekeeper_1",
        composition_type = "onslaught_skittergate_warriors_one"
    },
    {
        "event_horde",
        spawner_id = "onslaught_CW_gatekeeper_3",
        composition_type = "onslaught_skittergate_warriors_three"
    },
    {
        "delay",
        duration = 1
    },
    {
        "event_horde",
        spawner_id = "onslaught_CW_gatekeeper_2",
        composition_type = "onslaught_skittergate_warriors_two"
    },
    {
        "spawn_at_raw",
        spawner_id = "skittergate_chaos_boss",
        breed_name = "chaos_exalted_champion_norsca"
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("chaos_exalted_champion_norsca") == 1
        end
    },
    {
        "delay",
        duration = 10
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
            "skaven_gutter_runner",
            "skaven_pack_master",
            "chaos_corruptor_sorcerer"
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
        "continue_when",
        condition = function (t)
            return count_event_breed("chaos_exalted_champion_norsca") < 1 or count_event_breed("chaos_warrior") < 4
        end
    },
    {
        "event_horde",
        spawner_id = "onslaught_zerker_gatekeeper",
        composition_type = "onslaught_skittergate_warriors_three"
    },
    {
        "event_horde",
        spawner_id = "onslaught_zerker_gatekeeper",
        composition_type = "onslaught_skittergate_zerker"
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("chaos_exalted_champion_norsca") < 1
        end
    },
    {
        "delay",
        duration = 2
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("chaos_exalted_champion_norsca") < 1 and count_event_breed("chaos_spawn_exalted_champion_norsca") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "skittergate_chaos_boss_killed"
    }
}

skittergate.dense_skittergate_gatekeeper_marauders = {
    {
        "spawn_at_raw",
        spawner_id = "skittergate_gatekeeper_marauder_01",
        breed_name = "chaos_raider"
    },
    {
        "spawn_at_raw",
        spawner_id = "skittergate_gatekeeper_marauder_02",
        breed_name = "chaos_raider"
    },
    {
        "spawn_at_raw",
        spawner_id = "skittergate_gatekeeper_marauder_03",
        breed_name = "chaos_marauder_with_shield"
    }
}

skittergate.dense_skittergate_terror_event_02 = {
    {
        "set_master_event_running",
        name = "skittergate_terror_event_02"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        spawner_id = "terror_event_02",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        spawner_id = "terror_event_02",
        composition_type = "dense_event_small_chaos"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        spawner_id = "terror_event_02",
        composition_type = "dense_event_large"
    },
    {
        "delay",
        duration = 5
    },
    {
        "control_specials",
        enable = true
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 20 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12
        end
    },
    {
        "flow_event",
        flow_event_name = "skittergate_terror_event_02_done"
    }
}

return skittergate