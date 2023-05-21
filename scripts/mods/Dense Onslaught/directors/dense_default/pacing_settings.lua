local mod = get_mod("Dense Onslaught")
PacingSettings = PacingSettings or {}

local director_pacing = table.clone(PacingSettings.default)

local name = "dense_default"
director_pacing.horde = mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/horde_settings")

director_pacing.peak_fade_threshold = 110                      -- Shared between all versions of Onslaught
director_pacing.peak_intensity_threshold = 120				  -- Shared between all versions of Onslaught
director_pacing.sustain_peak_duration = { 5, 10 }			  -- Shared between all versions of Onslaught
director_pacing.relax_duration = { 7, 10 }                     -- Shared between all versions of Onslaught
director_pacing.horde_frequency = { 30, 45 }                   -- Shared between all versions of Onslaught
director_pacing.multiple_horde_frequency = { 6, 9 }            -- Shared between all versions of Onslaught
director_pacing.max_delay_until_next_horde = { 20, 30 }        -- Shared between all versions of Onslaught
director_pacing.horde_startup_time = { 10, 20 }                -- Shared between all versions of Onslaught
director_pacing.multiple_hordes = 3							  -- Introduced in Dense
director_pacing.mini_patrol.only_spawn_above_intensity = 0
director_pacing.mini_patrol.only_spawn_below_intensity = 900  -- Same as Dutch
director_pacing.mini_patrol.frequency = { 6, 10 }             -- Same as Dutch
director_pacing.difficulty_overrides = {
    hard = {
        multiple_hordes = 3,
        peak_intensity_threshold = 50,
        horde_frequency = {
            60,
            110
        },
        multiple_horde_frequency = {
            8,
            13
        },
        relax_duration = {
            35,
            45
        }
    },
    harder = {
        multiple_hordes = 3,
        peak_intensity_threshold = 55,
        horde_frequency = {
            50,
            100
        },
        multiple_horde_frequency = {
            8,
            12
        },
        relax_duration = {
            35,
            45
        }
    },
    hardest = {
        multiple_hordes = 3,
        peak_intensity_threshold = 70,
        horde_frequency = {
            50,
            100
        },
        multiple_horde_frequency = {
            7,
            10
        },
        relax_duration = {
            25,
            35
        }
    },
    cataclysm = {
        multiple_hordes = 3,
        peak_intensity_threshold = 80,
        horde_frequency = {
            50,
            100
        },
        multiple_horde_frequency = {
            7,
            10
        },
        relax_duration = {
            25,
            35
        }
    },
    cataclysm_2 = {
        multiple_hordes = 3,
        peak_intensity_threshold = 90,
        horde_frequency = {
            50,
            100
        },
        multiple_horde_frequency = {
            7,
            10
        },
        relax_duration = {
            25,
            35
        }
    },
    cataclysm_3 = {
        multiple_hordes = 5,
        peak_intensity_threshold = 600,
        horde_frequency = {
            1,
            2
        },
        multiple_horde_frequency = {
            7,
            10
        },
        relax_duration = {
            5,
            10
        }
    }
}

director_pacing.delay_horde_threat_value = {
    harder = 60,
    hard = 50,
    normal = 40,
    hardest = 60,
    cataclysm = 80000,
    cataclysm_3 = 10000,
    cataclysm_2 = 10000,
    easy = 40
}

director_pacing.delay_specials_threat_value = {
    harder = 60,
    hard = 50,
    normal = 40,
    hardest = 60,
    cataclysm = 10000,
    cataclysm_3 = 10000,
    cataclysm_2 = 10000,
    easy = 40
}


return director_pacing