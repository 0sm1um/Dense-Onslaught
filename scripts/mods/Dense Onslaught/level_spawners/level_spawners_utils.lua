local mod = get_mod("Dense Onslaught")
-- for k,v in pairs(mod.custom_spawners_by_level) do
--     mod:echo(v)
-- end


local LevelSpawnerUtils = LevelSpawnerUtils or {}

mod.custom_spawners_by_level = mod.custom_spawners_by_level or {}

LevelSpawnerUtils.initalize_custom_spawner = function(name)

    local custom_spawn_data = mod:dofile("scripts/mods/Dense Onslaught/level_spawners/levels/"..name)
    mod.custom_spawners_by_level[name] = custom_spawn_data

end

LevelSpawnerUtils.spawn_funcs = {
    setup_custom_raw_spawner = function (world, unit_name, terror_event_id, position_box, rotation_box, spawner_table, hidden)
        local position = position_box:unbox()
        local rotation = rotation_box:unbox()
        local unit = World.spawn_unit(world, unit_name, position, rotation)
        Unit.set_data(unit, "terror_event_id", terror_event_id)
        Unit.set_data(unit, "extensions", 0, "AISpawner")
        spawner_table[#spawner_table + 1] = unit
        return unit
    end,
    setup_custom_horde_spawner = function (world, unit_name, terror_event_id, position_box, rotation_box, spawner_table, hidden)
        local position = position_box:unbox()
        local rotation = rotation_box:unbox()
        local unit = World.spawn_unit(world, unit_name, position, rotation)
        Unit.set_data(unit, "terror_event_id", terror_event_id)
        Unit.set_data(unit, "hidden", hidden)
        Unit.set_data(unit, "spawner_settings", "spawner1", "enabled", true)
        Unit.set_data(unit, "spawner_settings", "spawner1", "node", "a_spawner_start")
        Unit.set_data(unit, "spawner_settings", "spawner1", "spawn_rate", 2)
        Unit.set_data(unit, "spawner_settings", "spawner1", "animation_events", 0, "spawn_idle")
        Unit.set_data(unit, "extensions", 0, "AISpawner")
        spawner_table[#spawner_table + 1] = unit
        return unit
    end,
}

return LevelSpawnerUtils