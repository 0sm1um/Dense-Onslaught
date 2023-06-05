local warcamp = {}

warcamp.dense_warcamp_payload = {
    {
        "set_master_event_running",
        name = "warcamp_payload"
    },
    {
        "control_pacing",
        enable = false
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
        spawner_id = "payload_event_l",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_l",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_r",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
        end
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_l",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_r",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "delay",
        duration = 12
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "payload_event_l",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "payload_event_r",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = "skaven_poison_wind_globadier"
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "payload_event_l",
        composition_type = "dense_event_large_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "payload_event_r",
        composition_type = "event_maulers_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "payload_event_r",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_r",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_r",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_gutter_runner",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
        end
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "payload_event_r",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_l",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_l",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 1,
        spawner_id = "payload_event_l",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "payload_event_l",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "payload_event_r",
        composition_type = "event_maulers_small"
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "warcamp_payload"
    }
}

warcamp.dense_warcamp_camp = {
    {
        "set_master_event_running",
        name = "warcamp_camp"
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
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "camp_event",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "camp_event",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "camp_event",
        composition_type = "event_warcamp_elites"
    },
    {
        "delay",
        duration = 8
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 15) and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "delay",
        duration = 15
    },
    {
        "flow_event",
        flow_event_name = "warcamp_camp_restart"
    }
}

return warcamp