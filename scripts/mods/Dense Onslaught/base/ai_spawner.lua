local mod = get_mod("Dense Onslaught")

	--[[
		This function is used to dozens of lines of code without manually tweaking every single horde composition.
		Requires locally defined variables to function.
	--]]

mod.continue_when_condition_chaos = function(threshold, time)
	return {
		"continue_when",
		duration = time,
		condition = function (t)
			return count_event_breed("chaos_berzerker") < threshold and count_event_breed("chaos_raider") < threshold and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 2*threshold and count_event_breed("chaos_fanatic") < 2*threshold and count_event_breed("chaos_warrior") < threshold
		end
	}
end

mod.continue_when_condition_skaven = function(threshold, time)
	return {
		"continue_when",
		duration = time,
		condition = function (t)
			return count_event_breed("chaos_berzerker") < threshold and count_event_breed("chaos_raider") < threshold and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 2*threshold and count_event_breed("chaos_fanatic") < 2*threshold and count_event_breed("chaos_warrior") < threshold
		end
	}
end

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


function scale_horde_composition(HordeCompositions,faction,scaling_data)
	for horde_name, horde_comp_data in pairs(HordeCompositions) do
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

mod.is_mod_mutator_enabled = function(mod_name, mutator_name)
	local other_mod = get_mod(mod_name)
	local mod_is_enabled = false
	local mutator_is_enabled = false
	if other_mod then
	  local omutator = other_mod:persistent_table(mutator_name)
	  mod_is_enabled = other_mod:is_enabled()
	  mutator_is_enabled = omutator.active
	end
	return mod_is_enabled and mutator_is_enabled
end

-- Functions for applying BreedPacks

mod.calc_num_in_packs = function(breed_packs, roaming_set_name)
	local num_breed_packs = #breed_packs

	for i = 1, num_breed_packs do
		local pack = breed_packs[i]
		local size = #pack.members

		fassert(InterestPointUnits[size], "The %d pack in BreedPacks[%s] is of size %d. There are no InterestPointUnits matching this size.", i, roaming_set_name, size)

		pack.members_n = size
	end

	return num_breed_packs
end

mod.generate_breed_pack_by_size = function(breed_packs, roaming_set_name)
	local num_breed_packs = mod.calc_num_in_packs(breed_packs, roaming_set_name)

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


mod.get_with_override = function(settings, key, difficulty, fallback_difficulty)
	local overrides = settings.difficulty_overrides
	local override_settings = overrides and (overrides[difficulty] or overrides[fallback_difficulty])

	return override_settings and override_settings[key] or settings[key]
end

mod.add_breeds_from_breed_packs = function(breed_packs, difficulty, output)
	local zone_checks = breed_packs.zone_checks
	local REPLACEMENT_BREED_INDEX = 3
	local clamp_breeds_low = zone_checks.clamp_breeds_low[difficulty]

	if clamp_breeds_low then
		for i = 1, #clamp_breeds_low do
			local clamp_breeds = clamp_breeds_low[i]
			local replacement_breed_name = clamp_breeds[REPLACEMENT_BREED_INDEX].name
			output[replacement_breed_name] = true
		end
	end

	local clamp_breeds_hi = zone_checks.clamp_breeds_hi[difficulty]

	if clamp_breeds_hi then
		for i = 1, #clamp_breeds_hi do
			local clamp_breeds = clamp_breeds_hi[i]
			local replacement_breed_name = clamp_breeds[REPLACEMENT_BREED_INDEX].name
			output[replacement_breed_name] = true
		end
	end

	for i = 1, #breed_packs do
		local pack = breed_packs[i]
		local breed_members = pack.members

		for j = 1, #breed_members do
			local breed = breed_members[j]
			local breed_name = breed.name
			output[breed_name] = true
		end
	end
end

mod.add_breeds_from_special_settings = function(special_settings, difficulty, fallback_difficulty, output)
	local breeds = get_with_override(special_settings, "breeds", difficulty, fallback_difficulty)

	for i = 1, #breeds do
		local breed_name = breeds[i]
		output[breed_name] = true
	end

	local rush_intervention = get_with_override(special_settings, "rush_intervention", difficulty, fallback_difficulty)
	local rush_intervention_breeds = rush_intervention.breeds

	for i = 1, #rush_intervention_breeds do
		local breed_name = rush_intervention_breeds[i]
		output[breed_name] = true
	end

	local speed_running_intervention = get_with_override(special_settings, "speed_running_intervention", difficulty, fallback_difficulty) or SpecialsSettings.default.speed_running_intervention
	local speed_running_intervention_breeds = speed_running_intervention.breeds

	for i = 1, #speed_running_intervention_breeds do
		local breed_name = speed_running_intervention_breeds[i]
		output[breed_name] = true
	end

	local speed_running_intervention_vector_horde_breeds = speed_running_intervention.vector_horde_breeds

	for i = 1, #speed_running_intervention_vector_horde_breeds do
		local breed_name = speed_running_intervention_vector_horde_breeds[i]
		output[breed_name] = true
	end
