IntensitySettings = IntensitySettings or {}

local director_intensity = table.clone(IntensitySettings.default)

director_intensity = {
    intensity_add_per_percent_dmg_taken = 1,
    decay_delay = 3,
    decay_per_second = 2,
    intensity_add_knockdown = 50,
    intensity_add_pounced_down = 10,
    max_intensity = 1000,
    intensity_add_nearby_kill = 1,
    disabled = false,
    difficulty_overrides = {
        hard = {
            intensity_add_per_percent_dmg_taken = 1.5,
            decay_per_second = 3
        },
        harder = {
            intensity_add_per_percent_dmg_taken = 1,
            decay_per_second = 3
        },
        hardest = {
            intensity_add_per_percent_dmg_taken = 0.5,
            decay_per_second = 4
        },
        cataclysm = {
            intensity_add_per_percent_dmg_taken = 0.2,
            decay_per_second = 6
        },
        cataclysm_2 = {
            intensity_add_per_percent_dmg_taken = 0.2,
            decay_per_second = 6
        },
        cataclysm_3 = {
            intensity_add_per_percent_dmg_taken = 0.2,
            decay_per_second = 6
        }
    }
}

return director_intensity