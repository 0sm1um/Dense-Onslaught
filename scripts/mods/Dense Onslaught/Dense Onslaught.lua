local mod = get_mod("Dense Onslaught")

local mutator = mod:persistent_table("Dense Onslaught")

	------------------------------------------------
	--------------Hooks and Functions---------------
	------------------------------------------------

-- mod:dofile("scripts/mods/Dense Onslaught/base/base")

-- mod:dofile("scripts/mods/Dense Onslaught/base/helper_functions")

-- Hooks related to turning the mod on and off.
-- mod:dofile("scripts/mods/Dense Onslaught/base/control")

mod:dofile("scripts/mods/Dense Onslaught/rpcs")
mod:dofile("scripts/mods/Dense Onslaught/level_spawners/level_spawners_init")
mod:dofile("scripts/mods/Dense Onslaught/event/event_init")
mod:dofile("scripts/mods/Dense Onslaught/horde_comps/horde_comp_init")
mod:dofile("scripts/mods/Dense Onslaught/breedpacks/breedpacks_init")
mod:dofile("scripts/mods/Dense Onslaught/patrols/patrols_init")




mod:dofile("scripts/mods/Dense Onslaught/directors/directors_init")
-- for level_key,data in pairs(LevelSettings) do
--     mod:set(data.level_name, "dense_default")
-- end


local stand_up_tables = function()
	local mean = 0.4
	local range = 0.1

	RecycleSettings.max_grunts = 250                                      -- Specific to Dense, raises upper cap to ambient spawning.
	RecycleSettings.push_horde_if_num_alive_grunts_above = 200 
	
	if mod:get("low_performance_mode") then
		RecycleSettings.max_grunts = 150
		mod:chat_broadcast("Low Performance Mode ENABLED")
	end

	PackDistributions = {
		periodical = {
			max_low_density = mean,
			min_low_density = mean - range,
			min_hi_density = mean,
			max_hi_density = mean + range,
			random_distribution = false,
			zero_density_below = 0,
			max_hi_dist = 3,
			min_hi_dist = 2,
			max_low_dist = 10,
			min_low_dist = 7,
			zero_clamp_max_dist = 5
		},
		random = {}
	}

	PackSpawningDistribution = {
		standard = {
			goal_density = mean,
			clamp_main_path_zone_area = 100,
			length_density_coefficient = 0,
			spawn_cycle_length = 350,
			clamp_outer_zones_used = 1,
			distribution_method = "periodical",
			calculate_nearby_islands = false
		}
	}

	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 31
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 31
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 1
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 1

	--All of the below can probably be host only
    Breeds.skaven_rat_ogre.threat_value = 25
	Breeds.skaven_stormfiend.threat_value = 25
	Breeds.chaos_spawn.threat_value = 25
	Breeds.chaos_troll.threat_value = 25
	Breeds.beastmen_minotaur.threat_value = 25

    Breeds.skaven_plague_monk.patrol_active_perception = "perception_regular"
    Breeds.skaven_plague_monk.patrol_passive_perception = "perception_regular"
    Breeds.skaven_plague_monk.patrol_active_target_selection = "storm_patrol_death_squad_target_selection"
    Breeds.skaven_plague_monk.patrol_passive_target_selection = "patrol_passive_target_selection"
    Breeds.skaven_plague_monk.dont_wield_weapon_on_patrol = true
    Breeds.skaven_plague_monk.patrol_detection_radius = 10
    Breeds.skaven_plague_monk.panic_close_detection_radius_sq = 9
    Breeds.skaven_plague_monk.passive_in_patrol_start_anim = "move_fwd"

    BeastmenStandardTemplates.healing_standard.radius = 10
    UtilityConsiderations.beastmen_place_standard.distance_to_target.max_value = 15

    BreedActions.skaven_storm_vermin_warlord.spawn_allies.spawn_list = {
        "skaven_storm_vermin_with_shield",
        "skaven_storm_vermin_with_shield",
        "skaven_storm_vermin",
        "skaven_storm_vermin",
        "skaven_storm_vermin",
        "skaven_storm_vermin",
        "skaven_storm_vermin",
        "skaven_storm_vermin",
        "skaven_plague_monk",
        "skaven_plague_monk",
        "skaven_plague_monk",
        "skaven_plague_monk",
        "skaven_pack_master",
        "skaven_ratling_gunner"
    }

    --See hooks for Skarrik behaviour changes
    BreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value = 800


    BreedActions.skaven_grey_seer.ground_combat.spawn_allies_cooldown = 18

    BreedActions.skaven_grey_seer.ground_combat.staggers_until_teleport = 1
    BreedActions.skaven_grey_seer.ground_combat.warp_lightning_spell_cooldown = {
            2,
            2,
            2,
            2
    }
        
    BreedActions.skaven_grey_seer.ground_combat.vermintide_spell_cooldown = {
            4,
            4,
            4,
            4
    }
        
    BreedActions.skaven_grey_seer.ground_combat.teleport_spell_cooldown = {
            1.5,
            1.5,
            1.5,
            1.5
    }
