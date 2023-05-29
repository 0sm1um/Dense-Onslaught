local mod = get_mod("Dense Onslaught")
PacingSettings = PacingSettings or {}

local director_pacing = table.clone(PacingSettings.chaos)

local name = "dense_chaos"
director_pacing.horde = mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/horde_settings")

director_pacing.peak_fade_threshold = 110                      -- Shared between all versions of Onslaught
director_pacing.peak_intensity_threshold = 120				  -- Shared between all versions of Onslaught
director_pacing.sustain_peak_duration = { 5, 10 }			  -- Shared between all versions of Onslaught
director_pacing.relax_duration = { 7, 10 }                     -- Shared between all versions of Onslaught
director_pacing.horde_frequency = { 30, 45 }                   -- Shared between all versions of Onslaught
director_pacing.multiple_horde_frequency = { 6, 9 }            -- Shared between all versions of Onslaught
director_pacing.max_delay_until_next_horde = { 60, 72 }        -- Shared between all versions of Onslaught
director_pacing.horde_startup_time = { 10, 20 }                -- Shared between all versions of Onslaught
director_pacing.multiple_hordes = 3							  -- Introduced in Dense

director_pacing.mini_patrol.only_spawn_above_intensity = 0
director_pacing.mini_patrol.only_spawn_below_intensity = 900  -- Same as Dutch
director_pacing.mini_patrol.frequency = { 6, 10 }             -- Same as Dutch

director_pacing.difficulty_overrides = nil

return director_pacing