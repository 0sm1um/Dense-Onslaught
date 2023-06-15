local mod = get_mod("Dense Onslaught")
local PatrolUtils = mod:dofile("scripts/mods/Dense Onslaught/patrols/patrols_utils")
local PatrolFormationSettings = PatrolFormationSettings or {}

PatrolUtils.add_pat_formation("dense_beastmen_standard")
PatrolUtils.add_pat_formation("dense_chaos_warrior_default")
PatrolUtils.add_pat_formation("dense_storm_vermin_two_column")