local mod = get_mod("Dense Onslaught")

local mutator = mod:persistent_table("DenseOnslaught")

	------------------------------------------------
	--------------Hooks and Functions---------------
	------------------------------------------------

mod:dofile("scripts/mods/Dense Onslaught/base/base")

mod:dofile("scripts/mods/Dense Onslaught/base/helper_functions")

-- Hooks related to turning the mod on and off.
mod:dofile("scripts/mods/Dense Onslaught/base/control")


mod:dofile("scripts/mods/Dense Onslaught/breedpacks/breedpacks_init")

--initalizes new directors and sets levels to use them
mod:dofile("scripts/mods/Dense Onslaught/directors/directors_init")
for level_key,data in pairs(LevelSettings) do
    mod:set(data.level_name, "dense_default")
end

-- Activation and deactivation command:
mod:command("dense_onslaught", "Toggle Dense Onslaught. Must be host and in the keep.", function() mutator.toggle() end)
	if not mutator.active then
		mod:disable_all_hooks()
	end

mutator.start = function()

	-- Save existing horde tables
	mod:dofile("scripts/mods/Dense Onslaught/base/save_tables")
	-- Load Custom Breed Data
	mod:dofile("scripts/mods/Dense Onslaught/base/breed_data")

	------------------------------------------------
	---------------------Pacing---------------------
	------------------------------------------------

	-- Ambient Spawning Settings
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/breed_pack_settings")
	-- Reworked BreedPacks
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/breed_pack")


	-- Ambient Spawning Settings
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/pack_spawning_settings")
	-- Pacing Timers
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/pacing_settings")
	-- Skaven Horde Composition
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/skaven_horde_composition")
	-- Chaos Horde Composition
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/chaos_horde_composition")
	-- Beastmen Horde Composition
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/beastmen_horde_composition")
	-- Special Spawn Settings
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/specials")
	-- Monster Trigger Settings
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/monsters")
	-- Patrol Trigger Settings
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/patrols")
	
	------------------------------------------------
	---------------------Events---------------------
	------------------------------------------------
	
	-- Generic Event Horde Composition
	mod:dofile("scripts/mods/Dense Onslaught/Events/event_horde_composition")
	-- Righteous Stand
	mod:dofile("scripts/mods/Dense Onslaught/Events/righteous_stand")
	-- Convocation of Decay
	mod:dofile("scripts/mods/Dense Onslaught/Events/convocation_of_decay")
	-- Hunger in the Dark
	mod:dofile("scripts/mods/Dense Onslaught/Events/hunger_in_the_dark")
	-- Halescourge
	mod:dofile("scripts/mods/Dense Onslaught/Events/halescourge")
	-- Athel Yenlui
	mod:dofile("scripts/mods/Dense Onslaught/Events/athel_yenlui")
	-- Screaming Bell
	mod:dofile("scripts/mods/Dense Onslaught/Events/screaming_bell")
	-- Fort Brachshit
	mod:dofile("scripts/mods/Dense Onslaught/Events/fort_brachsenbrucke")
	-- Into the Nest
	mod:dofile("scripts/mods/Dense Onslaught/Events/into_the_nest")
	-- Against the Grain
	mod:dofile("scripts/mods/Dense Onslaught/Events/against_the_grain")
	--Empire in Flames
	mod:dofile("scripts/mods/Dense Onslaught/Events/empire_in_flames")
	-- Festering Ground
	mod:dofile("scripts/mods/Dense Onslaught/Events/festering_ground")
	-- Warcamp
	mod:dofile("scripts/mods/Dense Onslaught/Events/warcamp")
	-- Skittergate
	mod:dofile("scripts/mods/Dense Onslaught/Events/skittergate")
	-- The Pit
	mod:dofile("scripts/mods/Dense Onslaught/Events/the_pit")
	-- Blightreaper
	mod:dofile("scripts/mods/Dense Onslaught/Events/blightreaper")
	-- Horn of Magnus
	mod:dofile("scripts/mods/Dense Onslaught/Events/horn_of_magnus")
	-- Garden of Morr
	mod:dofile("scripts/mods/Dense Onslaught/Events/garden_of_morr")
	-- Engines of War
	mod:dofile("scripts/mods/Dense Onslaught/Events/engines_of_war")
	-- Dark Omens
	mod:dofile("scripts/mods/Dense Onslaught/Events/dark_omens")
	-- Old Haunts
	mod:dofile("scripts/mods/Dense Onslaught/Events/old_haunts")
	-- Blood in the Darkness
	mod:dofile("scripts/mods/Dense Onslaught/Events/blood_in_the_darkness")
	-- Enchanter's lair
	mod:dofile("scripts/mods/Dense Onslaught/Events/enchanters_lair")
	-- Trail of Treachery
	mod:dofile("scripts/mods/Dense Onslaught/Events/trail_of_treachery")

	------------------------------------------------
	-----------------Apply Settings-----------------
	------------------------------------------------

	mod:dofile("scripts/mods/Dense Onslaught/base/apply_breed_packs")

	create_weights()
	mod:enable_all_hooks()
	mutator.active = true
end

mutator.stop = function()
	-- Execute code to reset all values modified by this mod back to default:
	mod:dofile("scripts/mods/Dense Onslaught/base/deactivate")
	create_weights()
	mod:disable_all_hooks()
	mutator.active = false
end

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
