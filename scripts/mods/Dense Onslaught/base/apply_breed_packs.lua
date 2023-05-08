local mod = get_mod("Dense Onslaught")

local difficulties = Difficulties
local start_time = os.clock()
for conflict_director_name, data in pairs(ConflictDirectors) do
    data.name = conflict_director_name
    data.contained_breeds = {}

    for i = 1, #difficulties do
        local difficulty = difficulties[i]
        local difficulty_breeds = {}

        mod.ConflictUtils_find_conflict_director_breeds(data, difficulty, difficulty_breeds)

        data.contained_breeds[difficulty] = difficulty_breeds
    end
end
