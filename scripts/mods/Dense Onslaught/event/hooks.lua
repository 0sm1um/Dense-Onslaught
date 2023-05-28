local mod = get_mod("Dense Onslaught")

mod:hook(_G,"flow_callback_force_terror_event", function (func, params)
    local event_name = params.event_type
    if event_name then
        params.event_type = mod.TerrorEventReplacers[event_name] or event_name
    end
    mod:echo(params.event_type)
    
    return func(params)
end)