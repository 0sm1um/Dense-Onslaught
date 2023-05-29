local mod = get_mod("Dense Onslaught")
HordeSettings = HordeSettings or {}

local director_horde = table.clone(HordeSettings.chaos)

local name = "dense_high_chaos"
director_horde.compositions_pacing = mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/horde_compositions_pacing")
-- director_horde.compositions = mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/horde_compositions_pacing")


return director_horde