end

local stand_down_tables = function()
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 0
    UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 30
    UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 0
    UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 5
	
	RecycleSettings.max_grunts = 90
	RecycleSettings.push_horde_if_num_alive_grunts_above =  60 

	PackDistributions = {
		periodical = {
			min_hi_dist = 2,
			min_low_dist = 7,
			max_low_density = 0.4,
			min_hi_density = 0.65,
			random_distribution = false,
			zero_density_below = 0.1,
			max_hi_dist = 3,
			min_low_density = 0,
			zero_clamp_max_dist = 5,
			max_low_dist = 10,
			max_hi_density = 1
		},
		random = {}
	}

	PackSpawningDistribution = {
		standard = {
			goal_density = 0.45,
			clamp_main_path_zone_area = 100,
			length_density_coefficient = 0,
			spawn_cycle_length = 350,
			clamp_outer_zones_used = 1,
			distribution_method = "periodical",
			calculate_nearby_islands = false
		}
	}

	if Managers.state.conflict then
		Managers.state.conflict:set_threat_value("skaven_rat_ogre", 32)
		Managers.state.conflict:set_threat_value("skaven_stormfiend", 32)
		Managers.state.conflict:set_threat_value("chaos_spawn", 32)
		Managers.state.conflict:set_threat_value("chaos_troll", 32)
		Managers.state.conflict:set_threat_value("beastmen_minotaur", 32)
	end

	-- if Managers.player then
	-- 	if Managers.player.is_server then
	-- 		mod:network_send("rpc_disable_dense_breed_changes", "all")
	-- 	end
	-- end
end

mod.on_setting_changed = function()
	mod:echo("setting changed")
	if mod:get("dense_active") then
		stand_up_tables()
		if Managers.state.conflict then
			Managers.state.conflict:set_threat_value("skaven_rat_ogre", 25)
			Managers.state.conflict:set_threat_value("skaven_stormfiend", 25)
			Managers.state.conflict:set_threat_value("chaos_spawn", 25)
			Managers.state.conflict:set_threat_value("chaos_troll", 25)
			Managers.state.conflict:set_threat_value("beastmen_minotaur", 25)
		end

		if Managers.player.is_server then
			mod:network_send("rpc_dense_activate", "all")
		end
	else
		stand_down_tables()
		if Managers.player.is_server then
			mod:network_send("rpc_dense_deactivate", "all")
		end
	end
end

mod.on_disabled = function()
    stand_down_tables()
end

mod.on_enabled = function()
    stand_up_tables()

	if Managers.state.conflict then
		Managers.state.conflict:set_threat_value("skaven_rat_ogre", 25)
		Managers.state.conflict:set_threat_value("skaven_stormfiend", 25)
		Managers.state.conflict:set_threat_value("chaos_spawn", 25)
		Managers.state.conflict:set_threat_value("chaos_troll", 25)
		Managers.state.conflict:set_threat_value("beastmen_minotaur", 25)
	end
end

if mod:is_enabled() then
	stand_up_tables()

	if Managers.state.conflict then
		Managers.state.conflict:set_threat_value("skaven_rat_ogre", 25)
		Managers.state.conflict:set_threat_value("skaven_stormfiend", 25)
		Managers.state.conflict:set_threat_value("chaos_spawn", 25)
		Managers.state.conflict:set_threat_value("chaos_troll", 25)
		Managers.state.conflict:set_threat_value("beastmen_minotaur", 25)
	end
end

mod:command("dense_onslaught", "Toggle Dense Onslaught. Must be host", function() 
	local toggled = mod:get("dense_active")
	mod:set("dense_active", not toggled)
end)

-- Activation and deactivation command:
-- mod:command("dense_onslaught", "Toggle Dense Onslaught. Must be host and in the keep.", function() mutator.toggle() end)
-- 	if not mutator.active then
-- 		mod:disable_all_hooks()
-- 	end

-- mutator.start = function()

-- 	mod.difficulty_level = mod:get("difficulty_level")
-- 	if mod.difficulty_level == 1 then
-- 		mod.gain = 0.85
-- 	elseif mod.difficulty_level == 2 then
-- 		mod.gain = 1
-- 	else
-- 		mod.gain = 1.25
-- 	end

-- 	-- Save existing tables
-- 	mod:dofile("scripts/mods/Dense Onslaught/base/save_tables")
-- 	-- Load Custom Breed Data
-- 	mod:dofile("scripts/mods/Dense Onslaught/base/breed_data")

-- 	------------------------------------------------
-- 	---------------------Pacing---------------------
-- 	------------------------------------------------

