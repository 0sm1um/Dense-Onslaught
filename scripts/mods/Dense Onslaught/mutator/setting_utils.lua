local mod = get_mod("Dense Onslaught")

MutatorUtils = {}

MutatorUtils.scale_horde_composition = function(horde_compositions,faction,scaling_data)
	for horde_name, horde_comp_data in pairs(horde_compositions) do
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
										for _, scaling_data in pairs(scaling_data) do 
											for _, enemy_name in pairs(scaling_data.breeds) do 
												if name_of_enemy == enemy_name then -- If enemy name matches scaling factor name. Apply scaling.
													breed_data[i] = math.floor(enemy_count * scaling_data.scale_factor)
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

return DirectorUtils