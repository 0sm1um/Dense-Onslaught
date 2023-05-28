local patrol_formation = {
    settings = {
        extra_breed_name = {
                            "skaven_storm_vermin_with_shield",
                            "skaven_plague_monk"
                            },
        use_controlled_advance = true,
        sounds = {
            PLAYER_SPOTTED = "storm_vermin_patrol_player_spotted",
            FORMING = "Play_stormvermin_patrol_forming",
            FOLEY = "Play_stormvermin_patrol_foley",
            FORMATED = "Play_stormvemin_patrol_formated",
            FOLEY_EXTRA = "Play_stormvermin_patrol_shield_foley",
            FORMATE = "storm_vermin_patrol_formate",
            CHARGE = "storm_vermin_patrol_charge",
            VOICE = "Play_stormvermin_patrol_voice"
        },
        offsets = PatrolFormationSettings.default_settings.offsets,
        speeds = PatrolFormationSettings.default_settings.speeds
    },
    normal = {
        {
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_clan_rat",
            "skaven_clan_rat"
        },
        {
            "skaven_clan_rat",
            "skaven_clan_rat"
        },
        {
            "skaven_clan_rat",
            "skaven_clan_rat"
        }
    },
    hard = {
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        }
    },
    harder = {
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        }
    },
    hardest = {
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        }
    },
    -- Patrol Composition Changed From Dutch
    cataclysm = {
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_plague_monk",
            "skaven_plague_monk"
        },
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_plague_monk",
            "skaven_plague_monk"
        },
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_plague_monk",
            "skaven_plague_monk"
        },
        {
            "skaven_storm_vermin",
            "skaven_storm_vermin"
        },
        {
            "skaven_storm_vermin_with_shield",
            "skaven_storm_vermin_with_shield"
        }
    }
}


return patrol_formation