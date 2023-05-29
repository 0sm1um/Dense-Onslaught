PackSpawningSettings = PackSpawningSettings or {}

local director_packspawn = table.clone(PackSpawningSettings.chaos)

director_packspawn.area_density_coefficient = 0.1

director_packspawn.roaming_set = {
    breed_packs = "dense_chaos",
    breed_packs_peeks_overide_chance = {
        0,
        0
    },
    breed_packs_override = {
        {
            "marauders_and_warriors",
            2,
            0.03
        },
        {
            "marauders_shields",
            2,
            0.03
        },
        {
            "marauders_elites",
            2,
            0.03
        },
        {
            "marauders_berzerkers",
            2,
            0.03
        }
    }
}

return director_packspawn