end

mod.add_breeds_from_pack_spawning_settings = function(pack_spawning_settings, difficulty, fallback_difficulty, output)
	local roaming_set = mod.get_with_override(pack_spawning_settings, "roaming_set", difficulty, fallback_difficulty)
	local breed_packs_name = roaming_set.breed_packs
	-- local breed_packs = BreedPacks[breed_packs_name]

	mod.add_breeds_from_breed_packs(BreedPacks[breed_packs_name], difficulty, output)

	local PACK_OVERRIDE_BREED_INDEX = 1
	local breed_packs_override = roaming_set.breed_packs_override

	for i = 1, #breed_packs_override do
		local pack_override_data = breed_packs_override[i]
		local pack_override_name = pack_override_data[PACK_OVERRIDE_BREED_INDEX]
		local pack_override = BreedPacks[pack_override_name]

		mod.add_breeds_from_breed_packs(pack_override, difficulty, output)
	end
end

mod.add_breeds_from_special_settings = function(special_settings, difficulty, fallback_difficulty, output)
	local breeds = mod.get_with_override(special_settings, "breeds", difficulty, fallback_difficulty)

	for i = 1, #breeds do
		local breed_name = breeds[i]
		output[breed_name] = true
	end

	local rush_intervention = mod.get_with_override(special_settings, "rush_intervention", difficulty, fallback_difficulty)
	local rush_intervention_breeds = rush_intervention.breeds

	for i = 1, #rush_intervention_breeds do
		local breed_name = rush_intervention_breeds[i]
		output[breed_name] = true
	end

	local speed_running_intervention = mod.get_with_override(special_settings, "speed_running_intervention", difficulty, fallback_difficulty) or SpecialsSettings.default.speed_running_intervention
	local speed_running_intervention_breeds = speed_running_intervention.breeds

	for i = 1, #speed_running_intervention_breeds do
		local breed_name = speed_running_intervention_breeds[i]
		output[breed_name] = true
	end

	local speed_running_intervention_vector_horde_breeds = speed_running_intervention.vector_horde_breeds

	for i = 1, #speed_running_intervention_vector_horde_breeds do
		local breed_name = speed_running_intervention_vector_horde_breeds[i]
		output[breed_name] = true
	end
end

mod.add_breeds_from_boss_settings = function(boss_settings, difficulty, fallback_difficulty, output)
	local difficulty_rank = DifficultySettings[difficulty].rank

	for key, _ in pairs(boss_settings) do
		local settings = mod.get_with_override(boss_settings, key, difficulty, fallback_difficulty)

		if type(settings) == "table" then
			local event_lookup = settings.event_lookup

			for _, lookup in pairs(event_lookup) do
				for i = 1, #lookup do
					local event_name = lookup[i]
					local terror_event_lookup = GenericTerrorEvents
					local event = terror_event_lookup[event_name]

					ConflictUtils.add_breeds_from_event(event_name, event, difficulty, difficulty_rank, output, terror_event_lookup)
				end
			end
		end
	end
end

mod.add_breeds_from_horde_settings = function(horde_settings, difficulty, fallback_difficulty, output)
	return
end

mod.ConflictUtils_find_conflict_director_breeds = function (conflict_director, difficulty, output)
	local fallback_difficulty = DifficultySettings[difficulty].fallback_difficulty

	if not conflict_director.boss.disabled then
		mod.add_breeds_from_boss_settings(conflict_director.boss, difficulty, fallback_difficulty, output)
	end

	if not conflict_director.specials.disabled then
		mod.add_breeds_from_special_settings(conflict_director.specials, difficulty, fallback_difficulty, output)
	end

	if not conflict_director.pack_spawning.disabled then
		mod.add_breeds_from_pack_spawning_settings(conflict_director.pack_spawning, difficulty, fallback_difficulty, output)
	end

	if not conflict_director.horde.disabled then
		mod.add_breeds_from_horde_settings(conflict_director.horde, difficulty, fallback_difficulty, output)
	end

	return output
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
--[[
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
--]]