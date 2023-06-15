local mod = get_mod("Dense Onslaught")

--this table is used for a temporary fixe to avoid tons of copy pasting
local replacement_directors = {
    default = "default",
    default_light = "default_light",
    skaven = "skaven",
    skaven_light = "skaven_light",
    chaos = "chaos",
    chaos_light = "chaos_light",
}

mod:hook(LevelAnalysis, "_setup_level_data", function(func, self, level_name, level_seed)

    
    local result = func(self, level_name, level_seed)
    if not string.find(level_name, "inn_level") then
        -- mod:echo(self.spawn_zone_data.roaming_set)
        if mod:get("dense_active") then
            local dense_difficulty = "dense_"..string.gsub(mod:get("dense_level").."_", "medium_", "")
            local giga = mod:get("giga_ambients")
            for k,v in pairs(self.spawn_zone_data.zones) do

                --probably need to revist this for performance reasons as this will do quite a lot of string operations
                if v.roaming_set then
                    -- self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"
                    -- mod:echo(self.spawn_zone_data.zones[k].roaming_set.."       dense_"..self.spawn_zone_data.zones[k].roaming_set)
                    -- self.spawn_zone_data.zones[k].roaming_set = "dense_"..tostring(self.spawn_zone_data.zones[k].roaming_set)
                    local og_driector = self.spawn_zone_data.zones[k].roaming_set
                    local new_director = replacement_directors[og_driector] or "default"
                    self.spawn_zone_data.zones[k].roaming_set = dense_difficulty..new_director
                end

                -- --populate unpopulated ambient zones
                -- if (not v.roaming_set) and mod:get("populate_all_zones") then
                if (not v.roaming_set) and giga then
                    -- self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"
                    local og_driector = self.spawn_zone_data.zones[k].roaming_set
                    local new_director = replacement_directors[og_driector] or "default"
                    self.spawn_zone_data.zones[k].roaming_set = dense_difficulty..new_director
                end

                -- self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"

                --populate all zones with override director
                -- self.spawn_zone_data.zones[k].roaming_set = directors[math.random(1, #directors)]

            end
        end
    end
    return result 
end)

mod:hook(SpawnZoneBaker, "populate_spawns_by_rats", function (func, self, global_pack_spawning_setting, spawns, pack_sizes, pack_rotations, pack_members, zone_data_list, zone_list, ...)

    if mod:get("dense_active") then
        if mod:get("giga_ambients") then
            for k,v in pairs(zone_list) do
                zone_list[k].density = 5
            end
        end
    end
    -- for k,v in pairs(zone_list) do
    --     zone_list[k].density = mod:get("zone_density")
    -- end
    local result = func(self, global_pack_spawning_setting, spawns, pack_sizes, pack_rotations, pack_members, zone_data_list, zone_list, ...)

    return result
end)

mod:hook(ConflictDirector,"set_updated_settings", function (func, self, conflict_settings_name)
   
    if mod:get("dense_active") then
        if not string.find(conflict_settings_name, "dense") then
            local dense_difficulty = "dense_"..string.gsub(mod:get("dense_level").."_", "medium_", "")
            conflict_settings_name = dense_difficulty .. (replacement_directors[conflict_settings_name] or "default")
        end

    end

    return func(self, conflict_settings_name)
end)

local hub_levels = {
	inn_level = true,
	inn_level_skulls = true,
	inn_level_celebrate = true,
	inn_level_halloween = true,
	inn_level_sonnstill = true
}

local is_in_keep = function(self)	
	if Managers and Managers.state and Managers.state.game_mode then
		local level_key = Managers.state.game_mode:level_key()
		return level_key and hub_levels[level_key]
	end
end

mod:hook(ConflictDirector, "update", function (func, self, dt, t, ...)

	-- Use original function if necessary
	if not is_in_keep() then
		return func(self, dt, t, ...)
	end
end)
