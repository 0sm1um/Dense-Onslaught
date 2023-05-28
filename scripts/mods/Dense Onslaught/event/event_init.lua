local mod = get_mod("Dense Onslaught")
mod:dofile("scripts/mods/Dense Onslaught/event/hooks")
local EventUtils = mod:dofile("scripts/mods/Dense Onslaught/event/event_utils")
local GenericTerrorEvents = GenericTerrorEvents or {}

EventUtils.add_generic_event("dense_boss_event_beastmen_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_chaos_beastmen_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_chaos_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_skaven_beastmen_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_skaven_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_spline_patrol")

EventUtils.add_level_event("farmlands")

local flow_events = {}

for level_key, terror_events in pairs(TerrorEventBlueprints) do
	for _, blueprint in pairs(terror_events) do
		for _, event in ipairs(blueprint) do
			local name = event.flow_event_name

			if name and not event.disable_network_send then
				flow_events[name] = true
			end
		end
	end
end

for _, blueprint in pairs(GenericTerrorEvents) do
	for _, event in ipairs(blueprint) do
		local name = event.flow_event_name

		if name and not event.disable_network_send then
			flow_events[name] = true
		end
	end
end

NetworkLookup.terror_flow_events = create_lookup({}, flow_events)