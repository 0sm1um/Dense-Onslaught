local mod = get_mod("Dense Onslaught")
mod:dofile("scripts/mods/Dense Onslaught/horde_comps/hooks")
local HordeCompUtils = mod:dofile("scripts/mods/Dense Onslaught/horde_comps/horde_comp_utils")
local HordeCompositions = HordeCompositions or {}

HordeCompUtils.add_new_compositions("custom_compositions")
HordeCompUtils.add_new_compositions("custom_specials_bosses")
HordeCompUtils.add_new_compositions("event_horde_composition")
HordeCompUtils.add_new_compositions("unscaled_onslaught_variants_of_generic_compositions")

for horde_composition_name, horde_composition in pairs(HordeCompositions) do
	local max_composition = nil
	local already_printed = false

	for i = 1, #Difficulties do
		local composition_for_difficulty = horde_composition[i]

		if composition_for_difficulty then
			max_composition = composition_for_difficulty
		else
			fassert(max_composition, horde_composition_name .. " does not define any composition for any difficulty")

			already_printed = already_printed or true
			horde_composition[i] = max_composition
		end
	end
end