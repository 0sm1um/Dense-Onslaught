local mod = get_mod("Dense Onslaught")

local menu = {
	name = "Dense Onslaught",
	description = mod:localize("mod_description"),
	is_togglable = true,
}

local custom_difficulty_sub_menu = {
	-- Custom Difficulty submenu
	-- Total Horde Enemy Scale (slider)
	-- trash scale (slider)
	-- shield trash scale (slider)
	-- armor scale (slider)
	-- shield armor scale (slider)
	-- super armor scale (slider)
	-- Special Slots
	-- Special Timers (min)
	-- Special Timers (max)
	-- Ambient Spawn Rate
	{
		setting_id    = "master_horde_scale", -- 1
		type            = "numeric",
		default_value   = 1,
		range           = {0, 2},
		decimals_number = 2
	},
	{
		setting_id    = "trash_scale", -- 2
		type            = "numeric",
		default_value   = 1,
		range           = {0, 2},
		decimals_number = 2
	},
	{
		setting_id    = "shield_trash_scale", -- 3
		type            = "numeric",
		default_value   = 1,
		range           = {0, 2},
		decimals_number = 2
	},
	{
		setting_id    = "armor_scale", -- 4
		type            = "numeric",
		default_value   = 1,
		range           = {0, 2},
		decimals_number = 2
	},
	{
		setting_id    = "shield_armor_scale", -- 5
		type            = "numeric",
		default_value   = 1,
		range           = {0, 2},
		decimals_number = 2
	},
	{
		setting_id    = "super_armor_scale", -- 6
		type            = "numeric",
		default_value   = 1,
		range           = {0, 2},
		decimals_number = 2
	},
	-- Horde Timers
	{
		setting_id    = "skaven_min_timer", -- 7
		type            = "numeric",
		default_value   = 60,
		range           = {30, 70},
		decimals_number = 0
	},
	{
		setting_id    = "skaven_max_timer", -- 8
		type            = "numeric",
		default_value   = 72,
		range           = {72, 90},
		decimals_number = 0
	},
	{
		setting_id    = "chaos_min_timer", -- 9
		type            = "numeric",
		default_value   = 75,
		range           = {50, 90},
		decimals_number = 0
	},
	{
		setting_id    = "chaos_max_timer", -- 10
		type            = "numeric",
		default_value   = 95,
		range           = {95, 150},
		decimals_number = 0
	},
	-- Special Settings
	{
		setting_id    = "special_slots", -- 11
		type            = "numeric",
		default_value   = 7,
		range           = {1, 14},
		decimals_number = 0
	},
	{
		setting_id    = "min_special_timer", -- 12
		type            = "numeric",
		default_value   = 24,
		range           = {18, 30},
		decimals_number = 0
	},
	{
		setting_id    = "max_special_timer", -- 13
		type            = "numeric",
		default_value   = 60,
		range           = {30, 90},
		decimals_number = 0
	},
	-- Ambient or Roaming Enemy Spawn Rate
	{
		setting_id    = "ambient_spawn_rate", -- 14
		type            = "numeric",
		default_value   = 0.075,
		range           = {0.045, 0.12},
		decimals_number = 3
	},
}

menu.options = {}
menu.options.widgets = {
	{
		setting_id = "difficulty_level",
		type = "dropdown",
		default_value = 2,
		title = "difficulty_level",
		tooltip = "difficulty_level_tooltip",
		options = {
			{text = "level_one", value = 1},
			{text = "level_two", value = 2},
			{text = "level_three", value = 3},
			{text = "custom", value = 0, show_widgets = {1,2,3,4,5,6,7,8,9,10,11,12,13,14}}
		},
		sub_widgets = custom_difficulty_sub_menu,
	},
	{
		setting_id    = "low_performance_mode",
		type          = "checkbox",
		title		  = "low_performance_mode",
		tooltip       = "low_performance_mode_tooltip",
		default_value = false
	},
	{
		setting_id    = "giga_ambients",
		type          = "checkbox",
		title		  = "giga_ambients",
		tooltip       = "giga_ambients_tooltip",
		default_value = false
	},
}

return menu
