local mod = get_mod("Dense Onslaught")

	-- Custom Breed Settings
	
	--White/Super Armored Stormvermin
	--[[
	Breeds.skaven_storm_vermin.bloodlust_health = BreedTweaks.bloodlust_health.beastmen_elite
	Breeds.skaven_storm_vermin.primary_armor_category = 6
	Breeds.skaven_storm_vermin.size_variation_range = { 1.26, 1.28 }
	Breeds.skaven_storm_vermin.max_health = BreedTweaks.max_health.bestigor
	Breeds.skaven_storm_vermin.hit_mass_counts = BreedTweaks.hit_mass_counts.bestigor
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 31
	UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 31
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 1
	UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 1
	--]]

	-- Settings required to allow Plague Monks in Patrols 
	Breeds.skaven_plague_monk.patrol_active_perception = "perception_regular"
	Breeds.skaven_plague_monk.patrol_passive_perception = "perception_regular"
	Breeds.skaven_plague_monk.patrol_active_target_selection = "storm_patrol_death_squad_target_selection"
	Breeds.skaven_plague_monk.patrol_passive_target_selection = "patrol_passive_target_selection"
	Breeds.skaven_plague_monk.dont_wield_weapon_on_patrol = true
	Breeds.skaven_plague_monk.patrol_detection_radius = 10
	Breeds.skaven_plague_monk.panic_close_detection_radius_sq = 9
	Breeds.skaven_plague_monk.passive_in_patrol_start_anim = "move_fwd"
	
	--[[
	BeastmenStandardTemplates.healing_standard.radius = 10
	UtilityConsiderations.beastmen_place_standard.distance_to_target.max_value = 15
	--]]

	-- This code makes beastmen banners increase enemy's damage.
	
	--BuffTemplates.healing_standard.buffs = {
	--	{
	--		multiplier = 0.25,
	--		stat_buff = "damage_dealt",
	--		name = "curse_khorne_champions_damage_buff",
	--		max_stacks = 1
	--	}
	--}
