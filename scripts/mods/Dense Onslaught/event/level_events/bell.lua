local bell = {}

bell.dense_canyon_bell_event = {
    {
        "set_master_event_running",
        name = "canyon_bell_event"
    },
    {
        "set_time_challenge",
        time_challenge_name = "bell_speed_event"
    },
    {
        "set_time_challenge",
        time_challenge_name = "bell_speed_event_cata"
    },
    {
        "disable_kick"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        spawner_id = "canyon_bell_event",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        spawner_id = "canyon_bell_event",
        composition_type = "dense_event_extra_spice_large"
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
        "control_pacing",
        enable = false
    },
    {
        "event_horde",
        spawner_id = "canyon_bell_event",
        composition_type = "event_bell_monks"
    },
    {
        "event_horde",
        spawner_id = "canyon_bell_event",
        composition_type = "event_bell_monks"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
    {
        "flow_event",
        flow_event_name = "canyon_bell_event_done"
    }
}

bell.dense_canyon_ogre_boss = {
    {
        "control_specials",
        enable = false
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "spawn_at_raw",
        spawner_id = "canyon_ogre_boss",
        breed_name = "skaven_rat_ogre"
    },
    {
        "delay",
        duration = 2
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_second_ogre",
        breed_name = "chaos_troll"
    },
    {
        "event_horde",
        spawner_id = "canyon_bell_event",
        composition_type = "event_bell_warriors"
    }
}

bell.dense_canyon_escape_event = {
    {
        "set_master_event_running",
        name = "canyon_escape_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "canyon_escape_event",
        composition_type = "onslaught_custom_specials_heavy_disabler"
    },		
    {
        "event_horde",
        spawner_id = "canyon_escape_event",
        composition_type = "dense_event_large"
    },
    {
        "delay",
        duration = 5
    },
    {
        "control_specials",
        enable = false
    },
    {
        "control_pacing",
        enable = true
    },
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_clan_rat_with_shield") < 8 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 3
        end
    }
}

return bell