-- 	-- Reworked BreedPacks
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/breed_pack")
-- 	-- Ambient Spawning Settings
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/pack_spawning_settings")
-- 	-- Pacing Timers
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/pacing_settings")
-- 	-- Skaven Horde Composition
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/skaven_horde_composition")
-- 	-- Chaos Horde Composition
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/chaos_horde_composition")
-- 	-- Beastmen Horde Composition
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/beastmen_horde_composition")
-- 	-- Special Spawn Settings
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/specials")
-- 	-- Monster Trigger Settings
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/monsters")
-- 	-- Patrol Trigger Settings
-- 	mod:dofile("scripts/mods/Dense Onslaught/Mutator/patrols")
	
-- 	------------------------------------------------
-- 	---------------------Events---------------------
-- 	------------------------------------------------
	
-- 	-- Generic Event Horde Composition
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/event_horde_composition")
-- 	-- Righteous Stand
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/righteous_stand")
-- 	-- Convocation of Decay
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/convocation_of_decay")
-- 	-- Hunger in the Dark
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/hunger_in_the_dark")
-- 	-- Halescourge
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/halescourge")
-- 	-- Athel Yenlui
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/athel_yenlui")
-- 	-- Screaming Bell
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/screaming_bell")
-- 	-- Fort Brachshit
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/fort_brachsenbrucke")
-- 	-- Into the Nest
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/into_the_nest")
-- 	-- Against the Grain
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/against_the_grain")
-- 	--Empire in Flames
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/empire_in_flames")
-- 	-- Festering Ground
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/festering_ground")
-- 	-- Warcamp
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/warcamp")
-- 	-- Skittergate
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/skittergate")
-- 	-- The Pit
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/the_pit")
-- 	-- Blightreaper
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/blightreaper")
-- 	-- Horn of Magnus
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/horn_of_magnus")
-- 	-- Garden of Morr
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/garden_of_morr")
-- 	-- Engines of War
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/engines_of_war")
-- 	-- Dark Omens
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/dark_omens")
-- 	-- Old Haunts
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/old_haunts")
-- 	-- Blood in the Darkness
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/blood_in_the_darkness")
-- 	-- Enchanter's lair
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/enchanters_lair")
-- 	-- Trail of Treachery
-- 	mod:dofile("scripts/mods/Dense Onslaught/Events/trail_of_treachery")

-- 	create_weights()
-- 	mod:enable_all_hooks()
-- 	mutator.active = true
-- end

-- mutator.stop = function()
-- 	-- Execute code to reset all values modified by this mod back to default:
-- 	mod:dofile("scripts/mods/Dense Onslaught/base/deactivate")
-- 	create_weights()
-- 	mod:disable_all_hooks()
-- 	mutator.active = false
-- end

-- mod:hook(Pacing, "disable", function (func, self)
-- 	self._threat_population = 1
-- 	self._specials_population = 1
-- 	self._horde_population = 0
-- 	self.pacing_state = "pacing_frozen"
-- end)

-- mod:hook(TerrorEventMixer.init_functions, "control_specials", function (func, event, element, t)
-- 	local conflict_director = Managers.state.conflict
-- 	local specials_pacing = conflict_director.specials_pacing
-- 	local not_already_enabled = specials_pacing:is_disabled()

-- 	if specials_pacing then
-- 		specials_pacing:enable(element.enable)

-- 		if element.enable and not_already_enabled then
-- 			local delay = math.random(5, 12)
-- 			local per_unit_delay = math.random(8, 16)
-- 			local t = Managers.time:time("game")

-- 			specials_pacing:delay_spawning(t, delay, per_unit_delay, true)
-- 		end
-- 	end
-- end)

-- mod:hook(ConflictDirector, "calculate_threat_value", function (func, self)
-- 	local aggroed_units = {}
-- 	local ai_system = Managers.state.entity:system('ai_system')
-- 	local broadphase = ai_system.broadphase

-- 	for i, player in pairs(Managers.player:human_and_bot_players()) do
-- 		local ai_units = {}
-- 		if player.player_unit then
-- 			local num_ai_units = Broadphase.query(broadphase, Unit.local_position(player.player_unit, 0), 50, ai_units)
-- 			if num_ai_units > 0 then
-- 				for i = 1, num_ai_units do
-- 					local ai_unit = ai_units[i]
-- 					if ScriptUnit.has_extension(ai_unit, 'health_system') and ScriptUnit.extension(ai_unit, 'health_system'):is_alive() and BLACKBOARDS[ai_unit].target_unit then
-- 						aggroed_units[ai_unit] = ai_unit
-- 					end
-- 				end
-- 			end
-- 		end
-- 	end

-- 	local threat_value = 0
-- 	local count = 0

-- 	for _, unit in pairs(aggroed_units) do
-- 		local breed = Unit.get_data(unit, "breed")
-- 		threat_value = threat_value + (override_threat_value or breed.threat_value or 0)
-- 		count = count + 1
-- 	end

-- 	self.delay_horde = self.delay_horde_threat_value < threat_value
-- 	self.delay_mini_patrol = self.delay_mini_patrol_threat_value < threat_value
-- 	self.delay_specials = self.delay_specials_threat_value < threat_value
-- 	self.threat_value = threat_value
-- 	self.num_aggroed = count
-- end)
