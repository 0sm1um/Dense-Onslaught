local mod = get_mod("Dense Onslaught")

dn_specials_enabled_and_pacing_disabled = {
    {
        "control_specials",
        enable = true
    },
    {
        "control_pacing",
        enable = false
    },
}

dn_specials_and_pacing_disabled = {
    {
        "control_specials",
        enable = true
    },
    {
        "control_pacing",
        enable = false
    },
}

dn_specials_and_pacing_enabled = {
    {
        "control_specials",
        enable = true
    },
    {
        "control_pacing",
        enable = true
    },
}

-- Dense Skaven Waves

dn_skaven_trash = {
    {
        "event_horde",
        composition_type = "dn_skaven_trash"
    },
    {
        "event_horde",
        composition_type = "dn_skaven_trash"
    },
    {
        "event_horde",
        composition_type = "dn_skaven_trash"
    },
    {
        "event_horde",
        composition_type = "dn_skaven_elites"
    },
    {
        "delay",
        duration = 5
    },
}

dn_skaven_berzerker = {
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_skaven_shielded_trash"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_plague_monks"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_plague_monks"
    },
    {
        "delay",
        duration = 6
    },

}

dn_skaven_light = {
    {
        "event_horde",
        composition_type = "dn_skaven_slave_trash"
    },
    {
        "event_horde",
        composition_type = "dn_stormvermin"
    },
    {
        "event_horde",
        composition_type = "dn_skaven_shielded_trash"
    },
    {
        "event_horde",
        composition_type = "dn_white_stormvermin"
    },
    {
        "event_horde",
        composition_type = "dn_plague_monks"
    },
    {
        "event_horde",
        composition_type = "dn_plague_monks"
    },
    {
        "delay",
        duration = 5
    },
}

dn_skaven_disabler_loop = {
    {
        "event_horde",
        composition_type = "dn_specials_heavy_disabler"
    },
    {
        "event_horde",
        composition_type = "dn_skaven_pursuit"
    },
    {
        "delay",
        duration = 5
    },
}

-- Dense Chaos Waves

dn_chaos_stinger = {
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
}

dn_chaos_trash = {
    {
        "event_horde",
        composition_type = "dn_chaos_trash"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_elites"
    },
    {
        "delay",
        duration = 6
    },
}

dn_chaos_elites = {
    {
        "event_horde",
        composition_type = "dn_chaos_trash"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_elites"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_elites"
    },
    {
        "delay",
        duration = 6
    },
}

dn_chaos_heavy_berzerker = {
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_shielded_trash"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_zerkers_heavy"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_zerkers_heavy"
    },
    {
        "delay",
        duration = 6
    },
}

dn_chaos_heavy_maulers = {
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_trash"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_maulers"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_maulers"
    },
    {
        "delay",
        duration = 6
    },
}

dn_chaos_light_super_armor = {
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_trash"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_maulers"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_warriors_light"
    },	
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_trash"
    },
    {
        "delay",
        duration = 6
    },
}

dn_chaos_heavy_super_armor = {
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_trash"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_warriors"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_warriors_light"
    },	
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_trash"
    },
    {
        "event_horde",
        limit_spawners = 2,
        composition_type = "dn_chaos_warriors"
    },
    {
        "delay",
        duration = 6
    },
}

dn_chaos_crescendo = {
    {
        "event_horde",
        composition_type = "dn_chaos_trash"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_warriors"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_warriors"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_shielded_trash"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_zerkers"
    },
    {
        "delay",
        duration = 4
    },
    {
        "event_horde",
        composition_type = "dn_chaos_zerkers"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_elites"
    },
    {
        "event_horde",
        composition_type = "dn_chaos_elites"
    },
    {
        "delay",
        duration = 4
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = "chaos_vortex_sorcerer"
    },
}


-- Dense Special Waves
dn_ratling_guns = {
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
        "spawn_special",
        amount = 1,
        breed_name = "skaven_ratling_gunner"
    },
    {
        "delay",
        duration = 4
    },
}




-- Dense Stopping Conditions

dn_high_threshold_continue_skaven = {
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_clan_rat") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_storm_vermin_commander") < 8 and count_event_breed("skaven_plague_monk") < 12
        end
    },
}

dn_low_threshold_continue_skaven = {
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_clan_rat_with_shield") < 8 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 3
        end
    },
}

dn_low_threshold_continue_chaos = {
    {
        "continue_when",
        condition = function (t)
            return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
        end
    },
}