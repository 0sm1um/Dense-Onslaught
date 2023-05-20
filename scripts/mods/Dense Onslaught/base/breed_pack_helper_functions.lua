local mod = get_mod("Dense Onslaught")

	--[[
		Functions in this file are solely dedicated to manipulating and doing operations on the "BreedPacks" table.
	--]]

	local trash_weight = 0
	local shielded_trash_weight = 0
	local elite_weight = 0
	local shielded_elite_weight = 0
	local berzerker_weight = 1
	local super_armor_weight = 1
	
	local trash_entities = {"beastmen_ungor","beastmen_gor","skaven_slave","skaven_clan_rat","chaos_fanatic","chaos_marauder","chaos_marauder_with_shield","skaven_clan_rat_with_shield"}
	local elite_entities = {"beastmen_bestigor","chaos_raider","skaven_storm_vermin_commander","skaven_storm_vermin_with_shield"}
	local berzerker_entities = {"chaos_berzerker","skaven_plague_monk"}
	local super_armor_entities = {"chaos_warrior","skaven_storm_vermin"}
	
	local scaling_data = {
	{
		scale_factor = trash_scale,
		breeds = trash_entities,
	},
	{
		scale_factor = elite_scale,
		breeds = elite_entities,
	},
	{
		scale_factor = berzerker_scale,
		breeds = berzerker_entities,
	},
	{
		scale_factor = super_armor_scale,
		breeds = super_armor_entities,
	},
	}

mod.calculate_breed_pack_weights = function(scaling_data, breed_packs)
	local weighted_packs = {}
	for pack in pairs(breed_packs) do -- Select a Pack
		for breed_name, breed_table in pairs(pack.members) do -- Iterate through Pack Members
			for scale_data in pairs(scaling_data) do -- Iterate through classes of enemies.
				for scale_breed_name in pairs(scale_data.breeds) do  -- On a selected class, check each breed
					if string.find(tostring(breed_name), scale_breed_name) then -- If the breed is in the breed class:
						pack.spawn_weight = pack.spawn_weight + scale_data.scale_factor
					end
				end
			end
		end
		weighted_packs.insert(pack)
	end
	return weighted_packs
end

