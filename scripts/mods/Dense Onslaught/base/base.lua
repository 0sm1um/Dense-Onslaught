local mod = get_mod("Dense Onslaught")

--[[
	This file contains all of the functions and hooks required for the rest of the mod to function.
	I do not reccomend messing with this unless you know what you are doing.
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

weapon_balance_active = get_mod("Weapon Balance")
enemy_buffs_present = false

if weapon_balance_active then
	mod:echo("Custom Enemy buffs present")
	enemy_buffs_present = true
end

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

function create_weights()
	local crash = nil

	for id, setting in pairs(PackSpawningSettings) do
		setting.name = id

		if not setting.disabled then
			roaming_set = setting.roaming_set
			roaming_set.name = id
			local weights = {}
			local breed_packs_override = roaming_set.breed_packs_override

			if breed_packs_override then
				for i = 1, #breed_packs_override, 1 do
					weights[i] = breed_packs_override[i][2]
				end

				roaming_set.breed_packs_override_loaded_dice = {
					LoadedDice.create(weights)
				}
			end
		end
	end

	-- Adjustment for the new difficulty system of horde compositions from 1.4 - I am not copypasting each composition 3 times. Or 4, doesn't matter.
	for event, composition in pairs(HordeCompositions) do
		if not composition[1][1] then
			local temp_table = table.clone(composition)
			table.clear_array(composition, #composition)
			composition[1] = temp_table
			composition[2] = temp_table
			composition[3] = temp_table
			composition[4] = temp_table
			composition[5] = temp_table
			composition[6] = temp_table
			composition[7] = temp_table
		elseif not composition[6] then
			composition[6] = composition[5]
			composition[7] = composition[5]
		end
	end

	local weights = {}
	local crash = nil

	for key, setting in pairs(HordeSettings) do
		setting.name = key

		if setting.compositions then
			for name, composition in pairs(setting.compositions) do
				for i = 1, #composition, 1 do
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

					compositions.loaded_probs = {
						LoadedDice.create(weights)
					}

					fassert(not crash, "Found errors in HordeComposition table %s - see above. ", name)
					fassert(compositions.loaded_probs, "Could not create horde composition probablitity table, make sure the table '%s' in HordeCompositions is correctly structured and has an entry for each difficulty.", name)
				end
			end
		end

		if setting.compositions_pacing then
			for name, composition in pairs(setting.compositions_pacing) do
				table.clear_array(weights, #weights)

				for i, variant in ipairs(composition) do
					weights[i] = variant.weight
					local breeds = variant.breeds

					for j = 1, #breeds, 2 do
						local breed_name = breeds[j]
						local breed = Breeds[breed_name]

						if not breed then
							print(string.format("Bad or non-existing breed in HordeCompositionsPacing table %s : '%s' defined in HordeCompositionsPacing.", name, tostring(breed_name)))

							crash = true
						elseif not breed.can_use_horde_spawners then
							variant.must_use_hidden_spawners = true
						end
					end
				end

				composition.loaded_probs = {
					LoadedDice.create(weights)
				}

				fassert(not crash, "Found errors in HordeCompositionsPacing table %s - see above. ", name)
				fassert(composition.loaded_probs, "Could not create horde composition probablitity table, make sure the table '%s' in HordeCompositionsPacing is correctly structured.", name)
			end
		end
	end
end

-- Fix to specials being disabled by pacing disables in events.
mod:hook(Pacing, "disable", function (func, self)
	self._threat_population = 1
	self._specials_population = 1
	self._horde_population = 0
	self.pacing_state = "pacing_frozen"
end)

mod:hook(TerrorEventMixer.init_functions, "control_specials", function (func, event, element, t)
	local conflict_director = Managers.state.conflict
	local specials_pacing = conflict_director.specials_pacing
	local not_already_enabled = specials_pacing:is_disabled()

	if specials_pacing then
		specials_pacing:enable(element.enable)

		if element.enable and not_already_enabled then
			local delay = math.random(5, 12)
			local per_unit_delay = math.random(8, 16)
			local t = Managers.time:time("game")

			specials_pacing:delay_spawning(t, delay, per_unit_delay, true)
		end
	end
end)

-- Dirty hook to work around lack of node in custom spawners.
mod:hook(AISpawner, "spawn_unit", function (func, self)
	local breed_name = nil
	local breed_list = self._breed_list
	local last = #breed_list
	local spawn_data = breed_list[last]
	breed_list[last] = nil
	last = last - 1
	local breed_name = breed_list[last]
	breed_list[last] = nil
	local breed = Breeds[breed_name]

	--Because this one spawner won't work properly with bilechemists..
	if breed_name == "chaos_plague_sorcerer" then
		if Unit.local_position(self._unit, 0).x == 349.67596435546875 then
			local spawner_system = Managers.state.entity:system("spawner_system")
			self._unit = spawner_system._id_lookup["sorcerer_boss_minion"][1]
			self.changed = true
		end
	elseif self.changed then
		local spawner_system = Managers.state.entity:system("spawner_system")
		self._unit = spawner_system._id_lookup["sorcerer_boss_minion"][5]
		self.changed = nil
	end

	local unit = self._unit

	Unit.flow_event(unit, "lua_spawn")

	local conflict_director = Managers.state.conflict
	local spawn_category = "ai_spawner"
	local node = (Unit.has_node(unit, self._config.node) and Unit.node(unit, self._config.node)) or 0
	local parent_index = Unit.scene_graph_parent(unit, node) or 1
	local parent_world_rotation = Unit.world_rotation(unit, parent_index)
	local spawn_node_rotation = Unit.local_rotation(unit, node)
	local spawn_rotation = Quaternion.multiply(parent_world_rotation, spawn_node_rotation)
	local spawn_type = (Unit.get_data(self._unit, "hidden") and "horde_hidden") or "horde"
	local spawn_pos = Unit.world_position(unit, node)
	local animation_events = self._config.animation_events

	if spawn_type == "horde_hidden" and breed.use_regular_horde_spawning then
		spawn_type = "horde"
	end

	local spawn_animation = spawn_type == "horde" and animation_events[math.random(#animation_events)]
	local spawner_name = self:get_spawner_name()
	local side_id = spawn_data[1]
	local optional_data = {
		side_id = side_id
	}
	local group_template = spawn_data[2]

	conflict_director:spawn_queued_unit(breed, Vector3Box(spawn_pos), QuaternionBox(spawn_rotation), spawn_category, spawn_animation, spawn_type, optional_data, group_template)
	conflict_director:add_horde(1)

	self._spawned_units = self._spawned_units + 1
end)

--Rewrite of threat calculation because the official function is unreliable and fails to remove units from the count.
mod:hook(ConflictDirector, "calculate_threat_value", function (func, self)
	local aggroed_units = {}
	local ai_system = Managers.state.entity:system('ai_system')
	local broadphase = ai_system.broadphase

	for i, player in pairs(Managers.player:human_and_bot_players()) do
		local ai_units = {}
		if player.player_unit then
			local num_ai_units = Broadphase.query(broadphase, Unit.local_position(player.player_unit, 0), 50, ai_units)
			if num_ai_units > 0 then
				for i = 1, num_ai_units do
					local ai_unit = ai_units[i]
					if ScriptUnit.has_extension(ai_unit, 'health_system') and ScriptUnit.extension(ai_unit, 'health_system'):is_alive() and BLACKBOARDS[ai_unit].target_unit then
						aggroed_units[ai_unit] = ai_unit
					end
				end
			end
		end
	end

	local threat_value = 0
	local count = 0

	for _, unit in pairs(aggroed_units) do
		local breed = Unit.get_data(unit, "breed")
		threat_value = threat_value + (override_threat_value or breed.threat_value or 0)
		count = count + 1
	end

	self.delay_horde = self.delay_horde_threat_value < threat_value
	self.delay_mini_patrol = self.delay_mini_patrol_threat_value < threat_value
	self.delay_specials = self.delay_specials_threat_value < threat_value
	self.threat_value = threat_value
	self.num_aggroed = count
end)

sections_to_open = {}
mod:hook_origin(DoorSystem, "update", function(self, context, t)
	DoorSystem.super.update(self, context, t)

	if self.is_server then
		table.clear(sections_to_open)

		local active_groups = self._active_groups
		local ai_group_system = Managers.state.entity:system("ai_group_system")

		for map_section, groups in pairs(active_groups) do
			local open_map_section = false

			for i = 1, #groups, 1 do
				local data = groups[i]
				local group_id = data.group_id
				local active = data.active
				local group = ai_group_system:get_ai_group(group_id)

				if group and not active then
					data.active = true
				elseif active and not group then
					open_map_section = true
				elseif active and group then
					local members = group.members
					local should_open = true

					for unit, extension in pairs(members) do
						local heath_extension = ScriptUnit.has_extension(unit, "health_system")

						if heath_extension and heath_extension:is_alive() then
							local blackboard = BLACKBOARDS[unit]
							local breed = blackboard.breed
							local is_boss = breed and breed.boss

							if is_boss then
									should_open = false

									break
							else
								should_open = false

								break
							end
						end
					end

					if should_open then
						open_map_section = true
					end
				end
			end

			if open_map_section then
				sections_to_open[#sections_to_open + 1] = map_section
			end
		end

		for i = 1, #sections_to_open, 1 do
			local map_section = sections_to_open[i]

			self:open_boss_doors(map_section)

			self._active_groups[map_section] = nil
		end
	end
end)

--UI fluff
--mod:hook(IngamePlayerListUI, "_update_difficulty", function (func, self)
--	local difficulty_settings = Managers.state.difficulty:get_difficulty_settings()
--	local base_difficulty_name = difficulty_settings.display_name
--	local deathwish_enabled = get_mod("Deathwish") and Managers.vmf.persistent_tables.Deathwish.Deathwish.active and (base_difficulty_name == "harder" or base_difficulty_name == "hardest")
--	local difficulty_name = deathwish_enabled and "deathwish_onslaught" or base_difficulty_name .. "_Dense Onslaught"
--
--	if difficulty_name ~= self.current_difficulty_name then
--		self:_set_difficulty_name(deathwish_enabled and "Deathwish Dense Onslaught" or Localize(base_difficulty_name) .. " Dense Onslaught")
--
--		self.current_difficulty_name = difficulty_name
--	end
--end)
--Make game always private when starting matchmaking, and adds tags in the lobby browser.
--mod:hook(MatchmakingStateHostGame, "_start_hosting_game", function (func, self)
--	if EAC.state() == "trusted" then
--		self.search_config.private_game = true
--	end
--	func(self)
--
--	local lobby_data = Managers.matchmaking.lobby:get_stored_lobby_data()
--	local old_server_name = LobbyAux.get_unique_server_name()
--	local deathwish_enabled = get_mod("Deathwish") and Managers.vmf.persistent_tables.Deathwish.Deathwish.active and (self.search_config.difficulty == "harder" or self.search_config.difficulty == "hardest")
--
--	lobby_data.unique_server_name = deathwish_enabled and "||Deathwish Spciy Onslaught|| " .. string.sub(old_server_name,1,17) or "||Dutch Spice|| " .. string.sub(old_server_name,1,17)
--	Managers.matchmaking.lobby:set_lobby_data(lobby_data)
--end)
--
----Stops player from making game public after game starts.
--mod:hook(MatchmakingManager, "set_in_progress_game_privacy", function(func, self, is_private)
--	if (not is_private) and EAC.state() == "trusted" then
--		mod:echo("Onslaught games on the live realm may not be set public.")
--		return func(self, true)
--	end
--	return func(self, is_private)
--end)
--
----Keeps UI consistent with always private behaviour.
--mod:hook(IngamePlayerListUI, "set_privacy_enabled", function (func, self, enabled, animate)
--	if EAC.state() == "trusted" then
--		func(self, true, animate)
--	else
--		func(self, enabled, animate)
--	end
--end)

--Whispers players that join modded game with a warning.
--mod:hook(MatchmakingManager, "rpc_matchmaking_request_join_lobby", function (func, self, channel_id, lobby_id, friend_join, client_dlc_unlocked_array)
	--local peer_id = CHANNEL_TO_PEER_ID[channel_id]

	--mod:chat_whisper(peer_id, "[Automated message] The lobby you are about to join has the following difficulty mod active : Dutch Spice.")

	--return func(self, channel_id, lobby_id, friend_join, client_dlc_unlocked_array)
--end)


--Custom spawner logic
custom_spawners = {}

function setup_custom_raw_spawner(world, terror_event_id, location, rotation)
	local unit = World.spawn_unit(world, "units/hub_elements/empty", location, rotation)
	Unit.set_data(unit, "terror_event_id", terror_event_id)
	Unit.set_data(unit, "extensions", 0, "AISpawner")
	custom_spawners[#custom_spawners + 1] = unit
end

function setup_custom_horde_spawner(unit, terror_event_id, hidden)
	Unit.set_data(unit, "terror_event_id", terror_event_id)
	Unit.set_data(unit, "hidden", hidden)
	Unit.set_data(unit, "spawner_settings", "spawner1", "enabled", true)
	Unit.set_data(unit, "spawner_settings", "spawner1", "node", "a_spawner_start")
	Unit.set_data(unit, "spawner_settings", "spawner1", "spawn_rate", 2)
	Unit.set_data(unit, "spawner_settings", "spawner1", "animation_events", 0, "spawn_idle")
	Unit.set_data(unit, "extensions", 0, "AISpawner")
	custom_spawners[#custom_spawners + 1] = unit
end

mod:hook(StateIngame, "on_enter", function (func, self)
	func(self)

	if Managers.player.is_server then
		custom_spawners = {}
		local level_key = Managers.state.game_mode:level_key()

		if level_key == "military" then
			local onslaught_courtyard_roof_left_S1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(144, 55.1, -1.4), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_left_S1, "onslaught_courtyard_roof_left", true)

			local onslaught_courtyard_roof_left_S2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(147.4, 67.8, -1.4), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_left_S2, "onslaught_courtyard_roof_left", true)

			local onslaught_courtyard_roof_left_S3 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(144, 80.6, -1.4), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_left_S3, "onslaught_courtyard_roof_left", true)

			local onslaught_courtyard_roof_left_S4 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(134.8, 90, -1.4), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_left_S4, "onslaught_courtyard_roof_left", true)

			local onslaught_courtyard_roof_right_S1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(99.9, 55.1, -1.4), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_right_S1, "onslaught_courtyard_roof_right", true)

			local onslaught_courtyard_roof_right_S2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(96.5, 67.8, -1.4), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_right_S2, "onslaught_courtyard_roof_right", true)

			local onslaught_courtyard_roof_right_S3 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(99.9, 80.6, -1.4), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_right_S3, "onslaught_courtyard_roof_right", true)

			local onslaught_courtyard_roof_right_S4 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(109.4, 90, -1.4), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_right_S4, "onslaught_courtyard_roof_right", true)

			local onslaught_courtyard_roof_middle_S1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(122.2, 98, 4.56), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_courtyard_roof_middle_S1, "onslaught_courtyard_roof_middle", true)

			local onslaught_temple_guard_assault_S1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-215.1, -85.8, 74.2), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_temple_guard_assault_S1, "onslaught_temple_guard_assault", true)

			local onslaught_temple_guard_assault_S2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-224.2, -69.1, 74.2), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_temple_guard_assault_S2, "onslaught_temple_guard_assault", true)
		elseif level_key == "catacombs" then
			setup_custom_raw_spawner(self.world, "onslaught_pool_boss_1", Vector3(-163.64, 2.9, -15.9), Quaternion.from_elements(0, 0, -0.009, -0.999))
			setup_custom_raw_spawner(self.world, "onslaught_pool_boss_2", Vector3(-152.19, -27.16, -10.2), Quaternion.from_elements(0, 0, -0.009, -0.999))
			setup_custom_raw_spawner(self.world, "onslaught_pool_boss_3", Vector3(-114.17, -30, 0.3), Quaternion.from_elements(0, 0, 0.709, -0.705))
		elseif level_key == "mines" then
			local onslaught_mines_bell_boss = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(216.879, -360.958, -15.0424), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_mines_bell_boss, "onslaught_mines_bell_boss", false)

			local onslaught_mines_horde_front = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(254.738, -380.498, -10.947), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_mines_horde_front, "onslaught_mines_horde_front", false)

			setup_custom_raw_spawner(self.world, "onslaught_mines_extra_troll_1", Vector3(284.75, -327.1, -29.5), Quaternion.from_elements(0, 0, -0.377, -0.926))
			setup_custom_raw_spawner(self.world, "onslaught_mines_extra_troll_2", Vector3(222.67, -350.32, -21.5), Quaternion.from_elements(0, 0, 0.571, -0.82))
			setup_custom_raw_spawner(self.world, "onslaught_mines_extra_troll_3", Vector3(276.667, -377.996, -17.3902), Quaternion.from_elements(0, 0, -0.849433, -0.527696))
		elseif level_key == "ground_zero" then
			setup_custom_raw_spawner(self.world, "onslaught_ele_guard_c_1", Vector3(-38.7, 11.38, -9.1), Quaternion.from_elements(0, 0, -0.257, -0.966))
			setup_custom_raw_spawner(self.world, "onslaught_ele_guard_c_2", Vector3(-37.2, 12.25, -9.1), Quaternion.from_elements(0, 0, -0.26, -0.966))
			setup_custom_raw_spawner(self.world, "onslaught_ele_guard_c_3", Vector3(-35.3, 13.41, -9.1), Quaternion.from_elements(0, 0, -0.26, -0.966))
			setup_custom_raw_spawner(self.world, "onslaught_ele_guard_c_4", Vector3(-33.6, 14.49, -9.1), Quaternion.from_elements(0, 0, -0.26, -0.966))
			setup_custom_raw_spawner(self.world, "onslaught_ele_guard_c_5", Vector3(-31.6, 15.65, -9.1), Quaternion.from_elements(0, 0, -0.26, -0.966))
			setup_custom_raw_spawner(self.world, "onslaught_ele_guard_c_6", Vector3(-30.2, 16.34, -9.1), Quaternion.from_elements(0, 0, -0.26, -0.966))
		elseif level_key == "bell" then
			setup_custom_raw_spawner(self.world, "onslaught_second_ogre", Vector3(6, -436, 36.5), Quaternion.from_elements(0, 0, 0.798, -0.602))
		elseif level_key == "farmlands" then
			setup_custom_raw_spawner(self.world, "onslaught_farmlands_extra_boss", Vector3(-136.1, -4.8, 7), Quaternion.from_elements(0, 0, 0.988, -0.15))
			setup_custom_raw_spawner(self.world, "onslaught_wall_guard_extra_1", Vector3(-109.97, 244.96, 0.86), Quaternion.from_elements(0, 0, 0.99, -0.138))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_1", Vector3(-72.36, 257.7, 1.08), Quaternion.from_elements(0, 0, 0.871, 0.491))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_2", Vector3(-69.8, 253.7, 1.26), Quaternion.from_elements(0, 0, 0.884, 0.468))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_3", Vector3(-68.7, 255.3, 1.04), Quaternion.from_elements(0, 0, 0.874, 0.486))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_4", Vector3(-69.8, 256.7, 0.93), Quaternion.from_elements(0, 0, 0.894, 0.445))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_5", Vector3(-70.9, 258.3, 0.99), Quaternion.from_elements(0, 0, 0.932, 0.361))
			setup_custom_raw_spawner(self.world, "Against_the_Grain_1st_event", Vector3(-76.8781, 264.765, 8.85473), Quaternion.from_elements(0, 0, 0.963928, -0.266162))
			setup_custom_raw_spawner(self.world, "Against_the_Grain_2nd_event", Vector3(-43.5054, 242.15, 5.94876), Quaternion.from_elements(0, 0, -0.642135, -0.766592))
			setup_custom_raw_spawner(self.world, "Against_the_Grain_3rd_event", Vector3(-51.8222, 225.516, 13.4548), Quaternion.from_elements(0, 0, -0.597167, -0.802117))
		elseif level_key == "ussingen" then
			setup_custom_raw_spawner(self.world, "onslaught_gate_spawner_1", Vector3(-20.7, -273.77, -2), Quaternion.from_elements(0, 0, 0.91, -0.412))
			setup_custom_raw_spawner(self.world, "onslaught_gate_spawner_2", Vector3(2.68, -274.39, -0.7), Quaternion.from_elements(0, 0, 0.894, 0.446))
			setup_custom_raw_spawner(self.world, "onslaught_gate_spawner_3", Vector3(-10.15, -297.67, 0.5), Quaternion.from_elements(0, 0, 0.956, 0.294))

			setup_custom_raw_spawner(self.world, "onslaught_cart_guard_1", Vector3(-23.63, 48.57, 20.5), Quaternion.from_elements(0, 0, 0.989, -0.147))
			setup_custom_raw_spawner(self.world, "onslaught_cart_guard_2", Vector3(-17.70, 39.9, 20.5), Quaternion.from_elements(0, 0, 0.899, 0.437))

					local onslaught_camp_boss_top = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(248.979, -67.0314, 45.8501), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_camp_boss_top, "onslaught_camp_boss_top", false)
		elseif level_key == "warcamp" then
			local onslaught_camp_boss_top = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(248.979, -67.0314, 45.8501), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_camp_boss_top, "onslaught_camp_boss_top", false)

			local onslaught_camp_boss_top_behind = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(214.069, -81.3159, 45.7736), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_camp_boss_top_behind, "onslaught_camp_boss_top_behind", false)

			local onslaught_camp_boss_top_right = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(236.587, -94.1319, 44.8331), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_camp_boss_top_right, "onslaught_camp_boss_top_right", false)

			local onslaught_camp_boss_top_left = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(229.412, -60.3625, 45.5009), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_camp_boss_top_left, "onslaught_camp_boss_top_left", false)

		elseif level_key == "skittergate" then
			setup_custom_raw_spawner(self.world, "onslaught_gate_guard", Vector3(-271.67, -355.88, -122.12), Quaternion.from_elements(0, 0, -0.112, -0.994))

			local onslaught_CW_gatekeeper_1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(265.35, 481.66, -16.1), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_CW_gatekeeper_1, "onslaught_CW_gatekeeper_1", false)

			local onslaught_CW_gatekeeper_2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(259.66, 442.29, -14.23), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_CW_gatekeeper_2, "onslaught_CW_gatekeeper_2", false)

			local onslaught_CW_gatekeeper_3 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(281.45, 474, -14.85), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_CW_gatekeeper_3, "onslaught_CW_gatekeeper_3", false)

			local onslaught_zerker_gatekeeper_1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(269.59, 432.6, -8.99), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_zerker_gatekeeper_1, "onslaught_zerker_gatekeeper", false)

			local onslaught_zerker_gatekeeper_2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(237, 438.64, -6.85), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_zerker_gatekeeper_2, "onslaught_zerker_gatekeeper", false)

			local onslaught_zerker_gatekeeper_3 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(281.45, 474, -14.85), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_zerker_gatekeeper_3, "onslaught_zerker_gatekeeper", false)
		elseif level_key == "dlc_bogenhafen_slum" then
			local onslaught_slum_gauntlet_behind = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(83.87, -43, 6.5), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_slum_gauntlet_behind, "onslaught_slum_gauntlet_behind", false)

			local onslaught_slum_gauntlet_cutoff_1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(165.44, 14.82, 3.6), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_slum_gauntlet_cutoff_1, "onslaught_slum_gauntlet_cutoff", false)

			local onslaught_slum_gauntlet_cutoff_2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(154.77, -9.38, 0.6), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_slum_gauntlet_cutoff_2, "onslaught_slum_gauntlet_cutoff", false)
			setup_custom_raw_spawner(self.world, "onslaught_slum_boss_event", Vector3(-20.6403, 155.328, 17.9035), Quaternion.from_elements(0, 0, -0.704612, -0.709593))
		elseif level_key == "dlc_bogenhafen_city" then
			setup_custom_raw_spawner(self.world, "onslaught_sewer_exit_gun_1", Vector3(-23.77, 37.6, 2.1), Quaternion.from_elements(0, 0, -0.109, -0.994))
			setup_custom_raw_spawner(self.world, "onslaught_sewer_exit_gun_2", Vector3(-7.3, 30.48, 13.52), Quaternion.from_elements(0, 0, 0.862, -0.507))
			setup_custom_raw_spawner(self.world, "onslaught_button_window1", Vector3(95.3663, 207.637, 94.0443), Quaternion.from_elements(0, 0, -0.369388, -0.929275))
			setup_custom_raw_spawner(self.world, "onslaught_button_window2", Vector3(94.164, 206.501, 94.0443), Quaternion.from_elements(0, 0, -0.369388, -0.929275))
			setup_custom_raw_spawner(self.world, "onslaught_button_window3", Vector3(92.9596, 205.391, 94.0443), Quaternion.from_elements(0, 0, -0.369388, -0.929275))
			setup_custom_raw_spawner(self.world, "onslaught_button_hidden", Vector3(64.743, 211.813, 81.9658), Quaternion.from_elements(0, 0, 0.327077, -0.944998))
			setup_custom_raw_spawner(self.world, "onslaught_button_front1", Vector3(60.1298, 209.761, 88.3211), Quaternion.from_elements(0, 0, 0.327077, -0.944998))
			setup_custom_raw_spawner(self.world, "onslaught_button_front2", Vector3(58.5169, 211.56, 88.3211), Quaternion.from_elements(0, 0, 0.327077, -0.944998))
			setup_custom_raw_spawner(self.world, "onslaught_button_front3", Vector3(57.1629, 213.096, 88.3211), Quaternion.from_elements(0, 0, 0.327077, -0.944998))
			setup_custom_raw_spawner(self.world, "onslaught_button_front4", Vector3(58.2951, 213.645, 88.3211), Quaternion.from_elements(0, 0, 0.327077, -0.944998))
			setup_custom_raw_spawner(self.world, "onslaught_button_front5", Vector3(59.3585, 212.433, 88.3211), Quaternion.from_elements(0, 0, 0.327077, -0.944998))
			setup_custom_raw_spawner(self.world, "onslaught_button_front6", Vector3(60.5645, 211.44, 88.3211), Quaternion.from_elements(0, 0, 0.327077, -0.944998))

			local onslaught_sewer_backspawn_S1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-33.87, 194.21, 6.5), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_sewer_backspawn_S1, "onslaught_sewer_backspawn", true)

			local onslaught_sewer_backspawn_S2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-30.42, 202.5, 6.5), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_sewer_backspawn_S2, "onslaught_sewer_backspawn", true)
		elseif level_key == "forest_ambush" then
			setup_custom_raw_spawner(self.world, "onslaught_doomwheel_boss", Vector3(288.65, -103.11, 20.15), Quaternion.from_elements(0, 0, 0.923, -0.385))
		elseif level_key == "dlc_portals" then
			setup_custom_raw_spawner(self.world, "onslaught_haunts_gate_outside1", Vector3(-187.699, 121.229, -42.7434), Quaternion.from_elements(0, 0, -0.825738, -0.564054))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_gate_outside2", Vector3(-184.853, 115.435, -42.4276), Quaternion.from_elements(0, 0, 0.877566, 0.479456))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_ladder_left1", Vector3(-222.542, 97.4479, -39.8397), Quaternion.from_elements(0, 0, -0.107894, -0.994162))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_ladder_right1", Vector3(-216.345, 123.297, -40.3883), Quaternion.from_elements(0, 0, -0.0431467, -0.999069))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_heads_entrance", Vector3(169.767, 15.3043, 23.473), Quaternion.from_elements(0, 0, -0.283956, -0.958837))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_heads_basement", Vector3(147.327, 33.9511, 14.473), Quaternion.from_elements(0, 0, 0.839634, -0.543153))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_heads_stairs1", Vector3(141.089, 46.1345, 21.473), Quaternion.from_elements(0, 0, 0.997354, -0.072703))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_heads_stairs2", Vector3(176.482, 50.5217, 21.473), Quaternion.from_elements(0, 0, 0.995331, -0.0965224))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_heads_HUH", Vector3(168.09, 63.6349, 21.473), Quaternion.from_elements(0, 0, 0.967619, 0.252416))
			setup_custom_raw_spawner(self.world, "onslaught_haunts_heads_portal", Vector3(160.684, 27.8345, 33.9505), Quaternion.from_elements(0, 0, 0.979543, 0.201236))
		elseif level_key == "cemetery" then
			setup_custom_raw_spawner(self.world, "onslaught_cemetery_entrance", Vector3(17.3989, 62.4018, 1.03521), Quaternion.from_elements(0, 0, 0.756467, -0.654032))
			setup_custom_raw_spawner(self.world, "onslaught_cemetery_chain_2", Vector3(-4.9349, 30.1507, 7.94961), Quaternion.from_elements(0, 0, 0.697321, -0.716759))
			setup_custom_raw_spawner(self.world, "onslaught_cemetery_chain_3", Vector3(14.6237, 58.4006, 8.21216), Quaternion.from_elements(0, 0, -0.796064, -0.605212))
			setup_custom_raw_spawner(self.world, "onslaught_cemetery_chain_4", Vector3(-4.31155, 7.42462, -0.329258), Quaternion.from_elements(0, 0, -0.193463, -0.981108))
		elseif level_key == "magnus" then
			setup_custom_raw_spawner(self.world, "onslaught_magnus_boss_middle", Vector3(-36.0143, 16.1249, 1.22907), Quaternion.from_elements(0, 0, 0.72287, -0.690984))
			setup_custom_raw_spawner(self.world, "onslaught_magnus_boss_end", Vector3(237.319, -137.575, 86.7056), Quaternion.from_elements(0, 0, 0.329146, -0.944279))
		elseif level_key == "nurgle" then
			setup_custom_raw_spawner(self.world, "Festering_loop_event_1", Vector3(-392.981, 80.0522, -4.73371), Quaternion.from_elements(0, 0, 0.0481595, -0.99884))
			setup_custom_raw_spawner(self.world, "Festering_loop_event_2", Vector3(-431.886, 128.557, -0.392142), Quaternion.from_elements(0, 0, 0.890867, -0.454264))
			setup_custom_raw_spawner(self.world, "Festering_escape_event", Vector3(-372.268, 178.556, 8.52977), Quaternion.from_elements(0, 0, 0.37137, -0.928485))
		elseif level_key == "fort" then
			setup_custom_raw_spawner(self.world, "Fort_Big_SV", Vector3(-30.5291, -26.5151, 11.1644), Quaternion.from_elements(0, 0, 0.21516, -0.976579))
		end

		local entity_manager = Managers.state.entity
		entity_manager:add_and_register_units(self.world, custom_spawners, #custom_spawners)
	end
end)

