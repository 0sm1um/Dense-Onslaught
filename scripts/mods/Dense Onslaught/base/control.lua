local mod = get_mod("Dense Onslaught")

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

