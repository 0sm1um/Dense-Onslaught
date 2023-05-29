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
        boss = DirectorUtils.add_to_settings(name, BossSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/boss_settings")),
        specials = DirectorUtils.add_to_settings(name, SpecialsSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/special_settings")),
        roaming = DirectorUtils.add_to_settings(name, RoamingSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/roaming_settings")),
        pack_spawning = DirectorUtils.add_to_settings(name, PackSpawningSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/packspawn_settings")),
        horde = DirectorUtils.add_to_settings(name, HordeSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/horde_settings")),
        pacing = DirectorUtils.add_to_settings(name, PacingSettings, mod:dofile("scripts/mods/Dense Onslaught/directors/"..name.."/pacing_settings")),
        factions = {}   
    }
end

DirectorUtils.scale_horde_composition = function (horde_compositions_pacing ,scaling_data)
    for horde_name, horde_comp_data in pairs(horde_compositions_pacing) do
		for sub_var_name, horde_subvariant in pairs(horde_comp_data) do
            for value, more_data in pairs(horde_subvariant) do
                if value == "breeds" then
                    for breed_index,breed_data in pairs(more_data) do
                        if type(breed_data) == "table" then
                            local name_of_enemy = tostring(more_data[breed_index-1])
                            for i,enemy_count in pairs(breed_data) do
                                if type(enemy_count) == "number" then
                                    for _, scaling_data in pairs(scaling_data) do 
                                        for _, enemy_name in pairs(scaling_data.breeds) do 
                                            if name_of_enemy == enemy_name then -- If enemy name matches scaling factor name. Apply scaling.
                                                breed_data[i] = math.floor(enemy_count * scaling_data.scale_factor)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end
end

return DirectorUtils