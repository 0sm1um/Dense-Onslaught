local mod = get_mod("Dense Onslaught")
local HordeCompUtils = {}
local HordeCompositions = HordeCompositions or {}

HordeCompUtils.add_new_compositions = function(name)
    local new_horde_comp = mod:dofile("scripts/mods/Dense Onslaught/horde_comps/compositions/"..name)
    table.merge_recursive(HordeCompositions, new_horde_comp)
end

return HordeCompUtils