-- Nest boss logic
mod:hook(Breeds.skaven_storm_vermin_warlord, "run_on_update", function (func, unit, blackboard, t, dt)
	local side = Managers.state.side.side_by_unit[unit]
	local enemy_player_and_bot_units = side.ENEMY_PLAYER_AND_BOT_UNITS
	local enemy_player_and_bot_positions = side.ENEMY_PLAYER_AND_BOT_POSITIONS
	local self_pos = POSITION_LOOKUP[unit]
	local range = BreedActions.skaven_storm_vermin_champion.special_attack_spin.radius
	local num = 0

	for i, position in ipairs(enemy_player_and_bot_positions) do
		local player_unit = enemy_player_and_bot_units[i]

		if Vector3.distance(self_pos, position) < range and not ScriptUnit.extension(player_unit, "status_system"):is_disabled() and not ScriptUnit.extension(player_unit, "status_system"):is_invisible() then
			num = num + 1
		end
	end

	blackboard.surrounding_players = num

	if blackboard.surrounding_players > 0 then
		blackboard.surrounding_players_last = t
	end

	if not blackboard.spawned_at_t then blackboard.spawned_at_t = t end

	if not blackboard.has_spawned_initial_wave and blackboard.spawned_at_t + 4 < t then
		local conflict_director = Managers.state.conflict

		local strictly_not_close_to_players = true
		local silent = false
		local composition_type = "stronghold_boss_initial_wave"
		local limit_spawners, terror_event_id = nil
		local side_id = side.side_id
		conflict_director.horde_spawner:execute_event_horde(t, terror_event_id, side_id, composition_type, limit_spawners, silent, nil, strictly_not_close_to_players)
		blackboard.has_spawned_initial_wave = true
	end

	if blackboard.trickle_timer and blackboard.trickle_timer < t and not blackboard.defensive_mode_duration then
		local conflict_director = Managers.state.conflict

		if conflict_director:count_units_by_breed("skaven_slave") < 10 then
			local strictly_not_close_to_players = true
			local silent = true
			local composition_type = "stronghold_boss_trickle"
			local limit_spawners, terror_event_id = nil
			local side_id = side.side_id

			conflict_director.horde_spawner:execute_event_horde(t, terror_event_id, side_id, composition_type, limit_spawners, silent, nil, strictly_not_close_to_players)

			blackboard.trickle_timer = t + 8
		else
			blackboard.trickle_timer = t + 2
		end
	end

	local breed = blackboard.breed

	if blackboard.dual_wield_mode then
		local hp = ScriptUnit.extension(blackboard.unit, "health_system"):current_health_percent()
		if blackboard.current_phase == 1 and hp < 0.95 then
			blackboard.current_phase = 2
			blackboard.dual_wield_timer = t + 20
			blackboard.dual_wield_mode = false
		end

		if (blackboard.dual_wield_timer < t and not blackboard.active_node) or blackboard.defensive_mode_duration then
			blackboard.dual_wield_timer = t + 20
			blackboard.dual_wield_mode = false
		end
	else
		local hp = ScriptUnit.extension(blackboard.unit, "health_system"):current_health_percent()

		if blackboard.current_phase == 2 and hp < 0.15 then
			blackboard.current_phase = 3
			local new_run_speed = breed.angry_run_speed
			blackboard.run_speed = new_run_speed

			if not blackboard.run_speed_overridden then
				blackboard.navigation_extension:set_max_speed(new_run_speed)
			end
		elseif blackboard.current_phase == 1 and hp < 0.95 then
			blackboard.current_phase = 2
		end

		if blackboard.defensive_mode_duration then
			if not blackboard.defensive_mode_duration_at_t then
				blackboard.defensive_mode_duration_at_t = t + blackboard.defensive_mode_duration - 15
			end

			if blackboard.defensive_mode_duration_at_t <= t then
				blackboard.defensive_mode_duration = nil
				blackboard.defensive_mode_duration_at_t = nil
			else
				blackboard.defensive_mode_duration = t - blackboard.defensive_mode_duration_at_t
				blackboard.dual_wield_mode = false
			end
		elseif blackboard.dual_wield_timer < t and not blackboard.active_node then
			blackboard.dual_wield_mode = true
			blackboard.dual_wield_timer = t + 20
		end
	end

	if blackboard.displaced_units then
		AiUtils.push_intersecting_players(unit, unit, blackboard.displaced_units, breed.displace_players_data, t, dt)
	end
end)

