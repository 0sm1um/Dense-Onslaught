local mod = get_mod("Dense Onslaught")
local BreedpackUtils = {}

BreedpackUtils.add_generate_missing_pack_wieghts = function(pack_table)
    for index,pack_data in ipairs(pack_table) do
        -- pack_table[index]["spawn_weight"] = 1  --some spawn wieght function
        local total_armor_rating = 1
        for breed_name, breed_data in ipairs(pack_data) do
            total_armor_rating = total_armor_rating + breed_data.armor_category%5
        end
        pack_table[index]["spawn_weight"] = 1/(total_armor_rating)
    end

    return pack_table
end

BreedpackUtils.add_new_pack = function(name, BreedPacks_table)
    local new_pack = mod:dofile("scripts/mods/Dense Onslaught/breedpacks/"..name)
    BreedPacks_table[name] = BreedpackUtils.add_generate_missing_pack_wieghts(new_pack)
end

return BreedpackUtils