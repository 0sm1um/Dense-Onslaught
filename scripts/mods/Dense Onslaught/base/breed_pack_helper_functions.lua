local mod = get_mod("Dense Onslaught")

	--[[
		Functions in this file are solely dedicated to manipulating and doing operations on the "BreedPacks" table.
	--]]

	local trash_weight = 1
	local shielded_trash_weight = 1
	local elite_weight = 1
	local shielded_elite_weight = 1
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

mod.calculate_BreedPack_weights = function calculate_weights(breed_pack, scaling_data)
	-- figure out how many breed classes
	local num_classes = #scaling_data
	-- calculate normalized target weights
	local weights = {}
	local total_weights = 0
	for data in pairs(scaling_data)
		weights.insert(data[1])
		total_weights = total_weights + data[1]
	end
	for w in pairs(weights)
		w = w/total_weights
	end
	-- Iterate through pack sizes
		-- On a given pack size, count total number of packs (number of constraint equations, rows of "A")
			--  Iterate through an individual pack
				-- count number of trash
				-- count number of shielded trash
				-- count number of elites
				-- count number of shielded elites
				-- count number of super armor
				-- count number of shielded super armor
				-- Construct q_i vector from counted numbers
			-- Iterate through q_i
				-- insert hadamard product of of q_i and r^-1 into normalized "u" vector
			-- insert all u_i into "A" matrix as a column
			-- take PsuedoInverse(moore penrose inverse) of A, yielding A^{-1}
			-- weights x_i equal w*pinv(A)