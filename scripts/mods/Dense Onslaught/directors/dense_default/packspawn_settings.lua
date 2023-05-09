PackSpawningSettings = PackSpawningSettings or {}

local director_packspawn = table.clone(PackSpawningSettings.default)

director_packspawn.roaming_set = {
    breed_packs = "standard",
    breed_packs_peeks_overide_chance = {
        0.5,
        0.75
    },
    breed_packs_override = {
        {
            "skaven",
            2,
            0.035
        },
        {
            "plague_monks",
            2,
            0.035
        },
        {
            "marauders",
            2,
            0.03
        },
        {
            "marauders_elites",
            2,
            0.03
        }
    }
}

return director_packspawn