-- Warcamp boss logic
mod:hook(Breeds.chaos_exalted_champion_warcamp, "run_on_update", function (func, unit, blackboard, t, dt)
	local self_pos = POSITION_LOOKUP[unit]
	local breed = blackboard.breed
	local wwise_world = Managers.world:wwise_world(blackboard.world)
	local range = BreedActions.chaos_exalted_champion.special_attack_aoe.radius
	local num = 0
	local player_average_hp = 0
	local side = Managers.state.side.side_by_unit[unit]
	local enemy_player_and_bot_positions = side.ENEMY_PLAYER_AND_BOT_POSITIONS
	local enemy_player_and_bot_units = side.ENEMY_PLAYER_AND_BOT_UNITS

	for i, position in ipairs(enemy_player_and_bot_positions) do
		local player_unit = enemy_player_and_bot_units[i]

		if Vector3.distance(self_pos, position) < range and not ScriptUnit.extension(player_unit, "status_system"):is_disabled() and not ScriptUnit.extension(player_unit, "status_system"):is_invisible() then
			num = num + 1
		end

		if ScriptUnit.extension(player_unit, "status_system"):is_knocked_down() then
			player_average_hp = player_average_hp - 1
		else
			local player_hp = ScriptUnit.extension(player_unit, "health_system"):current_health_percent()
			player_average_hp = player_average_hp + player_hp
		end
	end

	blackboard.surrounding_players = num

	if blackboard.surrounding_players > 0 then
		blackboard.surrounding_players_last = t
	end

	player_average_hp = player_average_hp / 4
	local hp = ScriptUnit.extension(unit, "health_system"):current_health_percent()

	if blackboard.current_phase == 1 and hp < 0.95 then
		local new_run_speed = breed.angry_run_speed
		blackboard.run_speed = new_run_speed

		if not blackboard.run_speed_overridden then
			blackboard.navigation_extension:set_max_speed(new_run_speed)
		end
	end

	if blackboard.override_spawn_allies_call_position then
		if blackboard.current_phase == 1 and hp < 0.9 then
			blackboard.current_phase = 2
			blackboard.trickle_timer = t + 1
		elseif blackboard.current_phase == 2 and hp < 0.4 then
			blackboard.current_phase = 3
		end
	end

	local conflict_director = Managers.state.conflict

	if blackboard.defensive_mode_duration then
		local remaining = blackboard.defensive_mode_duration - dt

		if remaining <= 0 or (remaining <= 15 and conflict_director:spawned_during_event() <= 20) then
			blackboard.defensive_mode_duration = nil
		elseif remaining <= 15 and conflict_director:count_units_by_breed("chaos_berzerker") < 10 then
			blackboard.defensive_mode_duration = nil
		else
			blackboard.defensive_mode_duration = remaining
		end
	end

	if hp > 0.05 and blackboard.trickle_timer and blackboard.trickle_timer < t and not blackboard.defensive_mode_duration then
		local timer = hp * 15
		timer = math.max(timer, 5)

		if conflict_director:count_units_by_breed("chaos_marauder") < 10 or conflict_director:count_units_by_breed("chaos_berzerker") < 3 then
			local strictly_not_close_to_players = true
			local silent = true
			local composition_type = "warcamp_boss_event_trickle"
			local limit_spawners = nil
			local terror_event_id = "warcamp_boss_minions"
			local side_id = side.side_id

			conflict_director.horde_spawner:execute_event_horde(t, terror_event_id, side_id, composition_type, limit_spawners, silent, nil, strictly_not_close_to_players)

			blackboard.trickle_timer = t + timer
		else
			blackboard.trickle_timer = t + (timer * 2/3)
		end
	end

	if blackboard.displaced_units then
		AiUtils.push_intersecting_players(unit, unit, blackboard.displaced_units, breed.displace_players_data, t, dt)
	end

	AiBreedSnippets.update_exalted_champion_cheer_state(unit, blackboard, t, dt, player_average_hp)

	if blackboard.ray_can_go_update_time < t and Unit.alive(blackboard.target_unit) then
		local nav_world = blackboard.nav_world
		local target_position = POSITION_LOOKUP[blackboard.target_unit]
		blackboard.ray_can_go_to_target = LocomotionUtils.ray_can_go_on_mesh(nav_world, POSITION_LOOKUP[unit], target_position, nil, 1, 1)
		blackboard.ray_can_go_update_time = t + 0.5
	end
end)

