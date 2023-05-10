PackSpawningSettings = PackSpawningSettings or {}

local director_packspawn = table.clone(PackSpawningSettings.default)

director_packspawn.roaming_set = {
    breed_packs = "dense_standard",
    breed_packs_peeks_overide_chance = {
        0.01,
        0.75
    },
    breed_packs_override = {
        {
            "dense_standard",
            2,
            0.035
        },
        {
            "dense_standard",
            2,
            0.035
        },
        {
            "dense_standard",
            2,
            0.03
        },
        {
            "dense_standard",
            2,
            0.03
        }
    }
}
director_packspawn.basics.goal_density = 20 
director_packspawn.basics.spawn_cycle_length = 50

return director_packspawn