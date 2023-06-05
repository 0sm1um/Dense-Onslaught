local mod = get_mod("Dense Onslaught")

--Both of these should probably be ran through the localize for the display text

--Steam Presence Difficulty display
local diff_tisch = {
	high = 3,
	medium = 2,
	low = 1
}
mod:hook(Presence, "set_presence", function(func, key, value)
	if value == "#presence_modded" then
        func(key, "#presence_modded_difficulty")
    elseif key == "difficulty" then
        local new_diff = value
        if mod:get("dense_active") then 
            local difficulty_display_name = Managers.state.difficulty:get_difficulty_settings().display_name
            new_diff = "Dense "..diff_tisch[mod:get("dense_level")].." "..Localize(difficulty_display_name)
            if mod:get("giga_ambients") then
                new_diff = "Giga"..new_diff
            end
        end
        func(key, new_diff)
    else
        func(key, value)
    end
	-- return func(key, value)
end)

--In game difficulty display
mod:hook(IngamePlayerListUI,"_set_difficulty_name" ,function (func, self, name)
    if mod:get("dense_active") and name~="" then
        name = "Dense "..diff_tisch[mod:get("dense_level")].." "..name
        if mod:get("giga_ambients") then
            name = "Giga"..name
        end
    end
    return func(self, name)
end)