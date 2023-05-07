local mod = get_mod("Dense Onslaught")

print("Hello World!")

local trash_weight = 0
local elite_weight = 0
local berzerker_weight = 1
local super_armor_weight = 0

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

members_n = 1,2,3,4,6,8

-- 3 and 4 are actually designed, 
-- 6 and 8 are just doubled 3 and 4

dense_standard = {
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
		-- 2
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat_with_shield,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_clan_rat,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_marauder_with_shield,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_storm_vermin_commander
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin_commander,
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
				Breeds.chaos_raider,
				Breeds.chaos_raider
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_raider,
				Breeds.chaos_marauder_with_shield
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_berzerker
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_berzerker,
				Breeds.chaos_raider
			}
		},
        {
			spawn_weight = nil,
			members = {
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.chaos_warrior,
				Breeds.chaos_marauder
			}
		},
		{
			spawn_weight = nil,
			members = {
				Breeds.skaven_storm_vermin,
				Breeds.skaven_clan_rat_with_shield
			}
		},
		-- 3
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
		-- 4
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
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder,
				Breeds.chaos_marauder
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
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider,
				Breeds.chaos_raider
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
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk,
				Breeds.skaven_plague_monk
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
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin,
				Breeds.skaven_storm_vermin_commander,
				Breeds.skaven_clan_rat_with_shield
			}
		},
	}
		
dense_skaven = {
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_clan_rat_with_shield
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
	{
		spawn_weight = nil,
		members = {
			Breeds.skaven_storm_vermin_with_shield
		}
	},
}
dense_chaos = {
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
			Breeds.chaos_warrior
		}
	}
}

--[[
dense_beastmen = {
	{
		spawn_weight = nil,
		members = {
			Breeds.beastmen_gor
		}
	},
	{
		spawn_weight = nil,
		members = {
			Breeds.beastmen_bestigor
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
}
--]]






--[[
function define_breed_pack(scaling_data)
    -- Data Pre Processing
    local breed_pack_table = {}
    local breeds = {}
    for _, enemy_class in pairs(scaling_data) do
        for _, breed_name in pairs(enemy_class.breeds) do
            breed_pack_table.insert = {
                {spawn_weight = enemy_class.scale_factor, members = breed_name}
            }
            breeds.insert = {
                {breed_name,enemy_class.scale_factor}
            }
        end
    end
    local function add_slot(breed_pack,breeds)
        local current_weight = (#breed_pack.members)/(#breed_pack.members+1) * breed_pack.spawn_weight
        local new_weight = 0
        local new_breed_packs = {}
        for breed in pairs(breeds) do
            breed_pack.members.insert = breed[2]
            new_weight = current_weight + breeds[1]/#members
            new_breed_packs.insert({spawn_weight = new_weight, members=members})
        end
        return new_breed_packs
    end
    local pack_size = 8
    for slot_number=2,pack_size,1 do
        local new_packs = {}
        for breed_pack in breed_pack_table do
            new_packs.insert(add_slot(breed_pack,breeds))
        end
        breed_pack_table.insert(new_packs)
    end
return breed_pack_table
end

BreedPacks.skaven = define_breed_pack(scaling_data)
--]]