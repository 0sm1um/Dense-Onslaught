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

local trash_scale = 1
local shield_trash_scale = 1
local elite_scale = 1            -- This term is meant to convey it counts for Stormvermin and Mauler type enemies.
local shield_elite_scale = 1
local berzerker_scale = 1
local super_armor_scale = 1

local trash_entities = {"beastmen_ungor","beastmen_gor"}
local shield_trash_entities = {"chaos_marauder_with_shield","skaven_clan_rat_with_shield"}
local elite_entities = {"beastmen_bestigor","chaos_raider","skaven_storm_vermin_commander"}
local shield_elite_entities = {"skaven_storm_vermin_with_shield"}
local berzerker_entities = {"chaos_berzerker"}
local super_armor_entities = {"chaos_warrior"}

local scaling_data = {
    {
        scale_factor = trash_scale,
        breeds = trash_entities,
    },
    {
        scale_factor = shield_trash_scale,
        breeds = shield_trash_entities,
    },
    {
        scale_factor = elite_scale,
        breeds = elite_entities,
    },
    {
        scale_factor = shield_elite_scale,
        breeds = shield_elite_entities,
    },
    {
        scale_factor = berzerker_scale,
        breeds = berzerker_entities,
    },
    {
        scale_factor = super_armor_scale,
        breeds = super_armor_entities,
    },
}

DirectorUtils.scale_horde_composition = function (horde_compositions_pacing ,gain_value)
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
                                                breed_data[i] = math.floor(enemy_count * scaling_data.scale_factor * gain_value)
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