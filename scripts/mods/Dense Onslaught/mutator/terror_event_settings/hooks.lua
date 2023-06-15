local mod = get_mod("Dense Onslaught")

mod:hook(_G,"flow_callback_force_terror_event", function (func, params)
    if mod:get("dense_active") then
        local event_name = params.event_type
        if event_name then
            params.event_type = mod.TerrorEventReplacers[event_name] or event_name
        end
        -- mod:echo(params.event_type)
    end
    
    return func(params)
end)

mod:hook(TerrorEventMixer, "add_to_start_event_list", function (func, event_name, seed, origin_unit, origin_position)
    
    if event_name and mod:get("dense_active") then
        event_name = mod.TerrorEventReplacers[event_name] or event_name
    end
    -- mod:echo(event_name)
    
    return func(event_name, seed, origin_unit, origin_position)
end)

--seems to be needed to fix a bug with base game interaction between _execute_event_horde and roll_easy with HordeCompositions 
mod:hook(LoadedDice, "roll_easy", function(func, loaded_table)
	local new_table = loaded_table
	if type(loaded_table[2]) ~= "table" then
		new_table = {
			loaded_table[1],
			{
				1,
			}
		}
	end
	return func(new_table) or 1
end)
