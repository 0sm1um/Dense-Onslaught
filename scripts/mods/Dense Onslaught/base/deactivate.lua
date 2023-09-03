local mod = get_mod("Dense Onslaught")
local mutator = mod:persistent_table("Dense Onslaught")

	-- Pacing
	
	--mod:dofile("scripts/settings/breeds")
	Breeds = table.clone(mutator.OriginalBreeds)
	mod:dofile("scripts/settings/horde_compositions")
	mod:dofile("scripts/settings/horde_compositions_pacing")
	mod:dofile("scripts/settings/conflict_settings")
	mod:dofile("scripts/settings/patrol_formation_settings")
	mod:dofile("scripts/settings/terror_event_blueprints")
	mod:dofile("scripts/settings/unit_variation_settings")