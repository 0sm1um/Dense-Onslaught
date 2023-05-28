local mod = get_mod("Dense Onslaught")

--this table is used for a temporary fixe to avoid tons of copy pasting
local replacement_directors = {
    default = "dense_default",
    default_light = "dense_default",
    skaven = "dense_skaven",
    skaven_light = "dense_skaven",
    chaos = "dense_chaos",
    chaos_light = "dense_chaos",
}

mod:hook(LevelAnalysis, "_setup_level_data", function(func, self, level_name, level_seed)

    
    local result = func(self, level_name, level_seed)
    -- mod:echo(self.spawn_zone_data.roaming_set)
    for k,v in pairs(self.spawn_zone_data.zones) do

        if v.roaming_set and mod:is_enabled() then
            -- self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"
            -- mod:echo(self.spawn_zone_data.zones[k].roaming_set.."       dense_"..self.spawn_zone_data.zones[k].roaming_set)
            -- self.spawn_zone_data.zones[k].roaming_set = "dense_"..tostring(self.spawn_zone_data.zones[k].roaming_set)
            local og_driector = self.spawn_zone_data.zones[k].roaming_set
            
            self.spawn_zone_data.zones[k].roaming_set = replacement_directors[og_driector] or "dense_default"
            mod:echo(og_driector.."     "..self.spawn_zone_data.zones[k].roaming_set)
        end

        -- --populate unpopulated ambient zones
        -- if not v.roaming_set and mod:get("populate_all_zones") then
        --     self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"
        -- end

        -- self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"

        --populate all zones with override director
        -- self.spawn_zone_data.zones[k].roaming_set = directors[math.random(1, #directors)]

    end
    return result 
end)

-- mod:hook(SpawnZoneBaker, "populate_spawns_by_rats", function (func, self, global_pack_spawning_setting, spawns, pack_sizes, pack_rotations, pack_members, zone_data_list, zone_list, ...)

--     for k,v in pairs(zone_list) do
--         zone_list[k].density = mod:get("zone_density")
--     end
--     local result = func(self, global_pack_spawning_setting, spawns, pack_sizes, pack_rotations, pack_members, zone_data_list, zone_list, ...)

--     return result
-- end)