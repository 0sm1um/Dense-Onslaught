local mod = get_mod("Dense Onslaught")

	--[[
		This function us used to dozens of lines of code without manually tweaking every single horde composition.
		Requires locally defined variables to function.
	--]]

function scale_horde_composition(faction,
								 trash_scale,
								 trash_entities,
								 shield_trash_scale,
								 shield_trash_entities, 								 
								 elite_scale,
								 elite_entities,
								 shield_elite_scale,
								 shield_elite_entities, 
								 berzerker_scale,
								 berzerker_entities,
								 super_armor_scale,
								 super_armor_entities)

	for horde_name, horde_comp_data in pairs(HordeCompositionsPacing) do
		local isfaction = false
		if string.find(tostring(horde_name), faction) then
			for sub_var_name, horde_subvariant in pairs(horde_comp_data) do
				for value, more_data in pairs(horde_subvariant) do
					if value == "breeds" then
						for breed_index,breed_data in pairs(more_data) do
							if type(breed_data) == "table" then
								local name_of_enemy = tostring(more_data[breed_index-1])
								for i,enemy_count in pairs(breed_data) do
									if type(enemy_count) == "number" then
										for _, enemy_name in ipairs(trash_entities) do
											if name_of_enemy == enemy_name then -- If enemy is trash
												breed_data[i] = math.floor(enemy_count*trash_scale)
											end
										end
										for _, enemy_name in ipairs(shield_trash_entities) do
											if name_of_enemy == enemy_name then -- If enemy is shielded trash
												breed_data[i] = math.floor(enemy_count*shield_trash_scale)
											end
										end
										for _, enemy_name in ipairs(elite_entities) do
											if name_of_enemy == enemy_name then -- If enemy is an elite
												breed_data[i] = math.floor(enemy_count*elite_scale)
											end
										end
										for _, enemy_name in ipairs(shield_elite_entities) do
											if name_of_enemy == enemy_name then -- If enemy is a shielded elite
												breed_data[i] = math.floor(enemy_count*shield_elite_scale)
											end
										end
										for _, enemy_name in ipairs(berzerker_entities) do
											if name_of_enemy == enemy_name then -- If enemy is a berzerker
												breed_data[i] = math.floor(enemy_count*berzerker_scale)
											end
										end
										for _, enemy_name in ipairs(super_armor_entities) do
											if name_of_enemy == enemy_name then -- If enemy has super armor
												breed_data[i] = math.floor(enemy_count*super_armor_scale)
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