--Rasknitt boss logic
mod:hook(BTGreySeerGroundCombatAction, "update_regular_spells", function (func, self, unit, blackboard, t)
	local spell_data = blackboard.spell_data
	local ready_to_summon = nil
	local dialogue_input = ScriptUnit.extension_input(unit, "dialogue_system")
	local warp_lightning_timer = spell_data.warp_lightning_spell_timer
	local vemintide_timer = spell_data.vermintide_spell_timer
	local teleport_timer = spell_data.teleport_spell_timer
	local current_phase = blackboard.current_phase

	if vemintide_timer < t then
		blackboard.current_spell_name = "vermintide"
		ready_to_summon = true
		spell_data.vermintide_spell_timer = t + spell_data.vermintide_spell_cooldown
		local event_data = FrameTable.alloc_table()

		dialogue_input:trigger_networked_dialogue_event("egs_cast_vermintide", event_data)
	elseif warp_lightning_timer < t then
		blackboard.current_spell_name = "warp_lightning"
		ready_to_summon = true
		spell_data.warp_lightning_spell_timer = t + spell_data.warp_lightning_spell_cooldown
		local event_data = FrameTable.alloc_table()

		dialogue_input:trigger_networked_dialogue_event("egs_cast_lightning", event_data)
	end

	return ready_to_summon
end)

