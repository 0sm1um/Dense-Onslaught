local mod = get_mod("Dense Onslaught")
local mutator = mod:persistent_table("Dense Onslaught")

	JOIN_MESSAGE = "Dense Onslaught Active"

	mod:hook(MatchmakingManager, "rpc_matchmaking_request_join_lobby", function (func, self, channel_id, lobby_id, friend_join, client_dlc_unlocked_array)
		local peer_id = CHANNEL_TO_PEER_ID[channel_id]

		if mutator.active then
			mod:chat_whisper(peer_id, JOIN_MESSAGE)
		end

		return func(self, channel_id, lobby_id, friend_join, client_dlc_unlocked_array)
	end)

	mod:network_register("rpc_enable_white_sv", function (sender, enable)
		UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 31
		UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 31
		UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 1
		UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 1
	end)

	mod:network_register("rpc_disable_white_sv", function (sender, enable)
		UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 0
		UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 30
		UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 0
		UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 5
	end)

	mod:hook_safe("ChatManager", "_add_message_to_list", function (self, channel_id, message_sender, local_player_id, message, is_system_message, pop_chat, is_dev, message_type, link, data)
		if message == JOIN_MESSAGE and not mutator.active then
			mod:network_send("rpc_enable_white_sv", "local", true)
		end
	end)

	mod.on_user_joined = function (player)
		if mutator.active then
			mod:network_send("rpc_enable_white_sv", player.peer_id, mutator.active)
		end
	end
	
-- Call when game state changes (e.g. StateLoading -> StateIngame)
mod.on_game_state_changed = function(status, state)
	if not Managers.player.is_server and mutator.active and Managers.state.game_mode ~= nil then
		mutator.stop()
		mod:echo("The Dense Onslaught mutator was disabled because you are no longer the server.")
	end
	return
end

mutator.toggle = function()
	mod.difficulty_level = mod:get("difficulty_level")
	mod.auto_enable_deathwish = mod:get("auto_enable_deathwish")
	local deathwish_mod_name = "catas"
	mod.is_mod_mutator_enabled(deathwish_mod_name, deathwish_mod_name)

	if Managers.state.game_mode == nil or (Managers.state.game_mode._game_mode_key ~= "inn" and Managers.player.is_server) then
		mod:echo("You must be in the keep to do that!")
		return
	end
	if Managers.matchmaking:_matchmaking_status() ~= "idle" then
		mod:echo("You must cancel matchmaking before toggling this.")
		return
	end
	if not mutator.active then
		if not Managers.player.is_server then
			mod:echo("You must be the host to activate this.")
			return
		end
		mutator.start()
		if mod.auto_enable_deathwish and not mod.is_mod_mutator_enabled(deathwish_mod_name, deathwish_mod_name) then
			local dw = get_mod("catas")
			local deathwish = dw:persistent_table("catas")
			deathwish.start()
			mod:chat_broadcast("Deathwish ENABLED.")
		end
		mod:network_send("rpc_enable_white_sv", "all", true)
		if mod.difficulty_level == 1 then
			mod:chat_broadcast("Dense Onslaught Level 1 ENABLED.")
		elseif mod.difficulty_level == 2 then
			mod:chat_broadcast("Dense Onslaught Level 2 ENABLED.")
		else
			mod:chat_broadcast("Dense Onslaught Level 3 ENABLED.")
		end
	else
		mutator.stop()
		mod:network_send("rpc_disable_white_sv", "all", true)

		mod:chat_broadcast("Dense Onslaught DISABLED.")
	end
end
