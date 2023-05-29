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
    -- mod:echo(self.spawn_zone_data.roaming_set)
    if mod:is_enabled() then
        local dense_difficulty = "dense_"..string.gsub(mod:get("dense_level"), "medium", "").."_"
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
    return result 
end)

mod:hook(SpawnZoneBaker, "populate_spawns_by_rats", function (func, self, global_pack_spawning_setting, spawns, pack_sizes, pack_rotations, pack_members, zone_data_list, zone_list, ...)

    if mod:get("giga_ambients") then
        for k,v in pairs(zone_list) do
            zone_list[k].density = 5
        end
    end

    -- for k,v in pairs(zone_list) do
    --     zone_list[k].density = mod:get("zone_density")
    -- end
    local result = func(self, global_pack_spawning_setting, spawns, pack_sizes, pack_rotations, pack_members, zone_data_list, zone_list, ...)

    return result
end)