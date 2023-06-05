local mod = get_mod("Dense Onslaught")
local BreedpackUtils = mod:dofile("scripts/mods/Dense Onslaught/breedpacks/breedpacks_utils")
local BreedPacks = BreedPacks or {}


BreedpackUtils.add_new_pack("dense_standard", BreedPacks)
BreedpackUtils.add_new_pack("dense_skaven", BreedPacks)
BreedpackUtils.add_new_pack("dense_chaos", BreedPacks)

--Taken from the base game to initialize new Breedpacks
--Vermintide-2-Source-Code\scripts\managers\conflict_director\breed_packs.lua
local function calc_num_in_packs(breed_packs, roaming_set_name)
	local num_breed_packs = #breed_packs

	for i = 1, num_breed_packs do
		local pack = breed_packs[i]
		local size = #pack.members

		fassert(InterestPointUnits[size], "The %d pack in BreedPacks[%s] is of size %d. There are no InterestPointUnits matching this size.", i, roaming_set_name, size)

		pack.members_n = size
	end

	return num_breed_packs
end

local function generate_breed_pack_by_size(breed_packs, roaming_set_name)
	local num_breed_packs = calc_num_in_packs(breed_packs, roaming_set_name)

	assert("BreedPack of size have no matching interestpoint of that size.")

	local breed_pack_by_size = {}
	local by_size = {}

	for i = 1, num_breed_packs do
		local pack = breed_packs[i]
		local size = pack.members_n

		if not by_size[size] then
			by_size[size] = {
				packs = {},
				weights = {}
			}
		end

		local slot = by_size[size]
		local packs = slot.packs
		packs[#packs + 1] = pack
		slot.weights[#slot.weights + 1] = pack.spawn_weight
	end

	for size, slot in pairs(by_size) do
		local prob, alias = LoadedDice.create(slot.weights, false)
		breed_pack_by_size[size] = {
			packs = slot.packs,
			prob = prob,
			alias = alias
		}
	end

	return breed_pack_by_size
end

BreedPacksBySize = BreedPacksBySize or {}

for roaming_set_name, breed_packs in pairs(BreedPacks) do
	BreedPacksBySize[roaming_set_name] = generate_breed_pack_by_size(breed_packs, roaming_set_name)
end

local InterestPointUnits = InterestPointUnits or {}
InterestPointUnitsLookup = InterestPointUnitsLookup or false
SizeOfInterestPoint = SizeOfInterestPoint or {}
InterestPointPickListIndexLookup = InterestPointPickListIndexLookup or {}
InterestPointPickList = InterestPointPickList or false

if #InterestPointPickListIndexLookup == 0 then
	local weight_lookup = InterestPointPickList or {}
	local items = 0

	for i, data in ipairs(InterestPointUnits) do
		if data then
			for j = 1, data.spawn_weight do
				items = items + 1
				weight_lookup[items] = i
			end

			for j = 1, #data do
				local unit_name = data[j]
				SizeOfInterestPoint[unit_name] = i
			end

			InterestPointPickListIndexLookup[i] = items

			for roaming_set_name, breed_packs in pairs(BreedPacks) do
				fassert(BreedPacksBySize[roaming_set_name][i], "BreedPacks[%s] is missing a pack of size %d. It must be defined, since InterestPointUnits expects there to be a pack like that.", roaming_set_name, i)
			end
		else
			InterestPointPickListIndexLookup[i] = InterestPointPickListIndexLookup[#InterestPointPickListIndexLookup]
		end
	end

	InterestPointPickList = weight_lookup
end