mod:hook(AiBreedSnippets, "on_grey_seer_update", function (func, unit, blackboard, t)
	local breed = blackboard.breed
	local mounted_data = blackboard.mounted_data
	local health_extension = ScriptUnit.extension(blackboard.unit, "health_system")
	local hp = health_extension:current_health_percent()
	local hit_reaction_extension = blackboard.hit_reaction_extension
	local position = POSITION_LOOKUP[unit]
	local current_phase = blackboard.current_phase
	local mount_unit = mounted_data.mount_unit
	local network_manager = Managers.state.network
	local game = network_manager:game()
	local go_id = Managers.state.unit_storage:go_id(unit)
	local network_transmit = network_manager.network_transmit
	local dialogue_input = ScriptUnit.extension_input(unit, "dialogue_system")

	if blackboard.intro_timer or current_phase == 6 then
		return
	end

	if blackboard.current_phase ~= 5 and blackboard.death_sequence then
		blackboard.current_phase = 5
		local event_data = FrameTable.alloc_table()

		dialogue_input:trigger_networked_dialogue_event("egs_death_scene", event_data)

		blackboard.face_player_when_teleporting = true
		blackboard.death_sequence = nil
		local strictly_not_close_to_players = true
		local silent = true
		local composition_type = "skittergate_grey_seer_trickle"
		local limit_spawners, terror_event_id = nil
		local conflict_director = Managers.state.conflict

		conflict_director.horde_spawner:execute_event_horde(t, terror_event_id, composition_type, limit_spawners, silent, nil, strictly_not_close_to_players)
	elseif current_phase == 2 and hp < 0.5 then
		blackboard.current_phase = 3
	elseif current_phase == 1 and hp < 0.75 then
		blackboard.current_phase = 2
	end

	if not AiUtils.unit_alive(mount_unit) and blackboard.current_phase ~= 5 and blackboard.current_phase ~= 6 then
		if blackboard.current_phase ~= 4 then
			local event_data = FrameTable.alloc_table()

			dialogue_input:trigger_networked_dialogue_event("egs_stormfiend_dead", event_data)
		end

		blackboard.current_phase = 4
		blackboard.knocked_off_mount = true
		blackboard.call_stormfiend = nil
		blackboard.about_to_mount = nil
		blackboard.should_mount_unit = nil
	end

	if blackboard.unlink_unit then
		blackboard.unlink_unit = nil
		local mount_blackboard = mount_unit and BLACKBOARDS[mount_unit]

		if mount_blackboard then
			mount_blackboard.linked_unit = nil
		end

		blackboard.quick_teleport_timer = t + 10
		blackboard.quick_teleport = nil
		blackboard.hp_at_knocked_off = hp
		local game = Managers.state.network:game()
		local mount_go_id = Managers.state.unit_storage:go_id(mount_unit)

		if game and mount_go_id then
			GameSession.set_game_object_field(game, mount_go_id, "animation_synced_unit_id", 0)
		end
	end

	local call_mount_hp_threshold = 0.25

	if mounted_data.knocked_off_mounted_timer and blackboard.hp_at_knocked_off and call_mount_hp_threshold <= blackboard.hp_at_knocked_off - hp then
		mounted_data.knocked_off_mounted_timer = t
	end

	if blackboard.knocked_off_mount and AiUtils.unit_alive(mount_unit) then
		local mount_blackboard = BLACKBOARDS[mount_unit]
		local mounted_timer_finished = mounted_data.knocked_off_mounted_timer and mounted_data.knocked_off_mounted_timer <= t
		local should_call_stormfiend = not blackboard.call_stormfiend and not mount_blackboard.intro_rage and mounted_timer_finished and not mount_blackboard.goal_position and not mount_blackboard.anim_cb_move

		if should_call_stormfiend then
			blackboard.call_stormfiend = true
		elseif mounted_timer_finished then
			blackboard.about_to_mount = true
			local mount_unit_position = POSITION_LOOKUP[mount_unit]
			local distance_to_goal = Vector3.distance(position, mount_unit_position)

			if distance_to_goal < 2 then
				blackboard.knocked_off_mount = nil
				blackboard.should_mount_unit = true
				blackboard.ready_to_summon = nil
				blackboard.about_to_mount = nil
				blackboard.call_stormfiend = nil
				mount_blackboard.should_mount_unit = true
				local health_extension = ScriptUnit.extension(mount_unit, "health_system")
				local mount_hp = health_extension:current_health_percent()
				mount_blackboard.hp_at_mounted = mount_hp
			end
		end
	end

	if blackboard.trickle_timer and blackboard.trickle_timer < t and not blackboard.defensive_mode_duration and current_phase < 4 then
		local conflict_director = Managers.state.conflict
		local timer = hp * 8

		if blackboard.knocked_off_mount or not AiUtils.unit_alive(mount_unit) then
			timer = timer * 0.5
		end

		if conflict_director:count_units_by_breed("skaven_slave") < 60 then
			local strictly_not_close_to_players = true
			local silent = true
			local composition_type = "skittergate_grey_seer_trickle"
			local limit_spawners, terror_event_id = nil

			conflict_director.horde_spawner:execute_event_horde(t, terror_event_id, composition_type, limit_spawners, silent, nil, strictly_not_close_to_players)

			blackboard.trickle_timer = t + timer
		else
			blackboard.trickle_timer = t + (timer / 2)
		end
	end

	if blackboard.missile_bot_threat_unit then
		local bot_threat_position = POSITION_LOOKUP[blackboard.missile_bot_threat_unit]
		local radius = 2
		local height = 1
		local half_height = height * 0.5
		local size = Vector3(radius, half_height, radius)
		bot_threat_position = bot_threat_position - Vector3.up() * half_height

		Managers.state.entity:system("ai_bot_group_system"):aoe_threat_created(bot_threat_position, "cylinder", size, nil, 1)

		blackboard.missile_bot_threat_unit = nil
	end
end)

