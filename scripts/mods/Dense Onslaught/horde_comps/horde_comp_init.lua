local mod = get_mod("Dense Onslaught")
mod:dofile("scripts/mods/Dense Onslaught/horde_comps/hooks")
local HordeCompUtils = mod:dofile("scripts/mods/Dense Onslaught/horde_comps/horde_comp_utils")
local HordeCompositions = HordeCompositions or {}

HordeCompUtils.add_new_compositions("blightreaper")
HordeCompUtils.add_new_compositions("custom_compositions")
HordeCompUtils.add_new_compositions("custom_specials_bosses")
HordeCompUtils.add_new_compositions("dark_omens")
HordeCompUtils.add_new_compositions("empire_in_flames")
HordeCompUtils.add_new_compositions("enchanters_lair")
HordeCompUtils.add_new_compositions("event_horde_composition")
HordeCompUtils.add_new_compositions("fort_brachsenbrucke")
HordeCompUtils.add_new_compositions("halescourge")
HordeCompUtils.add_new_compositions("horn_of_magnus")
HordeCompUtils.add_new_compositions("into_the_nest")
HordeCompUtils.add_new_compositions("righteous_stand")
HordeCompUtils.add_new_compositions("screaming_bell")
HordeCompUtils.add_new_compositions("skittergate")
HordeCompUtils.add_new_compositions("the_pit")
HordeCompUtils.add_new_compositions("trail_of_treachery")
HordeCompUtils.add_new_compositions("unscaled_onslaught_variants_of_generic_compositions")
HordeCompUtils.add_new_compositions("warcamp")

for horde_composition_name, horde_composition in pairs(HordeCompositions) do
	local max_composition = nil
	local already_printed = false

	for i = 1, #Difficulties do
		local composition_for_difficulty = horde_composition[i]

		if composition_for_difficulty then
			max_composition = composition_for_difficulty
		else
			fassert(max_composition, horde_composition_name .. " does not define any composition for any difficulty")

			already_printed = already_printed or true
			horde_composition[i] = max_composition
		end
	end
end

local weights = {}
local crash = nil
local num_comps = 0

for name, composition in pairs(HordeCompositions) do
	num_comps = num_comps + 1

	for i = 1, #composition do
		table.clear_array(weights, #weights)

		local compositions = composition[i]

		for j, variant in ipairs(compositions) do
			weights[j] = variant.weight
			local breeds = variant.breeds

			for k = 1, #breeds, 2 do
				local breed_name = breeds[k]
				local breed = Breeds[breed_name]

				if not breed then
					print(string.format("Bad or non-existing breed in HordeCompositions table %s : '%s' defined in HordeCompositions.", name, tostring(breed_name)))

					crash = true
				elseif not breed.can_use_horde_spawners then
					variant.must_use_hidden_spawners = true
				end
			end
		end

		-- local stuff = table.clone(weights)

		local result = LoadedDice.create(weights)

		-- if name == "event_large_chaos" then
			-- mod:echo(#compositions)
			-- for k,v in pairs(result) do
			-- 	mod:echo(k.."	"..tostring(v))
			-- end
		-- end

		-- if (next(result) == nil) then
		-- 	mod:echo(result)
		-- 	mod:echo(#compositions)
		-- 	mod:echo(name)
		-- 	for k,v in pairs(compositions) do
		-- 		mod:echo(k.."	"..tostring(v))
		-- 	end
		-- end
		 
		-- for k,v in pairs(result) do
		-- 	mod:echo(k.."	"..tostring(v))
		-- end
		
		compositions.loaded_probs = {
			result
		}

		fassert(not crash, "Found errors in HordeComposition table %s - see above. ", name)
		fassert(compositions.loaded_probs, "Could not create horde compositison sprobablitity table, make sure the table '%s' in HordeCompositions is correctly structured and has an entry for each difficulty.", name)
	end
end

-- mod:echo(HordeCompositions.event_medium_shield[1].loaded_probs[2])
-- local index = LoadedDice.roll_easy(HordeCompositions.event_medium[1].loaded_probs)
-- mod:echo(index)

-- for name, composition in ipairs(HordeCompositions.dense_event_medium[1].loaded_probs[1]) do
-- 	mod:echo(name.."	"..tostring(composition))
-- 	-- for i = 1, #composition do
-- 	-- 	local compositions = composition[i]
-- 	-- 	mod:echo(name.."	"..tostring(compositions.loaded_probs))

-- 	-- 	-- compositions.loaded_probs = {
-- 	-- 	-- 	LoadedDice.create(weights)
-- 	-- 	-- }

-- 	-- end
-- end


for name, composition in pairs(HordeCompositions) do
	if name == "chaos_elites" then
		for i = 1, #composition do
			local compositions = composition[i]

			for j, variant in ipairs(compositions) do
				--code
			end
		end
	end
end