local mod = get_mod("Dense Onslaught")

-- Special Settings

	--[[
	My rationale for these settings are as follows:
	I want increased special pressure compared to Ons+.
	I am increasing the max special slots, and decreasing spawn timers.
	However settings identical to Dutch may be too challenging. So I've reduced
	slots by 1, and added more increased spawn timers.
	--]]


	SpecialsSettings.default.max_specials = 7					 -- 2 More than Ons+, 1 Less than Dutch
	PacingSettings.default.delay_specials_threat_value = nil
	PacingSettings.chaos = PacingSettings.default
	PacingSettings.beastmen = PacingSettings.beastmen

	SpecialsSettings.default.methods.specials_by_slots = {
		max_of_same = 2,                                         -- Same as Dutch
		coordinated_attack_cooldown_multiplier = 0.5,
		chance_of_coordinated_attack = 0.5,
		select_next_breed = "get_random_breed",
		after_safe_zone_delay = {
			5,
			20
		},
		spawn_cooldown = {
			32,													 -- Median of Ons+ and Dutch (Rounded Down)
			60													 -- Median of Ons+ and Dutch
		}
	}

	SpecialsSettings.default_light = SpecialsSettings.default
	SpecialsSettings.skaven = SpecialsSettings.default
	SpecialsSettings.skaven_light = SpecialsSettings.default
	SpecialsSettings.chaos = SpecialsSettings.default
	SpecialsSettings.chaos_light = SpecialsSettings.default
	SpecialsSettings.beastmen = SpecialsSettings.default
	
	SpecialsSettings.beastmen.breeds = {
		"beastmen_standard_bearer",
		"chaos_vortex_sorcerer",
		"chaos_vortex_sorcerer",
		"chaos_corruptor_sorcerer",
		"chaos_corruptor_sorcerer",
		"skaven_gutter_runner",
		"skaven_gutter_runner",
		"skaven_pack_master",
		"skaven_pack_master",
		"skaven_ratling_gunner",
		"skaven_ratling_gunner"
	}

	if mod.gain == 1.25 then
		SpecialsSettings.default.methods.specials_by_slots.max_of_same = 4
		SpecialsSettings.default.breeds = {
			"skaven_gutter_runner",
			"skaven_gutter_runner",
			"skaven_pack_master",
			"skaven_pack_master",
			"skaven_ratling_gunner",
			"skaven_poison_wind_globadier",
			"chaos_vortex_sorcerer",
			"chaos_vortex_sorcerer",
			"chaos_corruptor_sorcerer",
			"skaven_warpfire_thrower"
		}
		SpecialsSettings.beastmen.breeds = {
			"beastmen_standard_bearer",
			"skaven_gutter_runner",
			"skaven_gutter_runner",
			"skaven_pack_master",
			"skaven_ratling_gunner",
			"skaven_poison_wind_globadier",
			"chaos_vortex_sorcerer",
			"chaos_corruptor_sorcerer",
			"skaven_warpfire_thrower"
		}
	end

	SpecialsSettings.beastmen_light = SpecialsSettings.beastmen
	SpecialsSettings.skaven_beastmen = SpecialsSettings.beastmen
	SpecialsSettings.chaos_beastmen = SpecialsSettings.beastmen

	SpecialsSettings.default.difficulty_overrides.hard = nil
	SpecialsSettings.default.difficulty_overrides.harder = nil
	SpecialsSettings.default.difficulty_overrides.hardest = nil
	SpecialsSettings.default.difficulty_overrides.cataclysm = nil
	SpecialsSettings.default.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.default.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.default_light.difficulty_overrides.hard = nil
	SpecialsSettings.default_light.difficulty_overrides.harder = nil
	SpecialsSettings.default_light.difficulty_overrides.hardest = nil
	SpecialsSettings.default_light.difficulty_overrides.cataclysm = nil
	SpecialsSettings.default_light.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.default_light.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.skaven.difficulty_overrides.hard = nil
	SpecialsSettings.skaven.difficulty_overrides.harder = nil
	SpecialsSettings.skaven.difficulty_overrides.hardest = nil
	SpecialsSettings.skaven.difficulty_overrides.cataclysm = nil
	SpecialsSettings.skaven.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.skaven.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.skaven_light.difficulty_overrides.hard = nil
	SpecialsSettings.skaven_light.difficulty_overrides.harder = nil
	SpecialsSettings.skaven_light.difficulty_overrides.hardest = nil
	SpecialsSettings.skaven_light.difficulty_overrides.cataclysm = nil
	SpecialsSettings.skaven_light.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.skaven_light.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.chaos.difficulty_overrides.hard = nil
	SpecialsSettings.chaos.difficulty_overrides.harder = nil
	SpecialsSettings.chaos.difficulty_overrides.hardest = nil
	SpecialsSettings.chaos.difficulty_overrides.cataclysm = nil
	SpecialsSettings.chaos.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.chaos.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.chaos_light.difficulty_overrides.hard = nil
	SpecialsSettings.chaos_light.difficulty_overrides.harder = nil
	SpecialsSettings.chaos_light.difficulty_overrides.hardest = nil
	SpecialsSettings.chaos_light.difficulty_overrides.cataclysm = nil
	SpecialsSettings.chaos_light.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.chaos_light.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.beastmen.difficulty_overrides.hard = nil
	SpecialsSettings.beastmen.difficulty_overrides.harder = nil
	SpecialsSettings.beastmen.difficulty_overrides.hardest = nil
	SpecialsSettings.beastmen.difficulty_overrides.cataclysm = nil
	SpecialsSettings.beastmen.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.beastmen.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.hard = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.harder = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.hardest = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.cataclysm = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.skaven_beastmen.difficulty_overrides.cataclysm_3 = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.hard = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.harder = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.hardest = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.cataclysm = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.cataclysm_2 = nil
	SpecialsSettings.chaos_beastmen.difficulty_overrides.cataclysm_3 = nil
