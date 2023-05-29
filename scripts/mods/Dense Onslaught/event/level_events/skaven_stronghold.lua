local skaven_stronghold = {}

skaven_stronghold.dense_stronghold_pacing_off = {
    {
        "text",
        text = "",
        duration = 0
    }
}

skaven_stronghold.dense_stronghold_pacing_on = {
    {
        "text",
        text = "",
        duration = 0
    }
}

skaven_stronghold.dense_stronghold_horde_water_wheels = {
    {
        "set_master_event_running",
        name = "stronghold_horde_water_wheels"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        spawner_id = "stronghold_horde_water_wheels",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        spawner_id = "stronghold_horde_water_wheels",
        composition_type = "skaven_shields"
    },
    {
        "event_horde",
        spawner_id = "stronghold_horde_water_wheels",
        composition_type = "event_stormvermin_shielders"
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
        condition = function (t)
            return count_event_breed("skaven_slave") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "stronghold_horde_water_wheels_done"
    }
}

skaven_stronghold.dense_stronghold_boss = {
    {
        "control_pacing",
        enable = false
    },
    {
        "control_specials",
        enable = false
    },
    {
        "disable_kick"
    },
    {
        "set_master_event_running",
        name = "stronghold_boss"
    },
    {
        "spawn_at_raw",
        spawner_id = "stronghold_boss",
        breed_name = "skaven_storm_vermin_warlord"
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("skaven_storm_vermin_warlord") == 1
        end
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("skaven_storm_vermin_warlord") < 1
        end
    },
    {
        "flow_event",
        flow_event_name = "stronghold_boss_killed"
    },
    {
        "delay",
        duration = 8
    },

    {
        "control_pacing",
        enable = true
    },
    {
        "control_specials",
        enable = true
    }
}

return skaven_stronghold