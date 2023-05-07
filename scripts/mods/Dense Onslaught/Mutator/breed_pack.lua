local mod = get_mod("Dense Onslaught")

local trash_weight = 1
local shielded_trash_weight = 1
local elite_weight = 1
local shielded_elite_weight = 1
local berzerker_weight = 1
local super_armor_weight = 1

local trash_entities = {"beastmen_ungor","beastmen_gor","skaven_slave","skaven_clan_rat","chaos_fanatic","chaos_marauder","chaos_marauder_with_shield","skaven_clan_rat_with_shield"}
local elite_entities = {"beastmen_bestigor","chaos_raider","skaven_storm_vermin_commander","skaven_storm_vermin_with_shield"}
local berzerker_entities = {"chaos_berzerker","skaven_plague_monk"}
local super_armor_entities = {"chaos_warrior","skaven_storm_vermin"}

local scaling_data = {
{
    scale_factor = trash_scale,
    breeds = trash_entities,
},
{
    scale_factor = elite_scale,
    breeds = elite_entities,
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

-- 2, 3 and 4 are actually designed, 
-- 6 and 8 are just doubled 3 and 4

dense_standard = {
		-- Size 1 Enemy Packs
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin
			}
		},
		-- Size 2 Enemy Packs
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder_with_shield
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander
				Breeds.skaven_plague_monk
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider
				Breeds.chaos_raider
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider
				Breeds.chaos_marauder_with_shield
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker
				Breeds.chaos_raider
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk
				Breeds.skaven_plague_monk
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin
				Breeds.skaven_clan_rat_with_shield
			}
		},
		-- 3 Enemy Packs
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_raider,
				Breeds.chaos_raider
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_raider
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_plague_monk
			}
		},
		-- 4 Enemy Packs
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_warrior
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield
			}
		},
		-- 6 Enemy Packs
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_berzerker,
				Breeds.chaos_raider,
				Breeds.chaos_raider
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_raider,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_raider
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_warrior,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder,
				Breeds.chaos_warrior,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_plague_monk
			}
		},
		-- 8 Enemy Breed Packs (double 4 enemy packs)
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_warrior,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_warrior
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_plague_monk,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_warrior,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder,
				Breeds.chaos_warrior,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_with_shield,
				Breeds.skaven_storm_vermin_with_shield
			}
		}
	}
dense_skaven = {
	-- Size 1 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin
		}
	},
	-- Size 2 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander
			Breeds.skaven_plague_monk
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk
			Breeds.skaven_plague_monk
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin
			Breeds.skaven_clan_rat_with_shield
		}
	},
	-- 3 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_plague_monk
		}
	},
	-- 4 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield
		}
	},
	-- 6 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_plague_monk
		}
	},
	-- 8 Enemy Breed Packs (double 4 enemy packs)
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield
		}
	}
}
dense_chaos = dense_standard = {
	-- Size 1 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_plague_monk
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin
		}
	},
	-- Size 2 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder_with_shield
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior
			Breeds.chaos_marauder
		}
	},
	-- 3 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_raider,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder
		}
	},
	-- 4 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_warrior
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	-- 6 Enemy Packs
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_raider,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder
		}
	},
	-- 8 Enemy Breed Packs (double 4 enemy packs)
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_warrior,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_warrior
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder,
			Breeds.chaos_warrior,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	}
}

-- TODO
dense_beastmen = {}
