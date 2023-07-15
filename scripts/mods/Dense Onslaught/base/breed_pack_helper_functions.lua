local mod = get_mod("Dense Onslaught")

	--[[
		Functions in this file are solely dedicated to manipulating and doing operations on the "BreedPacks" table.
	--]]

mod.calculate_breed_pack_weights = function(scaling_data, breed_packs)
	local weighted_packs = {}
	for _, pack in pairs(breed_packs) do -- Select a Pack
		for breed_name, breed_table in pairs(pack.members) do -- Iterate through Pack Members
			for _, scale_data in pairs(scaling_data) do -- Iterate through classes of enemies.
				for _, scale_breed_name in pairs(scale_data.breeds) do  -- On a selected class, check each breed
					if string.find(tostring(breed_name), scale_breed_name) then -- If the breed is in the breed class:
						pack.spawn_weight = pack.spawn_weight + scale_data.scale_factor
					end
				end
			end
		end
		table.insert(weighted_packs,pack)
	end
	return weighted_packs
end

