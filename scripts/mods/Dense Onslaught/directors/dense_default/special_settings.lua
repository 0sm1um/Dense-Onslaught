SpecialsSettings = SpecialsSettings or {}

local director_specials = table.clone(SpecialsSettings.default)

director_specials.max_specials = 7	
director_specials.delay_specials_threat_value = nil
director_specials.methods.specials_by_slots = {
    max_of_same = 4,                                         -- Same as Dutch
    coordinated_attack_cooldown_multiplier = 0.5,
    chance_of_coordinated_attack = 0.5,
    select_next_breed = "get_random_breed",
    after_safe_zone_delay = {
        5,
        20
    },
    spawn_cooldown = {
        32,													 -- Median of Ons+ and Dutch (Rounded Down)
        60													 -- Median of Ons+ and Dutch
    }
}
director_specials.difficulty_overrides.hard = nil
director_specials.difficulty_overrides.harder = nil
director_specials.difficulty_overrides.hardest = nil
director_specials.difficulty_overrides.cataclysm = nil
director_specials.difficulty_overrides.cataclysm_2 = nil
director_specials.difficulty_overrides.cataclysm_3 = nil

return director_specials