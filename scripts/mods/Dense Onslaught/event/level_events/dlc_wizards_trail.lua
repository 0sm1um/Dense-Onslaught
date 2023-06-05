local dlc_wizards_trail = {}

dlc_wizards_trail.dense_trail_disable_pacing_mid = {
    {
        "text",
        text = "",
        duration = 0
    }
}

dlc_wizards_trail.dense_trail_disable_pacing_light = {
    {
        "control_specials",
        enable = true
    },
    {
        "control_pacing",
        enable = true
    }
}

dlc_wizards_trail.dense_trail_drawbridge_wallbreaker = {
    {
        "spawn_at_raw",
        spawner_id = "drawbridge_wall_breaker_01",
        amount = 1,
        breed_name = {
            "skaven_ratling_gunner",
            "skaven_warpfire_thrower",
            "skaven_poison_wind_globadier"
        }
    },
    {
        "spawn_at_raw",
        spawner_id = "drawbridge_wall_breaker_01",
        amount = 4,
        breed_name = {
            "skaven_warpfire_thrower"
        }
    },
    {
        "event_horde",
        spawner_id = "drawbridge_wall_breaker_01",
        composition_type = "onslaught_drawbridge_shield_squad"
    },
    {
        "delay",
        duration = 3
    },
    {
        "spawn_at_raw",
        spawner_id = "drawbridge_wall_breaker_02",
        amount = 1,
        breed_name = {
            "skaven_poison_wind_globadier",
            "skaven_warpfire_thrower",
            "skaven_pack_master"
        }
    },
    {
        "spawn_at_raw",
        spawner_id = "drawbridge_wall_breaker_02",
        amount = 5,
        breed_name = {
            "skaven_ratling_gunner"
        }
    },
    {
        "event_horde",
        spawner_id = "drawbridge_wall_breaker_02",
        composition_type = "onslaught_drawbridge_shield_squad"
    }
}

dlc_wizards_trail.dense_trail_mid_event_01 = {
    {
        "set_master_event_running",
        name = "trail_mid_event_01"
    },
    {
        "disable_kick"
    },
    {
        "enable_bots_in_carry_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "event_horde",
        spawner_id = "trail_mid_event_spawn_01",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        spawner_id = "trail_mid_event_spawn_02",
        composition_type = "storm_vermin_shields_small"
    },
    {
        "delay",
        duration = 5
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_ratling_gunner",
            "skaven_gutter_runner"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_mid_event_04_boss",
        breed_name = "skaven_rat_ogre"
    },
    {
        "delay",
        duration = 3
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_mid_event_02",
        breed_name = "skaven_stormfiend"
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_mid_event_spawn_02",
        composition_type = "dense_event_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_special",
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner"
        }
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "trail_mid_event_spawn_roof",
        composition_type = "dense_event_extra_spice_large"
    },
    {
        "delay",
        duration = 15
    },
    {
        "event_horde",
        spawner_id = "trail_mid_event_spawn_02",
        composition_type = "plague_monks_medium"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_pack_master",
            "skaven_gutter_runner",
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_mid_event_spawn_02",
        composition_type = "dense_event_small"
    },
    {
        "delay",
        duration = 5
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_mid_event_02",
        breed_name = {
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier",
            "skaven_warpfire_thrower",
            "skaven_pack_master"
        },
        difficulty_amount = {
            hardest = 2,
            hard = 2,
            harder = 2,
            cataclysm = 2,
            normal = 2
        }
    },
    {
        "event_horde",
        spawner_id = "trail_mid_event_spawn_02",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_mid_event_02",
        breed_name = "skaven_pack_master"
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_mid_event_02",
        breed_name = "skaven_warpfire_thrower"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "trail_mid_event_spawn_03",
        composition_type = "dense_event_extra_spice_large"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "trail_mid_event_spawn_roof",
        composition_type = "dense_event_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_pack_master",
            "skaven_gutter_runner",
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_pack_master",
            "skaven_poison_wind_globadier"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_pack_master",
            "skaven_gutter_runner"
        }
    },
    {
        "delay",
        duration = 10
    },
    {
        "disable_bots_in_carry_event"
    },
    {
        "continue_when",
        duration = 20,
        condition = function (t)
            return num_spawned_enemies() < 8
        end
    },
    {
        "control_pacing",
        enable = true
    },
    {
        "flow_event",
        flow_event_name = "trail_mid_event_01_done"
    }
}

