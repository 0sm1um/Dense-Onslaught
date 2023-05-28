BossSettings = BossSettings or {}

local director_boss = table.clone(BossSettings.chaos)

director_boss.boss_events.events = {
    "event_boss",
    "event_patrol"
}

director_boss.boss_events.event_lookup = {
    event_boss = {
        "boss_event_rat_ogre",
        "boss_event_chaos_troll",
        "boss_event_chaos_spawn",
        "boss_event_minotaur"
    },
    event_patrol = {
        "dense_boss_event_chaos_spline_patrol"
    }
}

return director_boss