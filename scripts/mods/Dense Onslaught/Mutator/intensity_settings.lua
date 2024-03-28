local mod = get_mod("Dense Onslaught")

IntensitySettings = {
	default = {
		intensity_add_per_percent_dmg_taken = 0, -- 1
		decay_delay = 1, -- 3
		decay_per_second = 8, -- 2
		intensity_add_knockdown = 25, -- 50
		intensity_add_pounced_down = 5, -- 10
		max_intensity = 100,
		intensity_add_nearby_kill = 0, -- 1
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
				intensity_add_per_percent_dmg_taken = 0, -- 0.2
				decay_per_second = 6 -- 6
			},
			cataclysm_2 = {
				intensity_add_per_percent_dmg_taken = 0, -- 0.2
				decay_per_second = 6 -- 6
			},
			cataclysm_3 = {
				intensity_add_per_percent_dmg_taken = 0, -- 0.2
				decay_per_second = 8 -- 6
			}
		}
	},
	disabled = {
		intensity_add_per_percent_dmg_taken = 0,
		decay_delay = 0,
		decay_per_second = 100,
		disabled = true,
		intensity_add_knockdown = 0,
		intensity_add_pounced_down = 0,
		intensity_add_nearby_kill = 0,
		max_intensity = 100
	}
}

--[[
AttackIntensitySettings.difficulty.hardest = {
	normal = {
		threshold = 0,
		decay = 1,
		decay_grace = 0.25,
		reset = 0.25
	},
	running = {
		threshold = 0,
		decay = 1,
		decay_grace = 1,
		reset = 0.25
	},
	charge = {
		threshold = 0,
		decay = 0.4,
		decay_grace = 0.4,
		reset = 0.25
	},
	cleave = {
		threshold = 0,
		decay = 1,
		decay_grace = 1,
		reset = 0.25
	},
	sweep = {
		threshold = 0,
		decay = 1,
		decay_grace = 1,
		reset = 0.25
	},
	frenzy = {
		threshold = 0,
		decay = 1,
		decay_grace = 1,
		reset = 0.25
	},
	push = {
		threshold = 0,
		decay = 1,
		decay_grace = 1,
		reset = 0.25
	}
}
AttackIntensitySettings.difficulty.cataclysm = table.clone(AttackIntensitySettings.difficulty.hardest)
AttackIntensitySettings.difficulty.cataclysm_2 = table.clone(AttackIntensitySettings.difficulty.hardest)
AttackIntensitySettings.difficulty.cataclysm_3 = table.clone(AttackIntensitySettings.difficulty.hardest)

for attack_type, _ in pairs(AttackIntensitySettings.attack_type_intesities) do
	for difficulty, data in pairs(AttackIntensitySettings.difficulty) do
		fassert(data[attack_type], "Missing settings for attack type [%s] in AttackIntensitySettings for difficulty [%s]", attack_type, difficulty)
	end
end

local intensity_overrides = {
    intensity_add_per_percent_dmg_taken = 0
}

DifficultySettings.cataclysm.intensity_overrides = intensity_overrides
DifficultySettings.cataclysm_2.intensity_overrides = intensity_overrides
DifficultySettings.cataclysm_3.intensity_overrides = intensity_overrides
--]]