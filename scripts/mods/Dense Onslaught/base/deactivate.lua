local mod = get_mod("Dense Onslaught")

	TerrorEventBlueprints = mutator.OriginalTerrorEventBlueprints
	RecycleSettings.push_horde_if_num_alive_grunts_above = mutator.OriginalRecycleSettings.push_horde_if_num_alive_grunts_above
	RecycleSettings.max_grunts = mutator.OriginalRecycleSettings.max_grunts

	BeastmenStandardTemplates.healing_standard.radius = 15
	UtilityConsiderations.beastmen_place_standard.distance_to_target.max_value = 10
	BuffTemplates.healing_standard.buffs = mutator.OriginalBeastmenBannerBuff

	BreedPacks.skaven_beastmen = mutator.OriginalBreedPacks.skaven_beastmen
	BreedPacks.chaos_beastmen = mutator.OriginalBreedPacks.chaos_beastmen
	BreedPacks.beastmen = mutator.OriginalBreedPacks.beastmen
	BreedPacks.beastmen_elites = mutator.OriginalBreedPacks.beastmen_elites
	BreedPacks.beastmen_light = mutator.OriginalBreedPacks.beastmen_light
	BreedPacks.standard = mutator.OriginalBreedPacks.standard
	BreedPacks.standard_no_elites = mutator.OriginalBreedPacks.standard_no_elites
	BreedPacks.skaven = mutator.OriginalBreedPacks.skaven
	BreedPacks.shield_rats = mutator.OriginalBreedPacks.shield_rats
	BreedPacks.plague_monks = mutator.OriginalBreedPacks.plague_monks
	BreedPacks.marauders_shields = mutator.OriginalBreedPacks.marauders_shields

	PackSpawningSettings.default.area_density_coefficient = mutator.OriginalPackSpawningSettings.default.area_density_coefficient
	PackSpawningSettings.default_light.area_density_coefficient = mutator.OriginalPackSpawningSettings.default_light.area_density_coefficient
	PackSpawningSettings.skaven.area_density_coefficient = mutator.OriginalPackSpawningSettings.skaven.area_density_coefficient
	PackSpawningSettings.skaven_light.area_density_coefficient = mutator.OriginalPackSpawningSettings.skaven_light.area_density_coefficient
	PackSpawningSettings.chaos.area_density_coefficient = mutator.OriginalPackSpawningSettings.chaos.area_density_coefficient
	PackSpawningSettings.chaos_light.area_density_coefficient = mutator.OriginalPackSpawningSettings.chaos_light.area_density_coefficient
	PackSpawningSettings.beastmen.area_density_coefficient = mutator.OriginalPackSpawningSettings.beastmen.area_density_coefficient
	PackSpawningSettings.skaven_beastmen.area_density_coefficient = mutator.OriginalPackSpawningSettings.skaven_beastmen.area_density_coefficient
	PackSpawningSettings.chaos_beastmen.area_density_coefficient = mutator.OriginalPackSpawningSettings.chaos_beastmen.area_density_coefficient
	PackSpawningSettings.beastmen_light.area_density_coefficient = mutator.OriginalPackSpawningSettings.beastmen_light.area_density_coefficient

	PackSpawningSettings.default.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.default.roaming_set.breed_packs_override
	PackSpawningSettings.default_light.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.default_light.roaming_set.breed_packs_override
	PackSpawningSettings.skaven.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.skaven.roaming_set.breed_packs_override
	PackSpawningSettings.skaven_light.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.skaven_light.roaming_set.breed_packs_override
	PackSpawningSettings.chaos.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.chaos.roaming_set.breed_packs_override
	PackSpawningSettings.chaos_light.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.chaos_light.roaming_set.breed_packs_override
	PackSpawningSettings.beastmen.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.beastmen.roaming_set.breed_packs_override
	PackSpawningSettings.skaven_beastmen.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.skaven_beastmen.roaming_set.breed_packs_override
	PackSpawningSettings.chaos_beastmen.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.chaos_beastmen.roaming_set.breed_packs_override
	PackSpawningSettings.beastmen_light.roaming_set.breed_packs_override = mutator.OriginalPackSpawningSettings.beastmen_light.roaming_set.breed_packs_override

	PackSpawningSettings.default.difficulty_overrides = mutator.OriginalPackSpawningSettings.default.difficulty_overrides
	PackSpawningSettings.skaven.difficulty_overrides = mutator.OriginalPackSpawningSettings.skaven.difficulty_overrides
	PackSpawningSettings.skaven_light.difficulty_overrides = mutator.OriginalPackSpawningSettings.skaven_light.difficulty_overrides
	PackSpawningSettings.chaos.difficulty_overrides = mutator.OriginalPackSpawningSettings.chaos.difficulty_overrides
	PackSpawningSettings.beastmen.difficulty_overrides = mutator.OriginalPackSpawningSettings.beastmen.difficulty_overrides
	PackSpawningSettings.skaven_beastmen.difficulty_overrides = mutator.OriginalPackSpawningSettings.skaven_beastmen.difficulty_overrides
	PackSpawningSettings.chaos_beastmen.difficulty_overrides = mutator.OriginalPackSpawningSettings.chaos_beastmen.difficulty_overrides

	PacingSettings.default.peak_fade_threshold = mutator.OriginalPacingSettingsDefault.peak_fade_threshold
	PacingSettings.default.peak_intensity_threshold = mutator.OriginalPacingSettingsDefault.peak_intensity_threshold
	PacingSettings.default.sustain_peak_duration = mutator.OriginalPacingSettingsDefault.sustain_peak_duration
	PacingSettings.default.relax_duration = mutator.OriginalPacingSettingsDefault.relax_duration
	PacingSettings.default.horde_frequency = mutator.OriginalPacingSettingsDefault.horde_frequency
	PacingSettings.default.multiple_horde_frequency = mutator.OriginalPacingSettingsDefault.multiple_horde_frequency
	PacingSettings.default.max_delay_until_next_horde = mutator.OriginalPacingSettingsDefault.max_delay_until_next_horde
	PacingSettings.default.horde_startup_time = mutator.OriginalPacingSettingsDefault.horde_startup_time

	PacingSettings.default.mini_patrol.only_spawn_above_intensity = mutator.OriginalPacingSettingsDefault.mini_patrol.only_spawn_above_intensity
	PacingSettings.default.mini_patrol.only_spawn_below_intensity = mutator.OriginalPacingSettingsDefault.mini_patrol.only_spawn_below_intensity
	PacingSettings.default.mini_patrol.frequency = mutator.OriginalPacingSettingsDefault.mini_patrol.frequency
	PacingSettings.default.difficulty_overrides = mutator.OriginalPacingSettingsDefault.difficulty_overrides

	PacingSettings.chaos.peak_fade_threshold = mutator.OriginalPacingSettingsChaos.peak_fade_threshold
	PacingSettings.chaos.peak_intensity_threshold = mutator.OriginalPacingSettingsChaos.peak_intensity_threshold
	PacingSettings.chaos.sustain_peak_duration = mutator.OriginalPacingSettingsChaos.sustain_peak_duration
	PacingSettings.chaos.relax_duration = mutator.OriginalPacingSettingsChaos.relax_duration
	PacingSettings.chaos.horde_frequency = mutator.OriginalPacingSettingsChaos.horde_frequency
	PacingSettings.chaos.multiple_horde_frequency = mutator.OriginalPacingSettingsChaos.multiple_horde_frequency
	PacingSettings.chaos.max_delay_until_next_horde = mutator.OriginalPacingSettingsChaos.max_delay_until_next_horde
	PacingSettings.chaos.horde_startup_time = mutator.OriginalPacingSettingsChaos.horde_startup_time
	PacingSettings.chaos.multiple_hordes = mutator.OriginalPacingSettingsChaos.multiple_hordes

	PacingSettings.chaos.mini_patrol.only_spawn_above_intensity = mutator.OriginalPacingSettingsChaos.mini_patrol.only_spawn_above_intensity
	PacingSettings.chaos.mini_patrol.only_spawn_below_intensity = mutator.OriginalPacingSettingsChaos.mini_patrol.only_spawn_below_intensity
	PacingSettings.chaos.mini_patrol.frequency = mutator.OriginalPacingSettingsChaos.mini_patrol.frequency
	PacingSettings.chaos.difficulty_overrides = mutator.OriginalPacingSettingsChaos.difficulty_overrides

	PacingSettings.beastmen.peak_fade_threshold = mutator.OriginalPacingSettingsBeastmen.peak_fade_threshold
	PacingSettings.beastmen.peak_intensity_threshold = mutator.OriginalPacingSettingsBeastmen.peak_intensity_threshold
	PacingSettings.beastmen.sustain_peak_duration = mutator.OriginalPacingSettingsBeastmen.sustain_peak_duration
	PacingSettings.beastmen.relax_duration = mutator.OriginalPacingSettingsBeastmen.relax_duration
	PacingSettings.beastmen.horde_frequency = mutator.OriginalPacingSettingsBeastmen.horde_frequency
	PacingSettings.beastmen.multiple_horde_frequency = mutator.OriginalPacingSettingsBeastmen.multiple_horde_frequency
	PacingSettings.beastmen.max_delay_until_next_horde = mutator.OriginalPacingSettingsBeastmen.max_delay_until_next_horde
	PacingSettings.beastmen.horde_startup_time = mutator.OriginalPacingSettingsBeastmen.horde_startup_time

	PacingSettings.beastmen.mini_patrol.only_spawn_above_intensity = mutator.OriginalPacingSettingsBeastmen.mini_patrol.only_spawn_above_intensity
	PacingSettings.beastmen.mini_patrol.only_spawn_below_intensity = mutator.OriginalPacingSettingsBeastmen.mini_patrol.only_spawn_below_intensity
	PacingSettings.beastmen.mini_patrol.frequency = mutator.OriginalPacingSettingsBeastmen.mini_patrol.frequency
	PacingSettings.beastmen.difficulty_overrides = mutator.OriginalPacingSettingsBeastmen.difficulty_overrides

	HordeCompositionsPacing.small = mutator.OriginalHordeCompositionsPacing.small
	HordeCompositionsPacing.medium = mutator.OriginalHordeCompositionsPacing.medium
	HordeCompositionsPacing.large = mutator.OriginalHordeCompositionsPacing.large
	HordeCompositionsPacing.huge = mutator.OriginalHordeCompositionsPacing.huge
	HordeCompositionsPacing.huge_shields = mutator.OriginalHordeCompositionsPacing.huge_shields
	HordeCompositionsPacing.huge_armor = mutator.OriginalHordeCompositionsPacing.huge_armor
	HordeCompositionsPacing.huge_berzerker = mutator.OriginalHordeCompositionsPacing.huge_berzerker
	HordeCompositionsPacing.chaos_medium = mutator.OriginalHordeCompositionsPacing.chaos_medium
	HordeCompositionsPacing.chaos_large = mutator.OriginalHordeCompositionsPacing.chaos_large
	HordeCompositionsPacing.chaos_huge = mutator.OriginalHordeCompositionsPacing.chaos_huge
	HordeCompositionsPacing.chaos_huge_shields = mutator.OriginalHordeCompositionsPacing.chaos_huge_shields
	HordeCompositionsPacing.chaos_huge_armor = mutator.OriginalHordeCompositionsPacing.chaos_huge_armor
	HordeCompositionsPacing.chaos_huge_berzerker = mutator.OriginalHordeCompositionsPacing.chaos_huge_berzerker
	HordeCompositionsPacing.beastmen_medium = mutator.OriginalHordeCompositionsPacing.beastmen_medium
	HordeCompositionsPacing.beastmen_large = mutator.OriginalHordeCompositionsPacing.beastmen_large
	HordeCompositionsPacing.beastmen_huge = mutator.OriginalHordeCompositionsPacing.beastmen_huge
	HordeCompositionsPacing.beastmen_huge_armor = mutator.OriginalHordeCompositionsPacing.beastmen_huge_armor

	SpecialsSettings.default.max_specials = mutator.OriginalSpecialsSettings.default.max_specials
	SpecialsSettings.default_light.max_specials = mutator.OriginalSpecialsSettings.default_light.max_specials
	SpecialsSettings.skaven.max_specials = mutator.OriginalSpecialsSettings.skaven.max_specials
	SpecialsSettings.skaven_light.max_specials = mutator.OriginalSpecialsSettings.skaven_light.max_specials
	SpecialsSettings.chaos.max_specials = mutator.OriginalSpecialsSettings.chaos.max_specials
	SpecialsSettings.chaos_light.max_specials = mutator.OriginalSpecialsSettings.chaos_light.max_specials
	SpecialsSettings.beastmen.max_specials = mutator.OriginalSpecialsSettings.beastmen.max_specials
	SpecialsSettings.skaven_beastmen.max_specials = mutator.OriginalSpecialsSettings.skaven_beastmen.max_specials
	SpecialsSettings.chaos_beastmen.max_specials = mutator.OriginalSpecialsSettings.chaos_beastmen.max_specials
	PacingSettings.default.delay_specials_threat_value = mutator.OriginalPacingSettingsDefault.delay_specials_threat_value
	PacingSettings.chaos.delay_specials_threat_value = mutator.OriginalPacingSettingsChaos.delay_specials_threat_value
	PacingSettings.beastmen.delay_specials_threat_value = mutator.OriginalPacingSettingsBeastmen.delay_specials_threat_value
	SpecialsSettings.default.methods.specials_by_slots = mutator.OriginalSpecialsSettings.default.methods.specials_by_slots
	SpecialsSettings.default_light.methods.specials_by_slots = mutator.OriginalSpecialsSettings.default_light.methods.specials_by_slots
	SpecialsSettings.skaven.methods.specials_by_slots = mutator.OriginalSpecialsSettings.skaven.methods.specials_by_slots
	SpecialsSettings.skaven_light.methods.specials_by_slots = mutator.OriginalSpecialsSettings.skaven_light.methods.specials_by_slots
	SpecialsSettings.chaos.methods.specials_by_slots = mutator.OriginalSpecialsSettings.chaos.methods.specials_by_slots
	SpecialsSettings.chaos_light.methods.specials_by_slots = mutator.OriginalSpecialsSettings.chaos_light.methods.specials_by_slots
	SpecialsSettings.beastmen.methods.specials_by_slots = mutator.OriginalSpecialsSettings.beastmen.methods.specials_by_slots
	SpecialsSettings.skaven_beastmen.methods.specials_by_slots = mutator.OriginalSpecialsSettings.skaven_beastmen.methods.specials_by_slots
	SpecialsSettings.chaos_beastmen.methods.specials_by_slots = mutator.OriginalSpecialsSettings.chaos_beastmen.methods.specials_by_slots

	SpecialsSettings.default.difficulty_overrides = mutator.OriginalSpecialsSettings.default.difficulty_overrides
	SpecialsSettings.default_light.difficulty_overrides = mutator.OriginalSpecialsSettings.default_light.difficulty_overrides
	SpecialsSettings.skaven.difficulty_overrides = mutator.OriginalSpecialsSettings.skaven.difficulty_overrides
	SpecialsSettings.skaven_light.difficulty_overrides = mutator.OriginalSpecialsSettings.skaven_light.difficulty_overrides
	SpecialsSettings.chaos.difficulty_overrides = mutator.OriginalSpecialsSettings.chaos.difficulty_overrides
	SpecialsSettings.chaos_light.difficulty_overrides = mutator.OriginalSpecialsSettings.chaos_light.difficulty_overrides
	SpecialsSettings.beastmen.difficulty_overrides = mutator.OriginalSpecialsSettings.beastmen.difficulty_overrides
	SpecialsSettings.skaven_beastmen.difficulty_overrides = mutator.OriginalSpecialsSettings.skaven_beastmen.difficulty_overrides
	SpecialsSettings.chaos_beastmen.difficulty_overrides = mutator.OriginalSpecialsSettings.chaos_beastmen.difficulty_overrides

	for name, value in pairs(mutator.OriginalThreatValue) do
		Breeds[name].threat_value = value
	end

	Managers.state.conflict:set_threat_value("skaven_rat_ogre", mutator.OriginalThreatValue["skaven_rat_ogre"])
	Managers.state.conflict:set_threat_value("skaven_stormfiend", mutator.OriginalThreatValue["skaven_stormfiend"])
	Managers.state.conflict:set_threat_value("chaos_spawn", mutator.OriginalThreatValue["chaos_spawn"])
	Managers.state.conflict:set_threat_value("chaos_troll", mutator.OriginalThreatValue["chaos_troll"])
	Managers.state.conflict:set_threat_value("beastmen_minotaur", mutator.OriginalThreatValue["beastmen_minotaur"])

	BossSettings.default.boss_events.events = mutator.OriginalBossSettings.default.boss_events.events
	BossSettings.default_light.boss_events.events = mutator.OriginalBossSettings.default_light.boss_events.events
	BossSettings.skaven.boss_events.events = mutator.OriginalBossSettings.skaven.boss_events.events
	BossSettings.skaven_light.boss_events.events = mutator.OriginalBossSettings.skaven_light.boss_events.events
	BossSettings.chaos.boss_events.events = mutator.OriginalBossSettings.chaos.boss_events.events
	BossSettings.chaos_light.boss_events.events = mutator.OriginalBossSettings.chaos_light.boss_events.events
	BossSettings.beastmen.boss_events.events = mutator.OriginalBossSettings.beastmen.boss_events.events
	BossSettings.skaven_beastmen.boss_events.events = mutator.OriginalBossSettings.skaven_beastmen.boss_events.events
	BossSettings.chaos_beastmen.boss_events.events = mutator.OriginalBossSettings.chaos_beastmen.boss_events.events
	BossSettings.beastmen_light.boss_events.events = mutator.OriginalBossSettings.beastmen_light.boss_events.events
	
	-- Patrol Templates
	GenericTerrorEvents = mutator.OriginalGenericTerrorEvents
	
	-- Original Event Horde Compositions

	HordeCompositions.event_smaller = mutator.OriginalHordeCompositions.event_smaller
	HordeCompositions.event_small = mutator.OriginalHordeCompositions.event_small
	HordeCompositions.event_medium = mutator.OriginalHordeCompositions.event_medium
	HordeCompositions.event_large = mutator.OriginalHordeCompositions.event_large
	HordeCompositions.event_small_chaos = mutator.OriginalHordeCompositions.event_small_chaos
	HordeCompositions.event_medium_chaos = mutator.OriginalHordeCompositions.event_medium_chaos
	HordeCompositions.event_large_chaos = mutator.OriginalHordeCompositions.event_large_chaos
	HordeCompositions.event_extra_spice_small = mutator.OriginalHordeCompositions.event_extra_spice_small
	HordeCompositions.event_extra_spice_medium = mutator.OriginalHordeCompositions.event_extra_spice_medium
	HordeCompositions.event_extra_spice_large = mutator.OriginalHordeCompositions.event_extra_spice_large

	HordeCompositions.military_end_event_chaos_01 = mutator.OriginalHordeCompositions.military_end_event_chaos_01
	HordeCompositions.military_end_event_berzerkers = mutator.OriginalHordeCompositions.military_end_event_berzerkers
	HordeCompositions.event_ussingen_gate_group = mutator.OriginalHordeCompositions.event_ussingen_gate_group

	table.remove(BreedBehaviors.chaos_exalted_sorcerer[7], 2)
	HordeCompositions.sorcerer_boss_event_defensive = mutator.OriginalHordeCompositions.sorcerer_boss_event_defensive
	HordeCompositions.sorcerer_extra_spawn = mutator.OriginalHordeCompositions.sorcerer_extra_spawn

	BreedActions.skaven_storm_vermin_warlord.spawn_allies.difficulty_spawn_list = mutator.OriginalBreedActions.skaven_storm_vermin_warlord.spawn_allies.difficulty_spawn_list
	BreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value = mutator.OriginalBreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value
	HordeCompositions.stronghold_boss_event_defensive = mutator.OriginalHordeCompositions.stronghold_boss_event_defensive
	HordeCompositions.stronghold_boss_trickle = mutator.OriginalHordeCompositions.stronghold_boss_trickle

	HordeCompositions.warcamp_boss_event_trickle = mutator.OriginalHordeCompositions.warcamp_boss_event_trickle
	HordeCompositions.warcamp_boss_event_defensive = mutator.OriginalHordeCompositions.warcamp_boss_event_defensive

	BreedActions.skaven_grey_seer.ground_combat.spawn_allies_cooldown = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.spawn_allies_cooldown
	BreedActions.skaven_grey_seer.ground_combat.staggers_until_teleport = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.staggers_until_teleport
	BreedActions.skaven_grey_seer.ground_combat.warp_lightning_spell_cooldown = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.warp_lightning_spell_cooldown
	BreedActions.skaven_grey_seer.ground_combat.vermintide_spell_cooldown = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.vermintide_spell_cooldown
	BreedActions.skaven_grey_seer.ground_combat.teleport_spell_cooldown = mutator.OriginalBreedActions.skaven_grey_seer.ground_combat.teleport_spell_cooldown
	HordeCompositions.skittergate_grey_seer_trickle = mutator.OriginalHordeCompositions.skittergate_grey_seer_trickle
	HordeCompositions.skittergate_boss_event_defensive = mutator.OriginalHordeCompositions.skittergate_boss_event_defensive

	-- Revert Breed Settings to Default Values
	Breeds.skaven_storm_vermin.primary_armor_category = nil
	Breeds.skaven_storm_vermin.max_health = BreedTweaks.max_health.stormvermin
	Breeds.skaven_storm_vermin.hit_mass_counts = BreedTweaks.hit_mass_counts.stormvermin
	Breeds.skaven_storm_vermin.bloodlust_health = BreedTweaks.bloodlust_health.skaven_elite
	Breeds.skaven_storm_vermin.size_variation_range = { 1.1, 1.175 }
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 0
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 30
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 0
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 5
	
	Breeds.skaven_plague_monk.breed_data = {
	detection_radius = 24,
	walk_speed = 3.25,
	wwise_voice_switch_group = "plague_monk_vce_variations",
	attack_start_slow_fraction = 0.25,
	ai_strength = 3,
	bone_lod_level = 1,
	poison_resistance = 100,
	berzerker_alert = true,
	animation_sync_rpc = "rpc_sync_anim_state_9",
	is_bot_threat = true,
	is_always_spawnable = true,
	ai_toughness = 2,
	has_inventory = true,
	has_running_attack = true,
	slot_template = "skaven_elite",
	threat_value = 5,
	awards_positive_reinforcement_message = true,
	attack_general_sound_event = "Play_plague_monk_frenzy_attack_vce",
	default_inventory_template = "dual_sword",
	stagger_resistance = 1.5,
	dialogue_source_name = "skaven_plague_monk",
	flingable = true,
	berzerking_stagger_time = 0.65,
	radius = 2,
	run_speed_interpolation_factor = 0.5,
	hit_mass_count = 2.5,
	stagger_threshold_explosion = 5,
	perception_previous_attacker_stickyness_value = 0,
	race = "skaven",
	proximity_system_check = true,
	death_reaction = "ai_default",
	armor_category = 5,
	backstab_player_sound_event = "Play_plague_monk_attack_player_back_vce",
	death_sound_event = "Play_enemy_plague_monk_death_new_vce",
	dodge_timer = 0.15,
	smart_targeting_width = 0.2,
	behavior = "plague_monk",
	during_horde_detection_radius = 12,
	attack_player_sound_event = "Play_plague_monk_frenzy_attack_vce",
	target_selection = "pick_closest_target_with_spillover",
	attack_start_slow_factor_time = 0.2,
	run_speed = 5.5,
	exchange_order = 3,
	stagger_threshold_heavy = 3,
	stagger_threshold_light = 0.75,
	hit_reaction = "ai_default",
	hit_effect_template = "HitEffectsSkavenPlagueMonk",
	using_combo = true,
	passive_walk_speed = 2,
	horde_behavior = "plague_monk",
	unit_template = "ai_unit_plague_monk",
	smart_object_template = "special",
	perception = "perception_regular",
	player_locomotion_constrain_radius = 0.7,
	stagger_threshold_medium = 2,
	weapon_reach = 2,
	horde_target_selection = "horde_pick_closest_target_with_spillover",
	use_backstab_vo = true,
	vortexable = true,
	allow_aoe_push = true,
	base_unit = "units/beings/enemies/skaven_plague_monk/chr_skaven_plague_monk",
	aoe_height = 1.4,
	elite = true,
	animation_merge_options = {
		idle_animation_merge_options = {},
		move_animation_merge_options = {},
		walk_animation_merge_options = {},
		interest_point_animation_merge_options = {}
	},
	hitzone_multiplier_types = {
		head = "headshot"
	},
	hit_zones = {
		head = {
			prio = 1,
			actors = {
				"c_head"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_spine1"
			}
		},
		neck = {
			prio = 1,
			actors = {
				"c_neck"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_spine1"
			}
		},
		neck1 = {
			prio = 1,
			actors = {
				"c_neck1"
			},
			push_actors = {
				"j_head",
				"j_neck1",
				"j_spine1"
			}
		},
		torso = {
			prio = 2,
			actors = {
				"c_spine2",
				"c_spine",
				"c_hips"
			},
			push_actors = {
				"j_neck",
				"j_spine1",
				"j_hips"
			}
		},
		left_arm = {
			prio = 3,
			actors = {
				"c_leftarm",
				"c_leftforearm",
				"c_lefthand"
			},
			push_actors = {
				"j_spine1",
				"j_leftshoulder",
				"j_leftarm"
			}
		},
		right_arm = {
			prio = 3,
			actors = {
				"c_rightarm",
				"c_rightforearm",
				"c_righthand"
			},
			push_actors = {
				"j_spine1",
				"j_rightshoulder",
				"j_rightarm"
			}
		},
		left_leg = {
			prio = 3,
			actors = {
				"c_leftupleg",
				"c_leftleg",
				"c_leftfoot",
				"c_lefttoebase"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		right_leg = {
			prio = 3,
			actors = {
				"c_rightupleg",
				"c_rightleg",
				"c_rightfoot",
				"c_righttoebase"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		tail = {
			prio = 3,
			actors = {
				"c_tail1",
				"c_tail2",
				"c_tail3",
				"c_tail4",
				"c_tail5",
				"c_tail6"
			},
			push_actors = {
				"j_hips",
				"j_taill"
			}
		},
		full = {
			prio = 4,
			actors = {}
		},
		afro = {
			prio = 5,
			actors = {
				"c_afro"
			}
		}
	},
	hitbox_ragdoll_translation = {
		c_leftupleg = "j_leftupleg",
		c_rightarm = "j_rightarm",
		c_righthand = "j_righthand",
		c_rightfoot = "j_rightfoot",
		c_tail2 = "j_tail2",
		c_rightleg = "j_rightleg",
		c_lefthand = "j_lefthand",
		c_tail5 = "j_tail5",
		c_leftleg = "j_leftleg",
		c_spine2 = "j_spine1",
		c_tail6 = "j_tail6",
		c_rightupleg = "j_rightupleg",
		c_tail1 = "j_taill",
		c_neck1 = "j_neck1",
		c_tail4 = "j_tail4",
		c_spine = "j_spine",
		c_head = "j_head",
		c_leftforearm = "j_leftforearm",
		c_righttoebase = "j_righttoebase",
		c_leftfoot = "j_leftfoot",
		c_neck = "j_neck",
		c_tail3 = "j_tail3",
		c_rightforearm = "j_rightforearm",
		c_leftarm = "j_leftarm",
		c_hips = "j_hips",
		c_lefttoebase = "j_lefttoebase"
	},
	ragdoll_actor_thickness = {
		j_rightfoot = 0.2,
		j_taill = 0.05,
		j_leftarm = 0.2,
		j_leftforearm = 0.2,
		j_leftleg = 0.2,
		j_tail3 = 0.05,
		j_neck1 = 0.3,
		j_leftupleg = 0.2,
		j_rightshoulder = 0.3,
		j_rightarm = 0.2,
		j_righttoebase = 0.2,
		j_tail4 = 0.05,
		j_hips = 0.3,
		j_spine1 = 0.3,
		j_rightleg = 0.2,
		j_leftfoot = 0.2,
		j_leftshoulder = 0.3,
		j_tail5 = 0.05,
		j_rightupleg = 0.2,
		j_righthand = 0.2,
		j_lefttoebase = 0.2,
		j_head = 0.3,
		j_tail6 = 0.05,
		j_neck = 0.3,
		j_spine = 0.3,
		j_lefthand = 0.2,
		j_rightforearm = 0.2,
		j_tail2 = 0.05
	},
	perception_exceptions = {
		poison_well = true,
		wizard_destructible = true
	},
	max_health = BreedTweaks.max_health.plague_monk,
	bloodlust_health = BreedTweaks.bloodlust_health.skaven_elite,
	diff_stagger_resist = BreedTweaks.diff_stagger_resist.plague_monk,
	stagger_reduction = BreedTweaks.stagger_reduction.plague_monk,
	stagger_duration = BreedTweaks.stagger_duration.plague_monk,
	stagger_duration_difficulty_mod = BreedTweaks.stagger_duration_difficulty_mod.default,
	hit_mass_counts = BreedTweaks.hit_mass_counts.plague_monk,
	num_push_anims = {
		push_backward = 2
	},
	wwise_voices = {
		"plague_monk_high",
		"plague_monk_medium",
		"plague_monk_low"
	},
	debug_color = {
		255,
		200,
		40,
		40
	}
}