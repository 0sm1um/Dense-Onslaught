local mod = get_mod("Dense Onslaught")
local BreedpackUtils = {}

BreedpackUtils.add_generate_missing_pack_wieghts = function(pack_table)
    for index,pack_data in ipairs(pack_table) do
        -- pack_table[index]["spawn_weight"] = 1  --some spawn wieght function
        local total_armor_rating = 1
        for breed_name, breed_data in ipairs(pack_data) do
            total_armor_rating = total_armor_rating + breed_data.armor_category%5
        end
        pack_table[index]["spawn_weight"] = 1/(total_armor_rating)
    end

    return pack_table
end

BreedpackUtils.calculate_breed_pack_weights = function(scaling_data, breed_packs)
	local weighted_packs = {}
	for _, pack in pairs(breed_packs) do -- Select a Pack
        for breed_name, breed_table in pairs(pack.members) do -- Iterate through Pack Members
			for _, scale_data in pairs(scaling_data) do -- Iterate through classes of enemies.
				for _, scale_breed_name in pairs(scale_data.breeds) do  -- On a selected class, check each breed
					if string.find(tostring(breed_name), scale_breed_name) then -- If the breed is in the breed class:
						pack.spawn_weight = pack.spawn_weight + scale_data.scale_factor
					end
				end
			end
		end
		table.insert(weighted_packs,pack)
	end

	return weighted_packs
end

BreedpackUtils.add_new_pack = function(name, BreedPacks_table)
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

    local new_pack = mod:dofile("scripts/mods/Dense Onslaught/breedpacks/packs/"..name)
    -- BreedPacks_table[name] = BreedpackUtils.add_generate_missing_pack_wieghts(new_pack)
    BreedpackUtils.calculate_breed_pack_weights(scaling_data ,new_pack)
    new_pack["roof_spawning_allowed"] = true
    new_pack["zone_checks"] = table.clone(BreedPacks[string.gsub(name,"dense_", "")].zone_checks)
    new_pack["patrol_overrides"] = table.clone(BreedPacks[string.gsub(name,"dense_", "")].patrol_overrides)
    BreedPacks_table[name] = new_pack
end

return BreedpackUtils

-- mod:hook(Unit, "animation_event", function(func, unit,event, ...)

--     mod:echo(event)
--     return(func(unit,event,...))
-- end)

-- mod:echo(BreedActions.ethereal_skeleton_with_shield.alerted.no_hesitation)
-- BreedActions.ethereal_skeleton_with_shield.alerted.no_hesitation = false
-- Breeds.ethereal_skeleton_with_shield.look_at_range = 20

-- local player = Managers.player:local_player()
-- local player_unit = player.player_unit
-- mod:echo(Unit.local_position(player_unit,0))

-- mod:hook(LevelAnalysis, "_give_events", function(func, self, main_paths, terror_spawners, generated_event_list,conflict_director_section_list, ...)
--     mod:echo("lllop")

--     for i = 1, #conflict_director_section_list do
-- 		local boxed_pos, gizmo_unit, event_data = nil
-- 		local terror_event_kind = generated_event_list[i]
--         mod:echo(terror_event_kind)
--     end
--     local result = func(self, main_paths, terror_spawners, generated_event_list,conflict_director_section_list, ...)
-- end)

-- mod.gizmo_unit = nil
-- mod.gizmos = {}
-- mod:hook(_G, "flow_callback_boss_gizmo_spawned", function(func, params)
--     mod:echo("============================================")
--     if type(params) == "table" then
--         for k,v in pairs(params) do
--             mod:echo(tostring(k) .."    ".. tostring(v))
--         end
--         mod.gizmos[params.unit] = params.unit
--         -- local name = Unit.get_data(params.unit, "unit_name")
--         -- mod:echo(name)
--         -- Managers.state.unit_spawner:mark_for_deletion(params.unit)
--     end
--     mod:echo("============================================")
--     return func(params)
-- end)

-- mod:hook(Unit, "get_data", function (func, self, key1, ...)
--     if mod.gizmos[self] == self then
--         mod:echo("equal!")
--     end
--     return func(self, key1, ...)
-- end)

-- mod:echo(mod.gizmo_unit)
-- local pos = Unit.local_position(mod.gizmo_unit, 0)
-- mod:echo(pos)


-- local world = Managers.world:world("level_world")
-- local player = Managers.player:local_player()
-- local player_unit = player.player_unit
-- local pos = Unit.local_position(player_unit, 0)
-- local unit_name = "units/beings/enemies/beastmen_standard_bearer/chr_beastmen_standard_bearer"
-- local unit_name2 = "units/beings/enemies/skaven_clan_rat/chr_skaven_clan_rat"
-- local pos = Unit.local_position(player_unit, 0)
-- mod.item_unit = Managers.state.unit_spawner:spawn_local_unit(unit_name2, pos)

-- mod:echo(Unit.name_hash(mod.item_unit))
-- mod:echo(Unit.debug_name(mod.item_unit))

-- local world = Managers.world:world("level_world")
-- local player = Managers.player:local_player()
-- local player_unit = player.player_unit
-- local pos = Unit.local_position(player_unit, 0)
-- mod.new_unit = Managers.state.unit_spawner:spawn_local_unit(Unit.name_hash(mod.item_unit), pos)

-- local name = Unit.get_data(mod.new_unit, "unit_name")
-- print(name)
