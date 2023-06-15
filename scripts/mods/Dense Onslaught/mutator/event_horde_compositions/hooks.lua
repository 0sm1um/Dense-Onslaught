local mod = get_mod("Dense Onslaught")

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