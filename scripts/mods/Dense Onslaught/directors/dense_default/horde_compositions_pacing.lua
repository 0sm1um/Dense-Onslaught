local horde_compositions_pacing = table.clone(HordeCompositionsPacing)
	
local horde_compositions_pacing = table.merge(HordeCompositionsPacing, mod:dofile("scripts/mods/Dense Onslaught/mutator/horde_compositions/pacing/skaven_standard_horde_composition"))
local horde_compositions_pacing = table.merge(HordeCompositionsPacing, mod:dofile("scripts/mods/Dense Onslaught/mutator/horde_compositions/pacing/chaos_standard_horde_composition"))
--local horde_compositions_pacing = table.merge(HordeCompositionsPacing, mod:dofile("scripts/mods/Dense Onslaught/mutator/horde_compositions/pacing/beastmen_standard_horde_composition"))

return horde_compositions_pacing
