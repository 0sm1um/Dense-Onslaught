local mod = get_mod("Dense Onslaught")
local DirectorUtils = local_require("scripts/mods/Dense Onslaught/directors/director_utils")

local HordeCompositionsPacing = mod:dofile("scripts/mods/Dense Onslaught/mutator/director_settings/horde_composition_pacing_settings/skaven_horde_compostion_dense_2")

local faction = "huge"

local gain = 1.25

local trash_scale = 1
local shield_trash_scale = 1
local elite_scale = 1
local shield_elite_scale = 1
local berzerker_scale = 1
local super_armor_scale = 1

local trash_entities = {"skaven_slave","skaven_clan_rat"}
local shield_trash_entities = {"skaven_clan_rat_with_shield"}
local elite_entities = {"skaven_storm_vermin_commander"}
local shield_elite_entities = {"skaven_storm_vermin_with_shield"}
local berzerker_entities = {"skaven_plague_monk"}
local super_armor_entities = {"skaven_storm_vermin"}

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
        scale_factor = elite_scale * mod.gain,
        breeds = elite_entities,
    },
    {
        scale_factor = shield_elite_scale * mod.gain,
        breeds = shield_elite_entities,
    },
    {
        scale_factor = berzerker_scale * mod.gain,
        breeds = berzerker_entities,
    },
    {
        scale_factor = super_armor_scale * mod.gain,
        breeds = super_armor_entities,
    },
}

MutatorUtils.scale_horde_composition(HordeCompositionsPacing, faction, scaling_data)

return HordeCompositionsPacing
