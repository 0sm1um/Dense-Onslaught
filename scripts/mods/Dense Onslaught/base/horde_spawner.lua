local mod = get_mod("Dense Onslaught")

local spawn_list_a = {}
local spawn_list_b = {}

local function D(...)
	if script_data.debug_hordes then
		printf(...)
	end
end

local function copy_array(source, index_a, index_b, dest)
	local j = 1

	for i = index_a, index_b do
		dest[j] = source[i]
		j = j + 1
	end
end

local spawn_list = {
	"skaven_slave",
	"skaven_clan_rat",
	"skaven_slave",
	"skaven_clan_rat",
	"skaven_slave",
	"skaven_clan_rat",
	"skaven_slave",
	"skaven_clan_rat",
	"skaven_slave",
	"skaven_clan_rat"
}

local spawn_list = {}
local spawn_list_hidden = {}
local copy_list = {}

local ok_spawner_breeds = {
	skaven_clan_rat = true,
	skaven_slave = true
}
--[[
mod:hook_origin(HordeSpawner, "compose_horde_spawn_list", function (self, variant)
    local i = 1

	table.clear_array(spawn_list_a, #spawn_list_a)
	table.clear_array(spawn_list_b, #spawn_list_b)

	local breeds = variant.breeds

	for i = 1, #breeds, 2 do
		local breed_name = breeds[i]
		local amount = breeds[i + 1]
		local num_to_spawn = ConflictUtils.random_interval(amount)
		local spawn_list = ok_spawner_breeds[breed_name] and spawn_list_a or spawn_list_b
		local start = #spawn_list

		for j = start + 1, start + num_to_spawn do
			spawn_list[j] = breed_name
		end
	end

	table.shuffle(spawn_list_a)
	table.shuffle(spawn_list_b)

	local sum_a = #spawn_list_a
	local sum_b = #spawn_list_b
	local sum = sum_a + sum_b

	return sum, sum_a, sum_b
end)
--]]

mod:hook_origin(HordeSpawner, "compose_blob_horde_spawn_list", function (self, composition_type)
    --mod:echo("Blob Horde Spawning")
    local composition = CurrentHordeSettings.compositions_pacing[composition_type]
	local index = LoadedDice.roll_easy(composition.loaded_probs)
	local variant = composition[index]
	local i = 1
	local spawn_list = spawn_list_a

	table.clear_array(spawn_list_a, #spawn_list_a)

	local breeds = variant.breeds

	for i = 1, #breeds, 2 do
		local breed_name = breeds[i]
		local amount = breeds[i + 1]
		local num_to_spawn = ConflictUtils.random_interval(amount)
		local start = #spawn_list + 1

		for j = start, start + num_to_spawn - 1 do -- Subtracted 1 from num to spawn
			spawn_list[j] = breed_name
		end
	end

	table.shuffle(spawn_list)
	return spawn_list, #spawn_list

end)

