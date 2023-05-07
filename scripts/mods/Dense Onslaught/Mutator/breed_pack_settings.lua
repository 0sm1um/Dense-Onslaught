local mod = get_mod("Dense Onslaught")
--[[
	local low_trash_scale = 0
	local low_elite_scale = 0
	local low_berzerker_scale = 1
	local low_super_armor_scale = 0

	local trash_entities = {"beastmen_ungor","beastmen_gor","skaven_slave","skaven_clan_rat","chaos_fanatic","chaos_marauder","chaos_marauder_with_shield","skaven_clan_rat_with_shield"}
	local elite_entities = {"beastmen_bestigor","chaos_raider","skaven_storm_vermin_commander","skaven_storm_vermin_with_shield"}
	local berzerker_entities = {"chaos_berzerker","skaven_plague_monk"}
	local super_armor_entities = {"chaos_warrior","skaven_storm_vermin"}
	
	local low_scaling_data = {
    {
        scale_factor = low_trash_scale,
        breeds = trash_entities,
    },
    {
        scale_factor = low_elite_scale,
        breeds = elite_entities,
    },
    {
        scale_factor = low_berzerker_scale,
        breeds = berzerker_entities,
    },
    {
        scale_factor = low_super_armor_scale,
        breeds = super_armor_entities,
    },
}

	local hi_trash_scale = 0
	local hi_elite_scale = 0
	local hi_berzerker_scale = 10
	local hi_super_armor_scale = 0
	
	local hi_scaling_data = {
    {
        scale_factor = hi_trash_scale,
        breeds = trash_entities,
    },
    {
        scale_factor = hi_elite_scale,
        breeds = elite_entities,
    },
    {
        scale_factor = hi_berzerker_scale,
        breeds = berzerker_entities,
    },
    {
        scale_factor = hi_super_armor_scale,
        breeds = super_armor_entities,
    },
}

function scale_clamp_values(BreedPacks,scaling_data, hi_or_low)
	for pack_name, breed_pack_data in pairs(BreedPacks) do 												-- breedpacks.default 
		if not string.find(tostring(pack_name), "code_test") then
			for pack_attribute_name, pack_attribute_item in pairs(breed_pack_data) do					-- breedpacks.default.zone_checks
				if string.find(tostring(pack_attribute_name), "zone_checks") then
					for hi_low_name, hi_low_contents in pairs(pack_attribute_item) do
						if string.find(tostring(hi_low_name), hi_or_low) then
							for difficulty_name, clamp_contents  in pairs(hi_low_contents) do
								for clamp_breed_table, clamp_breed_info in pairs(clamp_contents) do
									for _, scaling_data in pairs(scaling_data) do 							
										for _, enemy_name in pairs(scaling_data.breeds) do 
											if clamp_breed_info[2] == enemy_name then 					-- If enemy name matches scaling factor name. Apply scaling.
												if type(clamp_breed_info[1]) == "number" then
													clamp_breed_info[1] = math.floor(clamp_breed_info[1] * scaling_data.scale_factor)
												else
													clamp_breed_info[1] = math.floor(clamp_breed_info[1][1] * scaling_data.scale_factor)
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

scale_clamp_values(BreedPacks,hi_scaling_data, "hi")
mod:echo("ASUHHHHH")
scale_clamp_values(BreedPacks,low_scaling_data, "low")
--]]
