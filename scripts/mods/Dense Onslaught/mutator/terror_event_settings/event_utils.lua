local mod = get_mod("Dense Onslaught")
local EventUtils = {}
GenericTerrorEvents = GenericTerrorEvents or {}
TerrorEventBlueprints = TerrorEventBlueprints or {}
mod.TerrorEventReplacers = mod.TerrorEventReplacers or {}

EventUtils.add_generic_event = function(name)
    local generic_event = mod:dofile("scripts/mods/Dense Onslaught/event/generic_events/"..name)
    GenericTerrorEvents[name] = generic_event
end

EventUtils.add_level_event = function(name)
    local level_event = mod:dofile("scripts/mods/Dense Onslaught/event/level_events/"..name)
    table.merge(TerrorEventBlueprints[name], level_event)
    for event_name, _ in pairs(level_event) do
        mod.TerrorEventReplacers[string.gsub(event_name, "dense_", "")] = event_name
    end
end

return EventUtils