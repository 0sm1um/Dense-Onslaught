local mod = get_mod("Dense Onslaught")

local mutator = mod:persistent_table("Dense Onslaught")

	------------------------------------------------
	--------------Hooks and Functions---------------
	------------------------------------------------

-- Hooks related to turning the mod on and off.
-- MISC Hooks and Helper Functions
mod:dofile("scripts/mods/Dense Onslaught/base/base")
mod:dofile("scripts/mods/Dense Onslaught/base/control")
mod:dofile("scripts/mods/Dense Onslaught/base/helper_functions")

-- Save existing tables
mod:dofile("scripts/mods/Dense Onslaught/base/save_tables")

mod:disable_all_hooks()

-- Activation and deactivation command:
mod:command("dense_onslaught", "Toggle Dense Onslaught. Must be host and in the keep.", function() 
	mutator.toggle()
	if not mutator.active then
		mod:disable_all_hooks()
	end
end)

mutator.start = function()
	-- Variables
	mod.difficulty_level = mod:get("difficulty_level")
	if mod.difficulty_level == 1 then
		mod.gain = 0.75
	elseif mod.difficulty_level == 2 then
		mod.gain = 1
	elseif mod.difficulty_level == 3 then
		mod.gain = 1.75
	else
		mod.gain = mod:get("custom_gain")
	end
	-- Load Custom Spawners
	mod:dofile("scripts/mods/Dense Onslaught/base/custom_spawners")
	-- Horde Spawner Hooks
	mod:dofile("scripts/mods/Dense Onslaught/base/horde_spawner")
	-- Load Boss AI
	mod:dofile("scripts/mods/Dense Onslaught/base/lord_ai")
	-- Load Custom Breed Data
	mod:dofile("scripts/mods/Dense Onslaught/base/breed_data")

	------------------------------------------------
	---------------------Pacing---------------------
	------------------------------------------------

	-- Reworked BreedPacks
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/breed_pack")
	-- Ambient Spawning Settings
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/pack_spawning_settings")
	-- Pacing Timers
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/pacing_settings")
	-- Intensity Settings
	mod:dofile("scripts/mods/Dense Onslaught/Mutator/intensity_settings")
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
	--mod:dofile("scripts/mods/Dense Onslaught/Events/skittergate")
	--]]
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
	--mod:dofile("scripts/mods/Dense Onslaught/Events/trail_of_treachery")

	mod:dofile("scripts/mods/Dense Onslaught/base/apply_breed_packs")

	mod.create_weights()
	mod:enable_all_hooks()
	mutator.active = true

end

mutator.stop = function()
	-- Execute code to reset all values modified by this mod back to default:
	mod:dofile("scripts/mods/Dense Onslaught/base/deactivate")
	--mod:network_send("rpc_enable_white_sv", "all", false)
	--mod:network_send("rpc_disable_white_sv", "all", true)
	mod:dofile("scripts/mods/Dense Onslaught/base/apply_breed_packs")
	mod.create_weights()
	mod:disable_all_hooks()
	mutator.active = false
end
