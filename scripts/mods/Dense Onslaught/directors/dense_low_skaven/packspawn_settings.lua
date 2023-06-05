PackSpawningSettings = PackSpawningSettings or {}

local director_packspawn = table.clone(PackSpawningSettings.skaven)

director_packspawn.area_density_coefficient = 0.06

director_packspawn.roaming_set = {
    breed_packs = "dense_skaven",
    breed_packs_peeks_overide_chance = {
        0,
        0
    },
    breed_packs_override = {
        {
            "skaven",
            2,
            0.035
        },
        {
            "shield_rats",
            2,
            0.035
        },
        {
            "plague_monks",
            2,
            0.035
        }
    }
}

return director_packspawn