dlc_wizards_trail.dense_trail_mid_event_04 = {
    {
        "set_master_event_running",
        name = "trail_mid_event_04"
    },
    {
        "disable_kick"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "spawn_special",
        amount = 2,
        breed_name = {
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "event_horde",
        spawner_id = "trail_mid_event_spawn_04",
        composition_type = "storm_vermin_shields_medium"
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_mid_event_04_special",
        breed_name = {
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_mid_event_04_boss",
        breed_name = {
            "skaven_ratling_gunner",
            "skaven_poison_wind_globadier",
            "skaven_warpfire_thrower",
            "skaven_pack_master"
        },
        difficulty_amount = {
            hardest = 4,
            hard = 4,
            harder = 4,
            cataclysm = 4,
            normal = 4
        }
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "trail_mid_event_spawn_04",
        composition_type = "dense_event_extra_spice_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "trail_mid_event_spawn_02",
        composition_type = "dense_event_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_mid_event_04_special",
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "spawn_special",
        amount = 3,
        breed_name = {
            "skaven_pack_master",
            "skaven_gutter_runner",
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_mid_event_spawn_04",
        composition_type = "dense_event_extra_spice_large"
    },
    {
        "disable_bots_in_carry_event"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 20,
        condition = function (t)
            return num_spawned_enemies() < 12
        end
    },
    {
        "control_pacing",
        enable = true
    },
    {
        "flow_event",
        flow_event_name = "trail_mid_event_04_done"
    }
}

dlc_wizards_trail.dense_trail_intro_disable_pacing_end = {
    {
        "control_hordes",
        enable = false
    },
    {
        "control_specials",
        enable = true
    },
    {
        "control_pacing",
        enable = false
    }
}

dlc_wizards_trail.dense_trail_end_event_first_wave = {
    {
        "set_master_event_running",
        name = "trail_end_event_first_wave"
    },
    {
        "disable_kick"
    },
    {
        "enable_bots_in_carry_event"
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
        "control_specials",
        enable = false
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "trail_end_event_first_wave",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_first_wave",
        composition_type = "chaos_warriors"
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_first_wave",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_first_wave",
        composition_type = "event_chaos_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_special",
        amount = 2,
        breed_name = {
            "chaos_vortex_sorcerer",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 14
        end
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_end_event_boss",
        breed_name = {
            "chaos_spawn",
            "chaos_troll",
            "skaven_stormfiend"
        }
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "trail_end_event_first_wave",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 3
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 21
        end
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "trail_end_event_first_wave",
        composition_type = "dense_event_small_chaos"
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_breed("chaos_spawn") < 1 and count_breed("chaos_troll") < 1 and count_breed("skaven_stormfiend") < 1
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_end_event_boss",
        breed_name = {
            "chaos_spawn",
            "chaos_troll",
            "skaven_stormfiend"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_breed("chaos_spawn") < 1 and count_breed("chaos_troll") < 1 and count_breed("skaven_stormfiend") < 1
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_end_event_boss",
        breed_name = {
            "chaos_spawn",
            "chaos_troll",
            "skaven_stormfiend"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_breed("chaos_spawn") < 1 and count_breed("chaos_troll") < 1 and count_breed("skaven_stormfiend") < 1
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_end_event_boss",
        breed_name = {
            "chaos_spawn",
            "chaos_troll",
            "skaven_stormfiend"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_breed("chaos_spawn") < 1 and count_breed("chaos_troll") < 1 and count_breed("skaven_stormfiend") < 1
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_end_event_boss",
        breed_name = {
            "chaos_spawn",
            "chaos_troll",
            "skaven_stormfiend"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_breed("chaos_spawn") < 1 and count_breed("chaos_troll") < 1 and count_breed("skaven_stormfiend") < 1
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_end_event_boss",
        breed_name = {
            "chaos_spawn",
            "chaos_troll",
            "skaven_stormfiend"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_breed("chaos_spawn") < 1 and count_breed("chaos_troll") < 1 and count_breed("skaven_stormfiend") < 1
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_end_event_boss",
        breed_name = {
            "chaos_spawn",
            "chaos_troll",
            "skaven_stormfiend"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_breed("chaos_spawn") < 1 and count_breed("chaos_troll") < 1 and count_breed("skaven_stormfiend") < 1
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "trail_end_event_boss",
        breed_name = {
            "chaos_spawn",
            "chaos_troll",
            "skaven_stormfiend"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        condition = function (t)
            return count_breed("chaos_spawn") < 1 and count_breed("chaos_troll") < 1 and count_breed("skaven_stormfiend") < 1
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "flow_event",
        flow_event_name = "trail_end_event_first_wave_done"
    }
}

dlc_wizards_trail.dense_trail_end_event_constant = {
    {
        "enable_bots_in_carry_event"
    },
    {
        "set_freeze_condition",
        max_active_enemies = 30
    },
    {
        "set_master_event_running",
        name = "trail_end_event_constant"
    },
    {
        "control_pacing",
        enable = false
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "trail_end_event_spawner_under_water",
        composition_type = "event_small_fanatics"
    },
    {
        "event_horde",
        limit_spawners = 8,
        spawner_id = "trail_end_event_spawner_under_water",
        composition_type = "dense_event_small_chaos"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "chaos_vortex_sorcerer",
            "chaos_corruptor_sorcerer",
            "skaven_gutter_runner",
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner",
            "skaven_pack_master"
        }
    },
    {
        "delay",
        duration = 5
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return count_event_breed("chaos_fanatic") < 14 and count_event_breed("chaos_marauder") < 12
        end
    },
    {
        "flow_event",
        flow_event_name = "trail_end_event_constant_done"
    }
}

dlc_wizards_trail.dense_trail_end_event_torch_hunter = {
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "chaos_vortex_sorcerer",
            "chaos_corruptor_sorcerer",
            "skaven_gutter_runner",
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_pack_master",
            "skaven_gutter_runner"
        }
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "skaven_pack_master",
            "skaven_warpfire_thrower",
            "skaven_ratling_gunner"
        }
    }
}

dlc_wizards_trail.dense_trail_end_event_01 = {
    {
        "set_master_event_running",
        name = "trail_end_event_01"
    },
    {
        "disable_kick"
    },
    {
        "enable_bots_in_carry_event"
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
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "dense_event_large_chaos"
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "chaos_berzerkers_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_4",
        composition_type = "chaos_berzerkers_medium"
    },
    {
        "spawn_special",
        amount = 2,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer"
        }
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_2",
        composition_type = "dense_event_large_chaos"
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_2",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "chaos_vortex_sorcerer",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_under_water",
        composition_type = "event_chaos_extra_spice_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_special",
        amount = 2,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer"
        }
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "trail_end_event_spawner_under_water",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "trail_end_event_spawner_under_water",
        composition_type = "chaos_berzerkers_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_4",
        composition_type = "chaos_berzerkers_small"
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_4",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 18 and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_2",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_4",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_2",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_4",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_2",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_4",
        composition_type = "chaos_warriors_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 30 and count_event_breed("chaos_warrior") < 2
        end
    },
    {
        "flow_event",
        flow_event_name = "trail_end_event_01_done"
    }
}

dlc_wizards_trail.dense_trail_end_event_03 = {
    {
        "set_master_event_running",
        name = "trail_end_event_03"
    },
    {
        "disable_kick"
    },
    {
        "enable_bots_in_carry_event"
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
        spawner_id = "trail_end_event_spawner_under_water",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 2
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_urn_03",
        composition_type = "event_chaos_extra_spice_medium"
    },
    {
        "delay",
        duration = 3
    },
    {
        "spawn_special",
        amount = 2,
        breed_name = {
            "chaos_vortex_sorcerer",
            "chaos_corruptor_sorcerer"
        }
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 30,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_urn_02",
        composition_type = "chaos_berzerkers_medium"
    },
    {
        "spawn_special",
        amount = 1,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner",
            "skaven_pack_master"
        }
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_end_event_last_wave_olesya",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "delay",
        duration = 25
    },
    {
        "continue_when",
        duration = 50,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_3",
        composition_type = "chaos_warriors"
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_end_event_first_wave",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "spawn_special",
        amount = 3,
        breed_name = {
            "chaos_vortex_sorcerer",
            "chaos_corruptor_sorcerer",
            "skaven_gutter_runner",
            "skaven_pack_master"
        }
    },
    {
        "delay",
        duration = 25
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "chaos_warriors"
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_end_event_first_wave",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "spawn_special",
        amount = 3,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner",
            "skaven_pack_master"
        }
    },
    {
        "delay",
        duration = 25
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "chaos_warriors"
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_end_event_first_wave",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "spawn_special",
        amount = 3,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner",
            "skaven_pack_master"
        }
    },
    {
        "delay",
        duration = 25
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "chaos_warriors"
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_end_event_first_wave",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "spawn_special",
        amount = 3,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner",
            "skaven_pack_master"
        }
    },
    {
        "delay",
        duration = 25
    },
    {
        "continue_when",
        duration = 40,
        condition = function (t)
            return num_spawned_enemies() < 18
        end
    },
    {
        "event_horde",
        spawner_id = "trail_end_event_spawner_1",
        composition_type = "chaos_warriors"
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "trail_end_event_first_wave",
        composition_type = "dense_event_medium_chaos"
    },
    {
        "spawn_special",
        amount = 3,
        breed_name = {
            "chaos_corruptor_sorcerer",
            "chaos_vortex_sorcerer",
            "skaven_gutter_runner",
            "skaven_pack_master"
        }
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 60,
        condition = function (t)
            return num_spawned_enemies() < 8
        end
    },
    {
        "flow_event",
        flow_event_name = "trail_end_event_03_done"
    }
}

return dlc_wizards_trail