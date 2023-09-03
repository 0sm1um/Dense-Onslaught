local mod = get_mod("Dense Onslaught")
local mutator = mod:persistent_table("Dense Onslaught")
--[[
	This file contains functions and hooks required for the rest of the mod to function.
	I do not reccomend messing with this unless you know what you are doing.
	
	Most of these functions were written by Grim.
--]]


mod.create_weights = function()
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

