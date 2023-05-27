local mod = get_mod("Dense Onslaught")

local menu = {
	name = "Dense Onslaught",
	description = mod:localize("mod_description"),
	is_togglable = true,
}

menu.options = {}
menu.options.widgets = {
	{
        setting_id = "populate_all_zones",
        type = "checkbox",
		default_value = true,
		sub_widgets   = {}
	},
	{
        setting_id = "zone_density",
        type = "numeric",
		default_value   = 0,
		range           = {0, 100},
		-- unit_text       = "unit_text_localization_id", -- optional
		decimals_number = 0.5 
	},
	{
		setting_id    = "auto_enable_deathwish",
		type          = "checkbox",
		title		  = "auto_enable_deathwish",
		tooltip       = "auto_enable_deathwish_tooltip",
		default_value = false
	},
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
		},
		sub_widgets = {},
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
