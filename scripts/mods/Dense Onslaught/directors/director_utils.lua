local mod = get_mod("Dense Onslaught")
BossSettings = BossSettings or {}
HordeSettings = HordeSettings or {}
IntensitySettings = IntensitySettings or {}
PacingSettings = PacingSettings or {}
PackSpawningSettings = PackSpawningSettings or {}
RoamingSettings = RoamingSettings or {}
SpecialsSettings = SpecialsSettings or {}

DirectorUtils = {}

ConflictDirectors = ConflictDirectors or {}

DirectorUtils.add_to_settings = function (name, settings_table, settings_to_add_to)
    settings_table[name] = settings_to_add_to
    return settings_to_add_to
end

DirectorUtils.add_new_ConflictDirector = function (name)
    ConflictDirectors[name] = {
        name = name,
        debug_color = "green",
        disabled = false,
        intensity = DirectorUtils.add_to_settings(name, IntensitySettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/intensity_settings")),
        pacing = DirectorUtils.add_to_settings(name, PacingSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/pacing_settings")),
        boss = DirectorUtils.add_to_settings(name, BossSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/boss_settings")),
        specials = DirectorUtils.add_to_settings(name, SpecialsSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/special_settings")),
        roaming = DirectorUtils.add_to_settings(name, RoamingSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/roaming_settings")),
        pack_spawning = DirectorUtils.add_to_settings(name, PackSpawningSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/packspawn_settings")),
        horde = DirectorUtils.add_to_settings(name, HordeSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/horde_settings")),
        factions = {}   
    }
end

return DirectorUtils