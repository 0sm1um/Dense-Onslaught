local mod = get_mod("Dense Onslaught")

	-- Settings controlling basic pacing.
	
	--[[
	My rationale for these settings are as follows:
	I want the exact same wave composition as Dutch.
	I just want to increase the time players have to clear the wave.
	--]]
	
	RecycleSettings.max_grunts = 175                                      -- More than Ons+, Less than Dutch
	RecycleSettings.push_horde_if_num_alive_grunts_above = 200            -- Same as Ons+
	
	PacingSettings.default.peak_fade_threshold = 110                      -- Shared between all versions of Onslaught
	PacingSettings.default.peak_intensity_threshold = 120				  -- Shared between all versions of Onslaught
	PacingSettings.default.sustain_peak_duration = { 5, 10 }			  -- Shared between all versions of Onslaught
	PacingSettings.default.relax_duration = { 7, 10 }                     -- Shared between all versions of Onslaught
	PacingSettings.default.horde_frequency = { 30, 45 }                   -- Shared between all versions of Onslaught
	PacingSettings.default.multiple_horde_frequency = { 6, 9 }            -- Shared between all versions of Onslaught
	PacingSettings.default.max_delay_until_next_horde = { 60, 72 }        -- Shared between all versions of Onslaught
	PacingSettings.default.horde_startup_time = { 10, 20 }                -- Shared between all versions of Onslaught

	PacingSettings.default.mini_patrol.only_spawn_above_intensity = 0
	PacingSettings.default.mini_patrol.only_spawn_below_intensity = 900  -- Same as Dutch
	PacingSettings.default.mini_patrol.frequency = { 6, 10 }             -- Same as Dutch

	PacingSettings.default.difficulty_overrides = nil

	PacingSettings.chaos.peak_fade_threshold = 110                        -- Shared between all versions of Onslaught
	PacingSettings.chaos.peak_intensity_threshold = 120                   -- Shared between all versions of Onslaught
	PacingSettings.chaos.sustain_peak_duration = { 5, 10 }                -- Shared between all versions of Onslaught
	PacingSettings.chaos.relax_duration = { 10, 13 }					  -- Shared between all versions of Onslaught
	PacingSettings.chaos.horde_frequency = { 30, 45 } 					  -- Shared between all versions of Onslaught
	PacingSettings.chaos.multiple_horde_frequency = { 6, 9 } 			  -- Shared between all versions of Onslaught
	PacingSettings.chaos.max_delay_until_next_horde = { 75, 95 }		  -- Increased from Dutch, to base Onslaught numbers
	PacingSettings.chaos.horde_startup_time = { 10, 20 }				  -- Shared between all versions of Onslaught
	PacingSettings.chaos.multiple_hordes = 3							  -- Shared between all versions of Onslaught

	PacingSettings.chaos.mini_patrol.only_spawn_above_intensity = 0       -- Same as Dutch
	PacingSettings.chaos.mini_patrol.only_spawn_below_intensity = 900     -- Same as Dutch
	PacingSettings.chaos.mini_patrol.frequency = { 6, 10 }                -- Same as Dutch

	PacingSettings.chaos.difficulty_overrides = nil

	PacingSettings.beastmen.peak_fade_threshold = 110					  -- Shared between all versions of Onslaught
	PacingSettings.beastmen.peak_intensity_threshold = 120				  -- Shared between all versions of Onslaught
	PacingSettings.beastmen.sustain_peak_duration = { 5, 10 }			  -- Shared between all versions of Onslaught
	PacingSettings.beastmen.relax_duration = { 10, 13 } 				  -- Shared between all versions of Onslaught
	PacingSettings.beastmen.horde_frequency = { 35, 50 } 				  -- Shared between all versions of Onslaught
	PacingSettings.beastmen.multiple_horde_frequency = { 6, 9 } 		  -- Shared between all versions of Onslaught
	PacingSettings.beastmen.max_delay_until_next_horde = { 75, 95 }       -- Increased from Dutch, to base Onslaught numbers
	PacingSettings.beastmen.horde_startup_time = { 10, 20 }               -- Shared between all versions of Onslaught

	PacingSettings.beastmen.mini_patrol.only_spawn_above_intensity = 0
	PacingSettings.beastmen.mini_patrol.only_spawn_below_intensity = 900
	PacingSettings.beastmen.mini_patrol.frequency = { 6, 10 }

	PacingSettings.beastmen.difficulty_overrides = nil