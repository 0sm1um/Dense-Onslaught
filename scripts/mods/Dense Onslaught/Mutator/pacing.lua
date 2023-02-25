local mod = get_mod("Dense Onslaught")

	-- Settings controlling basic pacing.
	PacingSettings.default.peak_fade_threshold = 110
	PacingSettings.default.peak_intensity_threshold = 120
	PacingSettings.default.sustain_peak_duration = { 5, 10 }
	PacingSettings.default.relax_duration = { 7, 10 }
	PacingSettings.default.horde_frequency = { 30, 45 }
	PacingSettings.default.multiple_horde_frequency = { 6, 9 }
	PacingSettings.default.max_delay_until_next_horde = { 60, 72 }
	PacingSettings.default.horde_startup_time = { 10, 20 }

	PacingSettings.default.mini_patrol.only_spawn_above_intensity = 0
	PacingSettings.default.mini_patrol.only_spawn_below_intensity = 900
	PacingSettings.default.mini_patrol.frequency = { 6, 10 }

	PacingSettings.default.difficulty_overrides = nil

	PacingSettings.chaos.peak_fade_threshold = 110
	PacingSettings.chaos.peak_intensity_threshold = 120
	PacingSettings.chaos.sustain_peak_duration = { 5, 10 }
	PacingSettings.chaos.relax_duration = { 10, 13 }
	PacingSettings.chaos.horde_frequency = { 30, 45 }
	PacingSettings.chaos.multiple_horde_frequency = { 6, 9 }
	PacingSettings.chaos.max_delay_until_next_horde = { 70, 90 }
	PacingSettings.chaos.horde_startup_time = { 10, 20 }
	PacingSettings.chaos.multiple_hordes = 3

	PacingSettings.chaos.mini_patrol.only_spawn_above_intensity = 0
	PacingSettings.chaos.mini_patrol.only_spawn_below_intensity = 900
	PacingSettings.chaos.mini_patrol.frequency = { 6, 10 }

	PacingSettings.chaos.difficulty_overrides = nil

	PacingSettings.beastmen.peak_fade_threshold = 110
	PacingSettings.beastmen.peak_intensity_threshold = 120
	PacingSettings.beastmen.sustain_peak_duration = { 5, 10 }
	PacingSettings.beastmen.relax_duration = { 10, 13 }
	PacingSettings.beastmen.horde_frequency = { 35, 50 }
	PacingSettings.beastmen.multiple_horde_frequency = { 6, 9 }
	PacingSettings.beastmen.max_delay_until_next_horde = { 75, 95 }
	PacingSettings.beastmen.horde_startup_time = { 10, 20 }

	PacingSettings.beastmen.mini_patrol.only_spawn_above_intensity = 0
	PacingSettings.beastmen.mini_patrol.only_spawn_below_intensity = 900
	PacingSettings.beastmen.mini_patrol.frequency = { 6, 10 }

	PacingSettings.beastmen.difficulty_overrides = nil