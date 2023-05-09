local mod = get_mod("Dense Onslaught")
mod:dofile("scripts/mods/Dense Onslaught/directors/hooks")
local DirectorUtils = local_require("scripts/mods/Dense Onslaught/directors/director_utils")


DirectorUtils.add_new_ConflictDirector("dense_default")

ConflictDirectors = ConflictDirectors or {}

local difficulties = Difficulties
local start_time = os.clock()
local ConflictUtils_find_conflict_director_breeds = ConflictUtils.find_conflict_director_breeds

for conflict_director_name, data in pairs(ConflictDirectors) do
	data.name = conflict_director_name
	data.contained_breeds = {}

	for i = 1, #difficulties do
		local difficulty = difficulties[i]
		local difficulty_breeds = {}

		ConflictUtils_find_conflict_director_breeds(data, difficulty, difficulty_breeds)

		data.contained_breeds[difficulty] = difficulty_breeds

        for breed_name, contained in pairs(difficulty_breeds) do 
            local faction = Breeds[breed_name].race
            local add_faction = true
            for _,race in pairs(data) do
                if race == faction then
                    add_faction = false
                end
            end
            if add_faction and data.factions then
                ConflictDirectors[conflict_director_name].factions[#data.factions + 1] = faction
            end
        end
	end
end


for name, horde_setting in pairs(HordeSettings) do
	local compositions = horde_setting.compositions
	horde_setting.name = name

	for event_name, elements in pairs(TerrorEventBlueprints) do
		for i = 1, #elements do
			local element = elements[i]
			local element_type = element[1]

			if element_type == "event_horde" and not compositions[element.composition_type] then
				print(string.format("Bad or misspelled composition_type '%s' in event '%s', element number %d in horde setting %s", tostring(element.composition_type), event_name, i, name))

				crash = true
			end
		end
	end
end

if crash then
	error("Found errors in TerrorEventBlueprints, as shown here --^")
end

for id, setting in pairs(PackSpawningSettings) do
	setting.name = id

	if not setting.disabled then
		roaming_set = setting.roaming_set
		roaming_set.name = id
		local weights = {}
		local breed_packs_override = roaming_set.breed_packs_override

		if breed_packs_override then
			for i = 1, #breed_packs_override do
				weights[i] = breed_packs_override[i][2]
			end

			roaming_set.breed_packs_override_loaded_dice = {
				LoadedDice.create(weights)
			}
		end
	end
end

for name, boss_setting in pairs(BossSettings) do
	boss_setting.name = name
end

for name, intensity_setting in pairs(IntensitySettings) do
	intensity_setting.name = name
end

for name, specials_setting in pairs(SpecialsSettings) do
	specials_setting.name = name
end

for name, pacing_setting in pairs(PacingSettings) do
	pacing_setting.name = name
end



