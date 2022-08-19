return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`DutchSpiceTourney` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("DutchSpiceTourney", {
			mod_script       = "scripts/mods/DutchSpiceTourney/DutchSpiceTourney",
			mod_data         = "scripts/mods/DutchSpiceTourney/DutchSpiceTourney_data",
			mod_localization = "scripts/mods/DutchSpiceTourney/DutchSpiceTourney_localization",
		})
	end,
	packages = {
		"resource_packages/DutchSpiceTourney/DutchSpiceTourney",
	},
}
