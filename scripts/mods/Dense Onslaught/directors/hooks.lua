local mod = get_mod("Dense Onslaught")

mod:hook(LevelAnalysis, "_setup_level_data", function(func, self, level_name, level_seed)

    
    local result = func(self, level_name, level_seed)
    -- mod:echo(self.spawn_zone_data.roaming_set)
    for k,v in pairs(self.spawn_zone_data.zones) do

        if v.roaming_set and mod:is_enabled() then
            self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"
        end

        --populate unpopulated ambient zones
        if not v.roaming_set and mod:get("populate_all_zones") then
            self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"
        end

        --populate all zones with override director
        -- self.spawn_zone_data.zones[k].roaming_set = directors[math.random(1, #directors)]

    end
    return result 
end)