-- Nurgloth boss logic
leech_spawn_count = 0
mod:hook(BTSpawnAllies, "_spawn", function (func, self, unit, data, blackboard, t)
	func(self, unit, data, blackboard, t)
	local comp = blackboard.action.name
	if comp == "spawn_allies_defensive" or comp == "spawn_allies_devensive_intense" then
		local conflict_director = Managers.state.conflict
		local hidden_pos = conflict_director.specials_pacing:get_special_spawn_pos()
		conflict_director:spawn_one(Breeds["chaos_vortex_sorcerer"], hidden_pos)
		conflict_director:spawn_one(Breeds["chaos_vortex_sorcerer"], hidden_pos)
	elseif comp == "spawn_allies_offensive" then
		local conflict_director = Managers.state.conflict
		local hidden_pos = conflict_director.specials_pacing:get_special_spawn_pos()
		conflict_director:spawn_one(Breeds["chaos_plague_sorcerer"], hidden_pos)
		conflict_director:spawn_one(Breeds["chaos_plague_sorcerer"], hidden_pos)
		conflict_director:spawn_one(Breeds["chaos_plague_sorcerer"], hidden_pos)
		conflict_director:spawn_one(Breeds["chaos_plague_sorcerer"], hidden_pos)
	elseif comp == "spawn_allies_trickle" then
		if leech_spawn_count == 4 then
			leech_spawn_count = 0
		else
			local conflict_director = Managers.state.conflict
			local hidden_pos = conflict_director.specials_pacing:get_special_spawn_pos()
			conflict_director:spawn_one(Breeds["chaos_corruptor_sorcerer"], hidden_pos)
			leech_spawn_count = leech_spawn_count + 1
		end
	end
end)

mod:hook(BTQuickTeleportAction, "enter", function (func, self, unit, blackboard, t)
	func(self, unit, blackboard, t)
	if blackboard.action.name == "teleport_to_aoe" then
		local conflict_director = Managers.state.conflict
		local hidden_pos = conflict_director.specials_pacing:get_special_spawn_pos()
		conflict_director:spawn_one(Breeds["chaos_plague_sorcerer"], hidden_pos)
		conflict_director:spawn_one(Breeds["chaos_plague_sorcerer"], hidden_pos)
		conflict_director:spawn_one(Breeds["chaos_plague_sorcerer"], hidden_pos)
		conflict_director:spawn_one(Breeds["chaos_plague_sorcerer"], hidden_pos)
	end
end)

-- Because it's crashy in here
mod:hook(AiUtils, "push_intersecting_players", function (func, unit, source_unit, displaced_units, data, t, dt, hit_func, ...)
	local side = Managers.state.side.side_by_unit[source_unit or unit]
	if side then
		func(unit, source_unit, displaced_units, data, t, dt, hit_func, ...)
	end
end)
