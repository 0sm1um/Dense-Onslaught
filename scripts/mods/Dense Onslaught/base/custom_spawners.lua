local mod = get_mod("Dense Onslaught")

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
		elseif level_key == "crater" then
			setup_custom_raw_spawner(self.world, "onslaught_crater_secret_boss", Vector3(117.219, -363.274, 70.3466), Quaternion.from_elements(0, 0, 0.0380069, -0.999277))
			
			local onslaught_crater_horde_behind = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(41.0398, -414.748, 38.8364), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_crater_horde_behind, "onslaught_crater_horde_behind", false)
			
			local onslaught_crater_secret_rock_top_left = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(117.549, -336.957, 71.9724), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_crater_secret_rock_top_left, "onslaught_crater_secret_rock_top_left", false)
			
			local onslaught_crater_secret_rock_outside = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(91.2889, -326.828, 70.5603), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_crater_secret_rock_outside, "onslaught_crater_secret_rock_outside", false)
			
			local onslaught_crater_secret_top_behind = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(111.371, -386.958, 68.6319), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_crater_secret_top_behind, "onslaught_crater_secret_top_behind", false)
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
			
			local onslaught_bell_boss_exit = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-67.0021, -427.543, 32.769), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_bell_boss_exit, "onslaught_bell_boss_exit", false)
		elseif level_key == "farmlands" then
			setup_custom_raw_spawner(self.world, "onslaught_farmlands_extra_boss", Vector3(-136.1, -4.8, 7), Quaternion.from_elements(0, 0, 0.988, -0.15))
			setup_custom_raw_spawner(self.world, "onslaught_wall_guard_extra_1", Vector3(-109.97, 244.96, 0.86), Quaternion.from_elements(0, 0, 0.99, -0.138))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_1", Vector3(-72.36, 257.7, 1.08), Quaternion.from_elements(0, 0, 0.871, 0.491))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_2", Vector3(-69.8, 253.7, 1.26), Quaternion.from_elements(0, 0, 0.884, 0.468))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_3", Vector3(-68.7, 255.3, 1.04), Quaternion.from_elements(0, 0, 0.874, 0.486))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_4", Vector3(-69.8, 256.7, 0.93), Quaternion.from_elements(0, 0, 0.894, 0.445))
			setup_custom_raw_spawner(self.world, "onslaught_hay_barn_bridge_guards_extra_5", Vector3(-70.9, 258.3, 0.99), Quaternion.from_elements(0, 0, 0.932, 0.361))
			setup_custom_raw_spawner(self.world, "onslaught_barn_left_hay", Vector3(-133.085, -34.3962, 2.95576), Quaternion.from_elements(0, 0, 0.587657, -0.80911))
			setup_custom_raw_spawner(self.world, "onslaught_barn_right_hay", Vector3(-124, -31.8903, 3.14337), Quaternion.from_elements(0, 0, -0.771851, -0.635804))
			setup_custom_raw_spawner(self.world, "onslaught_barn_right", Vector3(-125.36, -28.7297, -0.17267), Quaternion.from_elements(0, 0, 0.944451, 0.328652))
			local onslaught_hay_barn1_behind = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-95.0525, 292.409, 5.2572), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_hay_barn1_behind, "onslaught_hay_barn1_behind", false)
			
			local onslaught_gate_guards_cages = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-94.727, 254.811, 3.40534), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_gate_guards_cages, "onslaught_gate_guards_cages", false)
			
			setup_custom_raw_spawner(self.world, "onslaught_farmlands_boss_outstairs", Vector3(-37.1522, 258.477, 4.88891), Quaternion.from_elements(1.82169e-44, -1.82169e-44, -0.728501, -0.685045))
			setup_custom_raw_spawner(self.world, "onslaught_barn1_disabler", Vector3(-90.2197, 263.746, 1.33904), Quaternion.from_elements(0, 0, -0.44934, -0.893361))
			setup_custom_raw_spawner(self.world, "onslaught_farmlands_boss_barn2", Vector3(-52.4188, 213.594, 6.29059), Quaternion.from_elements(0, 0, -0.0643052, -0.99793))
			setup_custom_raw_spawner(self.world, "onslaught_barn2_disabler1", Vector3(-43.8511, 220.369, 13.6075), Quaternion.from_elements(0, 0, -0.548714, -0.83601))
			setup_custom_raw_spawner(self.world, "onslaught_barn2_disabler2", Vector3(-42.2728, 224.347, 13.6075), Quaternion.from_elements(0, 0, -0.593837, -0.804585))
		elseif level_key == "ussingen" then
			setup_custom_raw_spawner(self.world, "onslaught_gate_spawner_1", Vector3(-20.7, -273.77, -2), Quaternion.from_elements(0, 0, 0.91, -0.412))
			setup_custom_raw_spawner(self.world, "onslaught_gate_spawner_2", Vector3(2.68, -274.39, -0.7), Quaternion.from_elements(0, 0, 0.894, 0.446))
			setup_custom_raw_spawner(self.world, "onslaught_gate_spawner_3", Vector3(-10.15, -297.67, 0.5), Quaternion.from_elements(0, 0, 0.956, 0.294))

			setup_custom_raw_spawner(self.world, "onslaught_cart_guard_1", Vector3(-23.63, 48.57, 20.5), Quaternion.from_elements(0, 0, 0.989, -0.147))
			setup_custom_raw_spawner(self.world, "onslaught_cart_guard_2", Vector3(-17.70, 39.9, 20.5), Quaternion.from_elements(0, 0, 0.899, 0.437))

					local onslaught_camp_boss_top = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(248.979, -67.0314, 45.8501), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_camp_boss_top, "onslaught_camp_boss_top", false)
		elseif level_key == "warcamp" then
			setup_custom_raw_spawner(self.world, "onslaught_warcamp_gate_left", Vector3(169.211, 71.6414, 17.2208), Quaternion.from_elements(0, 0, 0.604571, -0.796551))
			setup_custom_raw_spawner(self.world, "onslaught_warcamp_gate_right", Vector3(174.889, 64.1507, 17.814), Quaternion.from_elements(0, 0, 0.151985, -0.988383))
			setup_custom_raw_spawner(self.world, "onslaught_warcamp_gate_top_right", Vector3(179.216, 67.288, 20.0911), Quaternion.from_elements(0, 0, -0.649069, -0.76073))
			setup_custom_raw_spawner(self.world, "onslaught_warcamp_gate_top_left", Vector3(172.512, 78.616, 20.2119), Quaternion.from_elements(0, 0, 0.983077, 0.183195))
			setup_custom_raw_spawner(self.world, "onslaught_warcamp_gate_boss", Vector3(167.907, 58.6464, 27.31), Quaternion.from_elements(0, 0, 0.28846, -0.957492))
			
			local onslaught_ram_event_left = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(224.787, 110.298, 17.577), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_ram_event_left, "onslaught_ram_event_left", false)
			
			local onslaught_ram_event_right = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(175.518, 99.2328, 15.2168), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_ram_event_right, "onslaught_ram_event_right", false)
			
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
			local onslaught_slum_gauntlet_behind = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(83.87, -43, 6.5), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_slum_gauntlet_behind, "onslaught_slum_gauntlet_behind", false)
			
			local onslaught_slum_gauntlet_cutoff_1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(165.44, 14.82, 3.6), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_slum_gauntlet_cutoff_1, "onslaught_slum_gauntlet_cutoff", false)
						
			local onslaught_slum_gauntlet_cutoff_2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(154.77, -9.38, 0.6), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_slum_gauntlet_cutoff_2, "onslaught_slum_gauntlet_cutoff", false)
			
			local onslaught_slum_gauntlet_cutoff_3 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(211.115, 56.0432, 6.46232), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_slum_gauntlet_cutoff_3, "onslaught_slum_gauntlet_cutoff_3", false)
			
			local onslaught_slum_gauntlet_cutoff_4 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(192.149, 43.8545, 5.19505), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_slum_gauntlet_cutoff_4, "onslaught_slum_gauntlet_cutoff_4", false)
			
			setup_custom_raw_spawner(self.world, "onslaught_slum_portal_boss", Vector3(243.775, 32.1861, -2.72408), Quaternion.from_elements(0, 0, -0.420442, -0.907319))
			setup_custom_raw_spawner(self.world, "onslaught_slum_escape_crate_big", Vector3(217.076, 49.5491, 3.43823), Quaternion.from_elements(0, 0, 0.999985, 0.0054615))
			setup_custom_raw_spawner(self.world, "onslaught_slum_escape_crate_small", Vector3(210.604, 47.6777, 3.38692), Quaternion.from_elements(0, 0, 0.999971, -0.00758016))
			setup_custom_raw_spawner(self.world, "onslaught_slum_escape_wall", Vector3(203.386, 46.7973, 3.65059), Quaternion.from_elements(0, 0, 0.8807, -0.473675))
			setup_custom_raw_spawner(self.world, "onslaught_slum_escape_top_behind", Vector3(110.051, -37.8289, 13.3315), Quaternion.from_elements(0, 0, 0.443055, -0.896495))
		elseif level_key == "dlc_bogenhafen_city" then			
			setup_custom_raw_spawner(self.world, "onslaught_sewer_exit_gun_1", Vector3(-23.77, 37.6, 2.1), Quaternion.from_elements(0, 0, -0.109, -0.994))
			setup_custom_raw_spawner(self.world, "onslaught_sewer_exit_gun_2", Vector3(-7.3, 30.48, 13.52), Quaternion.from_elements(0, 0, 0.862, -0.507))
			setup_custom_raw_spawner(self.world, "onslaught_city_boss_sword", Vector3(92.8897, 247.357, 83.9814), Quaternion.from_elements(0, 0, 0.944047, 0.329811))
			setup_custom_raw_spawner(self.world, "onslaught_city_boss_top", Vector3(89.8466, 239.592, 93.9732), Quaternion.from_elements(0, 0, 0.932673, 0.360723))
			
			local onslaught_sewer_room1_side = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-29.2207, 136.087, -1.84467), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_sewer_room1_side, "onslaught_sewer_room1_side", false)
			
			local onslaught_sewer_backspawn_S1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-33.87, 194.21, 6.5), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_sewer_backspawn_S1, "onslaught_sewer_backspawn", true)

			local onslaught_sewer_backspawn_S2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-30.42, 202.5, 6.5), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_sewer_backspawn_S2, "onslaught_sewer_backspawn", true)
			
			local onslaught_city_horde_top = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(83.7142, 245.165, 93.9732), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_city_horde_top, "onslaught_city_horde_top", false)
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
			setup_custom_raw_spawner(self.world, "onslaught_portals_extra_guard_1", Vector3(148.753, 28.0109, 22.473), Quaternion.from_elements(0, 0, 0.809412, -0.587241))
			setup_custom_raw_spawner(self.world, "onslaught_portals_extra_guard_2", Vector3(154.196, 25.7664, 22.473), Quaternion.from_elements(0, 0, -0.534414, -0.845223))
			setup_custom_raw_spawner(self.world, "onslaught_portals_extra_guard_3", Vector3(162.454, 24.7713, 22.4507), Quaternion.from_elements(0, 0, 0.898859, 0.438238))
		elseif level_key == "cemetery" then
			setup_custom_raw_spawner(self.world, "onslaught_cemetery_entrance", Vector3(17.3989, 62.4018, 1.03521), Quaternion.from_elements(0, 0, 0.756467, -0.654032))
			setup_custom_raw_spawner(self.world, "onslaught_cemetery_chain_2", Vector3(-4.9349, 30.1507, 7.94961), Quaternion.from_elements(0, 0, 0.697321, -0.716759))
			setup_custom_raw_spawner(self.world, "onslaught_cemetery_chain_3", Vector3(14.6237, 58.4006, 8.21216), Quaternion.from_elements(0, 0, -0.796064, -0.605212))
			setup_custom_raw_spawner(self.world, "onslaught_cemetery_chain_4", Vector3(-4.31155, 7.42462, -0.329258), Quaternion.from_elements(0, 0, -0.193463, -0.981108))

			setup_custom_raw_spawner(self.world, "onslaught_cemetery_boss", Vector3(20.6089, 38.0675, 8.8561), Quaternion.from_elements(0, 0, 0.901408, -0.43297))

		elseif level_key == "magnus" then
			local onslaught_magnus_horn = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(254.246, -134.807, 95.942), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_magnus_horn, "onslaught_magnus_horn", false)
			
			local onslaught_magnus_top_window = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(265.759, -148.805, 98.0212), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_magnus_top_window, "onslaught_magnus_top_window", false) 
			
			local onslaught_magnus_entrance = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(242.029, -124.623, 88.9141), Quaternion.identity())
			setup_custom_horde_spawner(onslaught_magnus_entrance, "onslaught_magnus_entrance", false)
			
			setup_custom_raw_spawner(self.world, "onslaught_magnus_top_left", Vector3(240.951, -149.689, 101.068), Quaternion.from_elements(0, 0, 0.312157, -0.950031))
			setup_custom_raw_spawner(self.world, "onslaught_magnus_boss_entrance", Vector3(241.119, -135.462, 86.4972), Quaternion.from_elements(0, 0, 0.213275, -0.976992))		
		elseif level_key == "nurgle" then
			setup_custom_raw_spawner(self.world, "Festering_loop_event_1", Vector3(-392.981, 80.0522, -4.73371), Quaternion.from_elements(0, 0, 0.0481595, -0.99884))
			setup_custom_raw_spawner(self.world, "Festering_loop_event_2", Vector3(-431.886, 128.557, -0.392142), Quaternion.from_elements(0, 0, 0.890867, -0.454264))
			setup_custom_raw_spawner(self.world, "Festering_escape_event", Vector3(-372.268, 178.556, 8.52977), Quaternion.from_elements(0, 0, 0.37137, -0.928485))
		elseif level_key == "fort" then
			setup_custom_raw_spawner(self.world, "Fort_Big_SV", Vector3(-30.5291, -26.5151, 11.1644), Quaternion.from_elements(0, 0, 0.21516, -0.976579))
		elseif level_key == "skaven_stronghold" then
			local dn_water_wheels_mid_event_1 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-144.851, 140.264, 36.55), Quaternion.from_elements(0, 0, 0.999997, -0.00242193))
			local dn_water_wheels_mid_event_2 = World.spawn_unit(self.world, "units/hub_elements/empty", Vector3(-166.842, 140.903, 36.55), Quaternion.from_elements(0, 0, 0.999989, 0.00470192))
			setup_custom_horde_spawner(dn_water_wheels_mid_event_1, "water_wheels_mid_event_1", true)
			setup_custom_horde_spawner(dn_water_wheels_mid_event_2, "water_wheels_mid_event_2", true)
			--setup_custom_raw_spawner(self.world, "water_wheels_mid_event_1", Vector3(-144.85794067382813, -140.76744079589844, 36.142051696777344), Quaternion.from_elements(0, 0, 1, 0))
			--setup_custom_raw_spawner(self.world, "water_wheels_mid_event_2", Vector3(-167.02798461914063, 139.26585388183594, 36.142051696777344), Quaternion.from_elements(0, 0, 1, 0))
		end
		local entity_manager = Managers.state.entity
		entity_manager:add_and_register_units(self.world, custom_spawners, #custom_spawners)
	end
end)
