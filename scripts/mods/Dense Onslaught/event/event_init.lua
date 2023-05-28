local mod = get_mod("Dense Onslaught")
local EventUtils = mod:dofile("scripts/mods/Dense Onslaught/event/event_utils")
local GenericTerrorEvents = GenericTerrorEvents or {}

EventUtils.add_generic_event("dense_boss_event_beastmen_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_chaos_beastmen_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_chaos_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_skaven_beastmen_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_skaven_spline_patrol")
EventUtils.add_generic_event("dense_boss_event_spline_patrol")

