local catacombs = {}

--Because otherwise triple boss event is triggered early by respawning player..
local function living_player_has_dropped()
    for i, player in pairs(Managers.player:players()) do
        if player.player_unit then
            local status_extension = ScriptUnit.has_extension(player.player_unit, "status_system")
            if status_extension and not status_extension.is_ready_for_assisted_respawn(status_extension) then
                if POSITION_LOOKUP[player.player_unit].z < -15 then
                    return true
                end
            end
        end
    end
    return false
end

catacombs.dense_catacombs_puzzle_event_loop = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_puzzle_event_loop"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "puzzle_event_loop",
        composition_type = "dense_event_extra_spice_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "puzzle_event_loop",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "puzzle_event_loop",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and count_event_breed("skaven_slave") < 14 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 4
        end
    },
    {
        "delay",
        duration = 7
    },
    {
        "flow_event",
        flow_event_name = "catacombs_puzzle_event_loop_done"
    }
}

catacombs.dense_catacombs_puzzle_event_a = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_puzzle_event"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "onslaught_chaos_warriors"
    },
    {
        "flow_event",
        flow_event_name = "catacombs_puzzle_event_a_done"
    }
}

catacombs.dense_catacombs_puzzle_event_b = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_puzzle_event"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "event_maulers_medium"
    },
    {
        "flow_event",
        flow_event_name = "catacombs_puzzle_event_b_done"
    }
}

catacombs.dense_catacombs_puzzle_event_c = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_puzzle_event"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "onslaught_chaos_berzerkers_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "enemy_door",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "flow_event",
        flow_event_name = "catacombs_puzzle_event_c_done"
    }
}

catacombs.dense_catacombs_special_event_a = {
    {
        "spawn_at_raw",
        spawner_id = "puzzle_special_01",
        breed_name = "skaven_ratling_gunner"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "puzzle_event_loop",
        composition_type = "onslaught_storm_vermin_shields_small"
    }
}

catacombs.dense_catacombs_special_event_b = {
    {
        "spawn_at_raw",
        spawner_id = "puzzle_special_02",
        breed_name = "skaven_poison_wind_globadier"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "puzzle_event_loop",
        composition_type = "onslaught_plague_monks_medium"
    }
}

catacombs.dense_catacombs_special_event_c = {
    {
        "spawn_at_raw",
        spawner_id = "puzzle_special_01",
        breed_name = "skaven_warpfire_thrower"
    },
    {
        "spawn_at_raw",
        spawner_id = "puzzle_special_02",
        breed_name = "skaven_warpfire_thrower"
    },
    {
        "spawn_at_raw",
        spawner_id = "puzzle_special_03",
        breed_name = "skaven_warpfire_thrower"
    }		
}

catacombs.dense_catacombs_load_sorcerers = {
    {
        "force_load_breed_package",
        breed_name = "chaos_dummy_sorcerer"
    },
    {
        "continue_when",
        condition = function (t)
            return living_player_has_dropped()
        end
    },
    {
        "delay",
        duration = 10
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_pool_boss_1",
        breed_name = "chaos_spawn"
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_pool_boss_2",
        breed_name = "chaos_troll"
    },
    {
        "spawn_at_raw",
        spawner_id = "onslaught_pool_boss_3",
        breed_name = {
            "skaven_rat_ogre",
            "skaven_stormfiend"
        }
    }	
}

catacombs.dense_catacombs_end_event_01 = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_end_event"
    },
    {
        "play_stinger",
        stinger_name = "enemy_horde_chaos_stinger"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "end_event",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event",
        composition_type = "onslaught_chaos_shields"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "onslaught_chaos_warriors"
    },	
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 6 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "flow_event",
        flow_event_name = "catacombs_end_event_01_done"
    }
}

catacombs.dense_catacombs_end_event_02 = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_end_event"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "skaven_shields"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event",
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
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
        end
    },		
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "end_event",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "event_maulers_medium"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "dense_event_smaller"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
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
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "dense_event_medium"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "onslaught_storm_vermin_shields_small"
    },
    {
        "delay",
        duration = 5
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "event_horde",
        limit_spawners = 2,
        spawner_id = "end_event",
        composition_type = "onslaught_storm_vermin_medium"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 6,
        spawner_id = "end_event",
        composition_type = "dense_event_small_chaos"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "onslaught_chaos_berzerkers_small"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "event_maulers_small"
    },
    {
        "delay",
        duration = 5
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
        spawner_id = "end_event",
        composition_type = "onslaught_storm_vermin_small"
    },
    {
        "delay",
        duration = 10
    },
    
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "dense_event_large"
    },
    {
        "event_horde",
        limit_spawners = 4,
        spawner_id = "end_event",
        composition_type = "dense_event_extra_spice_large"
    },
    {
        "delay",
        duration = 10
    },
    {
        "continue_when",
        duration = 80,
        condition = function (t)
            return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
        end
    },
    {
        "delay",
        duration = 6
    },
    {
        "flow_event",
        flow_event_name = "catacombs_end_event_02_done"
    }
}

catacombs.dense_catacombs_end_event_specials_01 = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_end_event_specials"
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
        flow_event_name = "catacombs_end_event_specials_done"
    }
}

catacombs.dense_catacombs_end_event_specials_02 = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_end_event_specials"
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
        flow_event_name = "catacombs_end_event_specials_done"
    }
}

catacombs.dense_catacombs_end_event_specials_03 = {
    {
        "set_freeze_condition",
        max_active_enemies = 100
    },
    {
        "set_master_event_running",
        name = "catacombs_end_event_specials"
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
        flow_event_name = "catacombs_end_event_specials_done"
    }
}

return catacombs