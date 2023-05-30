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

EventUtils.add_level_event("bell")
EventUtils.add_level_event("catacombs")
EventUtils.add_level_event("cemetery")
EventUtils.add_level_event("crater")
EventUtils.add_level_event("dlc_bastion")
EventUtils.add_level_event("dlc_bogenhafen_city")
EventUtils.add_level_event("dlc_bogenhafen_slum")
EventUtils.add_level_event("dlc_castle")
EventUtils.add_level_event("dlc_portals")
EventUtils.add_level_event("dlc_wizards_trail")
EventUtils.add_level_event("elven_ruins")
EventUtils.add_level_event("farmlands")
EventUtils.add_level_event("forest_ambush")
EventUtils.add_level_event("fort")
EventUtils.add_level_event("ground_zero")
EventUtils.add_level_event("magnus")
EventUtils.add_level_event("military")
EventUtils.add_level_event("mines")
EventUtils.add_level_event("nurgle")
EventUtils.add_level_event("skaven_stronghold")
EventUtils.add_level_event("skittergate")
EventUtils.add_level_event("ussingen")
EventUtils.add_level_event("warcamp")

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

local new_event_lookup_table = create_lookup({}, flow_events)
table.merge(NetworkLookup.terror_flow_events, new_event_lookup_table)