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

