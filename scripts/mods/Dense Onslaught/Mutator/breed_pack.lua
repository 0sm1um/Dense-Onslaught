local mod = get_mod("Dense Onslaught")

local trash_weight = 1
local shielded_trash_weight = 1
local elite_weight = 1
local shielded_elite_weight = 1
local berzerker_weight = 1
local super_armor_weight = 0.33

local trash_entities = {"beastmen_ungor","beastmen_gor","skaven_slave","skaven_clan_rat","chaos_fanatic","chaos_marauder"}
local shielded_trash_entities = {"chaos_marauder_with_shield","skaven_clan_rat_with_shield"}
local elite_entities = {"beastmen_bestigor","chaos_raider","skaven_storm_vermin_commander","skaven_storm_vermin_with_shield"}
local shielded_elite_entities = {"skaven_storm_vermin_with_shield"}
local berzerker_entities = {"chaos_berzerker","skaven_plague_monk"}
local super_armor_entities = {"chaos_warrior","skaven_storm_vermin"}

local scaling_data = {
{
	scale_factor = trash_weight,
	breeds = trash_entities,
},
{
	scale_factor = shielded_trash_weight,
	breeds = shielded_trash_entities,
},
{
	scale_factor = elite_weight,
	breeds = elite_entities,
},
{
	scale_factor = shielded_elite_weight,
	breeds = shielded_elite_entities,
},
{
	scale_factor = berzerker_weight,
	breeds = berzerker_entities,
},
{
	scale_factor = super_armor_weight,
	breeds = super_armor_entities,
}
}

dense_standard = {
	-- Size 1 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.skaven_plague_monk
		}
	},
	-- Size 2 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	-- 3 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	-- 4 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	-- 6 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
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
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	-- 8 Enemy Breed Packs (double 4 enemy packs)
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	}
}

dense_skaven = {
	-- Size 1 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.skaven_storm_vermin_commander
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.skaven_plague_monk
		}
	},
	-- Size 2 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield
		}
	},	
	-- 3 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	-- 4 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	-- 6 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
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
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	-- 8 Enemy Breed Packs (double 4 enemy packs)
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_storm_vermin,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	}
}

dense_chaos = {
	-- Size 1 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_berzerker
		}
	},
	-- Size 2 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_raider
		}
	},
	-- 3 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},	-- 4 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},	-- 6 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	-- 8 Enemy Breed Packs (double 4 enemy packs)
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	}
}

-- TODO
--[[
dense_beastmen = {
	-- Size 1 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = 0,
		members_n = 1,
		members = {
			Breeds.chaos_berzerker
		}
	},
	-- Size 2 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = 0,
		members_n = 2,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_raider
		}
	},
	-- 3 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_commander,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_storm_vermin_with_shield,
			Breeds.skaven_clan_rat,
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.skaven_plague_monk,
			Breeds.skaven_clan_rat_with_shield,
			Breeds.skaven_clan_rat_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_berzerker
		}
	},
	{
		spawn_weight = 0,
		members_n = 3,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},	-- 4 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 4,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},	-- 6 Enemy Packs
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_warrior,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 6,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder
		}
	},
	-- 8 Enemy Breed Packs (double 4 enemy packs)
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_raider,
			Breeds.chaos_raider,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_berzerker,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder
		}
	},
	{
		spawn_weight = 0,
		members_n = 8,
		members = {
			Breeds.chaos_warrior,
			Breeds.chaos_raider,
			Breeds.chaos_berzerker,
			Breeds.chaos_marauder,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield,
			Breeds.chaos_marauder_with_shield
		}
	}
}
--]]
dense_standard = mod.calculate_breed_pack_weights(scaling_data, dense_standard)
dense_chaos = mod.calculate_breed_pack_weights(scaling_data, dense_chaos)
dense_skaven = mod.calculate_breed_pack_weights(scaling_data, dense_skaven)

dense_standard.roof_spawning_allowed = BreedPacks.standard.roof_spawning_allowed
dense_standard.patrol_overrides = BreedPacks.standard.patrol_overrides
dense_skaven.roof_spawning_allowed = BreedPacks.skaven.roof_spawning_allowed
dense_skaven.patrol_overrides = BreedPacks.skaven.patrol_overrides
dense_chaos.roof_spawning_allowed = BreedPacks.marauders_elites.roof_spawning_allowed
dense_chaos.patrol_overrides = BreedPacks.marauders_elites.patrol_overrides

BreedPacks.dense_standard = dense_standard
BreedPacks.dense_skaven = dense_skaven
BreedPacks.dense_chaos = dense_chaos

BreedPacksBySize = {}

for roaming_set_name, breed_packs in pairs(BreedPacks) do
	BreedPacksBySize[roaming_set_name] = mod.generate_breed_pack_by_size(breed_packs, roaming_set_name)
end
