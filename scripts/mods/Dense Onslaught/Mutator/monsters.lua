local mod = get_mod("Dense Onslaught")

	Breeds.skaven_rat_ogre.threat_value = 25
	Breeds.skaven_stormfiend.threat_value = 25
	Breeds.chaos_spawn.threat_value = 25
	Breeds.chaos_troll.threat_value = 25
	Breeds.beastmen_minotaur.threat_value = 25
--[[
	Managers.state.conflict:set_threat_value("skaven_rat_ogre", 25)
	Managers.state.conflict:set_threat_value("skaven_stormfiend", 25)
	Managers.state.conflict:set_threat_value("chaos_spawn", 25)
	Managers.state.conflict:set_threat_value("chaos_troll", 25)
	Managers.state.conflict:set_threat_value("beastmen_minotaur", 25)
--]]
	BossSettings.default.boss_events.events = {
			"event_boss",
			"event_patrol"
		}

	BossSettings.default_light.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.skaven.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.skaven_light.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.chaos.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.chaos_light.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.beastmen.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.skaven_beastmen.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.chaos_beastmen.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.beastmen_light.boss_events.events = {
		"event_boss",
		"event_patrol"
	}

	BossSettings.default.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.default_light.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.skaven.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.skaven_light.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.chaos.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.chaos_light.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.beastmen.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.skaven_beastmen.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.chaos_beastmen.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}

	BossSettings.beastmen_light.boss_events.event_lookup.event_boss = {
		"boss_event_rat_ogre",
		"boss_event_chaos_troll",
		"boss_event_chaos_spawn",
		"boss_event_minotaur"
	}
