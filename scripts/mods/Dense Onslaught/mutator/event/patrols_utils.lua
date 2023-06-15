local mod = get_mod("Dense Onslaught")
local PatrolUtils = {}
PatrolFormationSettings = PatrolFormationSettings or {}

PatrolUtils.add_pat_formation = function(name)
    

    local pat_formation = mod:dofile("scripts/mods/Dense Onslaught/patrols/pats/"..name)
    PatrolFormationSettings[name] = pat_formation
end

return PatrolUtils