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
	}
}

return menu
