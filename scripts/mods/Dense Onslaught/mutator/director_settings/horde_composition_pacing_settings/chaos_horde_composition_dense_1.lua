local mod = get_mod("Dense Onslaught")
local DirectorUtils = local_require("scripts/mods/Dense Onslaught/directors/director_utils")

local HordeCompositionsPacing = mod:dofile("scripts/mods/Dense Onslaught/mutator/director_settings/horde_composition_pacing_settings/chaos_horde_compostion_dense_2")

local faction = "chaos"

local gain = 0.8

local trash_scale = 1
local shield_trash_scale = 1
local elite_scale = 1
local shield_elite_scale = 1
local berzerker_scale = 1
local super_armor_scale = 1

local trash_entities = {"chaos_fanatic","chaos_marauder"}
local shield_trash_entities = {"chaos_marauder_with_shield"}
local elite_entities = {"chaos_raider"}
local shield_elite_entities = {}
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
        scale_factor = super_armor_scale * mod.gain^2,
        breeds = super_armor_entities,
    },
}

MutatorUtils.scale_horde_composition(HordeCompositionsPacing, faction, scaling_data)

return HordeCompositionsPacing
