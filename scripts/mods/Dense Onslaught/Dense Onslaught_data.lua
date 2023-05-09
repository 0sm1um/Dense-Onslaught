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
	}
}

return menu
