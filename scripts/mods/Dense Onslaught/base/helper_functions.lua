local mod = get_mod("Dense Onslaught")

	--[[
		This function us used to dozens of lines of code without manually tweaking every single horde composition.
		Requires locally defined variables to function.
	--]]

function scale_horde_composition(faction,scaling_data)
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

	--[[
	These functions came from Core and pertain to adding buffs to bosses/entities.
	--]]
	
function count_event_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed_during_event(breed_name)
end

function count_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed(breed_name)
end


boss_pre_spawn_func = nil
custom_grudge_boss = nil
boss_pre_spawn_func = TerrorEventUtils.add_enhancements_for_difficulty
custom_grudge_boss = TerrorEventUtils.generate_enhanced_breed_from_list

enhancement_list = {
	["regenerating"] = true,
	["unstaggerable"] = true
}
enhancement_1 = TerrorEventUtils.generate_enhanced_breed_from_list(enhancement_list)

enhancement_list = {
	["unstaggerable"] = true
}
relentless = TerrorEventUtils.generate_enhanced_breed_from_list(enhancement_list)

enhancement_list = {
	["intangible"] = true
}
enhancement_3 = TerrorEventUtils.generate_enhanced_breed_from_list(enhancement_list)

enhancement_list = {
	["ranged_immune"] = true
}
enhancement_4 = TerrorEventUtils.generate_enhanced_breed_from_list(enhancement_list)
enhancement_list = {
	["commander"] = true
}
enhancement_5 = TerrorEventUtils.generate_enhanced_breed_from_list(enhancement_list)

enhancement_list = {
	["regenerating"] = true
}
enhancement_6 = TerrorEventUtils.generate_enhanced_breed_from_list(enhancement_list)
enhancement_list = {
	["intangible"] = true,
	["unstaggerable"] = true,
	["crushing"] = true
}
enhancement_7 = TerrorEventUtils.generate_enhanced_breed_from_list(enhancement_list)
enhancement_list = {
	["crushing"] = true
}
shield_shatter = TerrorEventUtils.generate_enhanced_breed_from_list(enhancement_list)

function khorne_buff_spawn_function(unit, breed, optional_data)
	if enemy_buffs_present then
		local buff_system = Managers.state.entity:system("buff_system")
		mod:echo("buffed")

		buff_system:add_buff(unit, "ai_health_buff_dutch", unit)
		buff_system:add_buff(unit, "khorne_buff_dutch_aoe", unit)
		buff_system:add_buff(unit, "khorne_champion_decal", unit)
		buff_system:add_buff(unit, "khorne_buff_dutch_fx", unit)
		buff_system:add_buff(unit, "khorne_prop_dutch", unit)
		buff_system:add_buff(unit, "khorne_ranged_debuff_dutch_aoe", unit)
		buff_system:add_buff(unit, "khorne_melee_debuff_dutch_aoe", unit)
	end
end

function tzeentch_buff_spawn_function(unit, breed, optional_data)
	if enemy_buffs_present then
		local buff_system = Managers.state.entity:system("buff_system")
		mod:echo("buffed")

		buff_system:add_buff(unit, "ai_health_buff_dutch", unit)
		buff_system:add_buff(unit, "tzeentch_debuff_dutch_aoe", unit)
		buff_system:add_buff(unit, "tzeentch_buff_dutch_aoe", unit)
		buff_system:add_buff(unit, "tzeentch_champion_decal", unit)
		buff_system:add_buff(unit, "tzeentch_buff_dutch_fx", unit)
	end
end

function slaanesh_buff_spawn_function(unit, breed, optional_data)
	if enemy_buffs_present then
		local buff_system = Managers.state.entity:system("buff_system")
		mod:echo("buffed")

		buff_system:add_buff(unit, "ai_health_buff_dutch", unit)
		buff_system:add_buff(unit, "slaanesh_stagger_buff_dutch_aoe", unit)
		buff_system:add_buff(unit, "slaanesh_health_debuff_dutch_aoe", unit)
		buff_system:add_buff(unit, "belakor_buff_dutch_fx", unit)
		buff_system:add_buff(unit, "belakor_champion_decal", unit)
	end
end

function nurgle_buff_spawn_function(unit, breed, optional_data)
	if enemy_buffs_present then
		local buff_system = Managers.state.entity:system("buff_system")
		mod:echo("buffed")

		buff_system:add_buff(unit, "nurgle_debuff_dutch_aoe_movement", unit)
		buff_system:add_buff(unit, "nurgle_debuff_dutch_aoe_attack_speed", unit)
		buff_system:add_buff(unit, "nurgle_buff_dutch_aoe", unit)
		buff_system:add_buff(unit, "nurgle_debuff_dutch_fx", unit)
		buff_system:add_buff(unit, "ai_health_buff_dutch", unit)
		buff_system:add_buff(unit, "gs_nurgle_decal", unit)
	end
end