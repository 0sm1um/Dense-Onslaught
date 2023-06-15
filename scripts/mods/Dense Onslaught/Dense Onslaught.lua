local mod = get_mod("Dense Onslaught")

local mutator = mod:persistent_table("Dense Onslaught")

	------------------------------------------------
	--------------Hooks and Functions---------------
	------------------------------------------------

mod:dofile("scripts/mods/Dense Onslaught/base/hooks")
mod:dofile("scripts/mods/Dense Onslaught/base/rpcs")
mod:dofile("scripts/mods/Dense Onslaught/base/level_spawners/level_spawners_init")

mod:dofile("scripts/mods/Dense Onslaught/mutator/event/event_init")
mod:dofile("scripts/mods/Dense Onslaught/mutator/horde_comps/horde_comp_init")
mod:dofile("scripts/mods/Dense Onslaught/mutator/breedpacks/breedpacks_init")
mod:dofile("scripts/mods/Dense Onslaught/mutator/patrols/patrols_init")

mod:dofile("scripts/mods/Dense Onslaught/directors/directors_init")

mod.stand_up_tables = function()
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

mod.stand_down_tables = function()
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
	
	local is_server = Managers.player.is_server

	mod:echo(Managers.player.is_server)
	
	if mod:get("dense_active") and is_server then
		mod:network_send("rpc_dense_activate", "all")		
	elseif is_server then
		mod:network_send("rpc_dense_deactivate", "all")
	else
		mod:network_send("rpc_dense_sync_request", "others")
	end

	if mod:get("dense_level") ~= nil then
		if Managers.player.is_server then
			mod:network_send("rpc_dense_level_change", "all", mod:get("dense_level"))
		else 
			mod:network_send("rpc_dense_sync_request", "others")
		end
	end

	if mod:get("giga_ambients") ~= nil then
		if Managers.player.is_server then
			mod:network_send("rpc_dense_giga_toggle", "all", mod:get("giga_ambients"))
		else 
			mod:network_send("rpc_dense_sync_request", "others")
		end
	end
end

mod.on_user_joined = function(player)
	if Managers.player.is_server then
		mod:network_send("rpc_dense_sync", "all", mod:get("dense_active"), mod:get("dense_level"), mod:get("giga_ambients"))
	else
		mod:set("dense_active", false)
		mod:network_send("rpc_dense_sync_request", "others")
	end
end

mod.on_disabled = function()
    mod.stand_down_tables()
end

mod.on_enabled = function()
    mod.stand_up_tables()

	if Managers.state.conflict then
		Managers.state.conflict:set_threat_value("skaven_rat_ogre", 25)
		Managers.state.conflict:set_threat_value("skaven_stormfiend", 25)
		Managers.state.conflict:set_threat_value("chaos_spawn", 25)
		Managers.state.conflict:set_threat_value("chaos_troll", 25)
		Managers.state.conflict:set_threat_value("beastmen_minotaur", 25)
	end
end

if mod:is_enabled() then
	mod.stand_up_tables()

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


function count_event_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed_during_event(breed_name)
end

function count_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed(breed_name)
end
