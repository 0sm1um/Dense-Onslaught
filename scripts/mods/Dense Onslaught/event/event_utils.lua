local mod = get_mod("Dense Onslaught")
local EventUtils = {}
GenericTerrorEvents = GenericTerrorEvents or {}

EventUtils.add_generic_event = function(name)
    

    local generic_event = mod:dofile("scripts/mods/Dense Onslaught/event/generic_events/"..name)
    GenericTerrorEvents[name] = generic_event
end

return EventUtils
