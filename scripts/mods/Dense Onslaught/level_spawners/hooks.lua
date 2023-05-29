local mod = get_mod("Dense Onslaught")

local LevelSpawnerUtils = mod:dofile("scripts/mods/Dense Onslaught/level_spawners/level_spawners_utils")

mod:hook(StateIngame, "on_enter", function (func, self)
	local result = func(self)
	
	if Managers.player.is_server then
		local custom_spawners = {}
		local level_key = Managers.state.game_mode:level_key()

        local custom_spawn_data = mod.custom_spawners_by_level[level_key]
        if custom_spawn_data then
            for _,spawning_data in pairs(custom_spawn_data) do
                local spawner_func = LevelSpawnerUtils.spawn_funcs[spawning_data.spawn_func]
                local unit_name = spawning_data.unit_name or "units/hub_elements/empty"
                local pos = spawning_data.position
                local rot = spawning_data.rotation or Quaternion.identity()
                local terror_event_id = spawning_data.terror_event_id
                local hidden = spawning_data.hidden
                local unit = spawner_func(self.world, unit_name, terror_event_id, pos, rot, custom_spawners, hidden)
            end
        end

        local entity_manager = Managers.state.entity
		entity_manager:add_and_register_units(self.world, custom_spawners, #custom_spawners)

	end

	return result
end)