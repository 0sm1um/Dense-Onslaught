return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Dense Onslaught` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("Dense Onslaught", {
			mod_script       = "scripts/mods/Dense Onslaught/Dense Onslaught",
			mod_data         = "scripts/mods/Dense Onslaught/Dense Onslaught_data",
			mod_localization = "scripts/mods/Dense Onslaught/Dense Onslaught_localization",
		})
	end,
	packages = {
		"resource_packages/Dense Onslaught/Dense Onslaught",
	},
}
