local mod = get_mod("Dense Onslaught")

-- Ons+ Event

HordeCompositions.event_bell_monks = {
	{
		name = "plain",
		weight = 7,
		breeds = {
			"skaven_plague_monk",
			{
				5,
				6
			}
		}
	}
	
}	

HordeCompositions.event_bell_warriors = {
	{
		name = "plain",
		weight = 7,
		breeds = {
			"chaos_warrior",
			10
		}
	}	
}

TerrorEventBlueprints.bell.canyon_bell_event = {
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
		composition_type = "event_medium"
	},
	{
		"event_horde",
		spawner_id = "canyon_bell_event",
		composition_type = "event_extra_spice_small"
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
		"delay",
		duration = 5
	},
	{
		"continue_when",
		condition = function (t)
			return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_clan_rat_with_shield") < 8 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_plague_monk") < 4
		end
	},
	{
		"flow_event",
		flow_event_name = "canyon_bell_event_done"
	}
}

TerrorEventBlueprints.bell.canyon_ogre_boss = {
	{
		"control_specials",
		enable = true
	},
	{
		"control_pacing",
		enable = false
	},
	{
		"spawn_at_raw",
		spawner_id = "canyon_ogre_boss",
		breed_name = "chaos_troll"
	},
	{
		"delay",
		duration = 2
	},
	{
		"spawn_at_raw",
		spawner_id = "onslaught_second_ogre",
		breed_name = {
			"skaven_rat_ogre",
		}	
	},
	{
		"event_horde",
		limit_spawners = 3,
		spawner_id = "onslaught_bell_boss_exit",
		composition_type = "event_extra_spice_medium"
	},
	{
		"event_horde",
		limit_spawners = 3,
		spawner_id = "onslaught_bell_boss_exit",
		composition_type = "onslaught_event_skaven_elite_adds"
	},			
	{	
		"event_horde",
		spawner_id = "canyon_bell_event",
		composition_type = "event_bell_warriors"
	}	
}

TerrorEventBlueprints.bell.canyon_escape_event = {
	{
		"set_master_event_running",
		name = "canyon_escape_event"
	},
	{
		"set_freeze_condition",
		max_active_enemies = 100
	},
	{
		"continue_when",
		duration = 5,
		condition = function ()
		if (count_breed("skaven_rat_ogre") + count_breed("chaos_troll") + count_breed("chaos_spawn") + count_breed("beastmen_minotaur")) > 0 then
			 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
			 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
			 return true
		end
			return count_event_breed("skaven_slave") < 200
		end
	},	
	{
		"event_horde",
		spawner_id = "canyon_escape_event",
		composition_type = "event_extra_spice_medium"
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
		enable = true
	},
	{
		"control_hordes",
		enable = true
	},
	{
		"delay",
		duration = 25
	},
	{
		"continue_when",
		condition = function ()
		if (count_breed("skaven_rat_ogre") + count_breed("chaos_troll") + count_breed("chaos_spawn") + count_breed("beastmen_minotaur")) > 0 then
			Managers.state.conflict:level_flow_event("canyon_escape_event_done")
			return true
		end	
			return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_clan_rat_with_shield") < 8 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 3
		end
	}
}


--[[

HordeCompositions.event_bell_monks = {
	{
		name = "plain",
		weight = 7,
		breeds = {
			"skaven_plague_monk",
			{
				3,
				4
			}
		}
	}
}

HordeCompositions.event_bell_warriors = {
	{
		name = "plain",
		weight = 7,
		breeds = {
			"chaos_warrior",
			{
				8,
				8
			},
			"skaven_storm_vermin",
			{
				4,
				4
			}
			
		}
	}	
}

TerrorEventBlueprints.bell.canyon_bell_event = {
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
		composition_type = "event_medium"
	},
	{
		"event_horde",
		spawner_id = "canyon_bell_event",
		composition_type = "event_extra_spice_large"
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

TerrorEventBlueprints.bell.canyon_ogre_boss = {
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

TerrorEventBlueprints.bell.canyon_escape_event = {
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
		composition_type = "event_large"
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
--]]