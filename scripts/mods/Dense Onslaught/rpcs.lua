local mod = get_mod("Dense Onslaught")

mod:network_register("rpc_dense_activate", function (sender)
    mod:set("dense_active", true)
end)

mod:network_register("rpc_dense_deactivate", function (sender)
    mod:set("dense_active", false)
end)

mod:network_register("rpc_enable_dense_breed_changes", function (sender)
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
end)

mod:network_register("rpc_disable_dense_breed_changes", function (sender)
    UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 0
    UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 30
    UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 0
    UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 5

    --All of the below can probably be host only
    Breeds.skaven_rat_ogre.threat_value = 32
	Breeds.skaven_stormfiend.threat_value = 32
	Breeds.chaos_spawn.threat_value = 32
	Breeds.chaos_troll.threat_value = 32
	Breeds.beastmen_minotaur.threat_value = 32

    Breeds.skaven_plague_monk.patrol_active_perception = nil
    Breeds.skaven_plague_monk.patrol_passive_perception = nil
    Breeds.skaven_plague_monk.patrol_active_target_selection = nil
    Breeds.skaven_plague_monk.patrol_passive_target_selection = nil
    Breeds.skaven_plague_monk.dont_wield_weapon_on_patrol = nil
    Breeds.skaven_plague_monk.patrol_detection_radius = nil
    Breeds.skaven_plague_monk.panic_close_detection_radius_sq = nil
    Breeds.skaven_plague_monk.passive_in_patrol_start_anim = nil

    BeastmenStandardTemplates.healing_standard.radius = 15

    UtilityConsiderations.beastmen_place_standard.distance_to_target.max_value = 20

    BreedActions.skaven_storm_vermin_warlord.spawn_allies.spawn_list = {
        "skaven_storm_vermin",
		"skaven_storm_vermin"
    }
    BreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value = 2200

    BreedActions.skaven_grey_seer.ground_combat.spawn_allies_cooldown = 20
    BreedActions.skaven_grey_seer.ground_combat.staggers_until_teleport = 5
    BreedActions.skaven_grey_seer.ground_combat.warp_lightning_spell_cooldown = {
        8,
        6,
        4,
        4
    } 
    BreedActions.skaven_grey_seer.ground_combat.vermintide_spell_cooldown = {
        12,
        10,
        8,
        8
    }
    BreedActions.skaven_grey_seer.ground_combat.teleport_spell_cooldown = {
        10,
        8,
        6,
        6
    }
end)