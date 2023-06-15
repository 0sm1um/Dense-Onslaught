local patrol_formation = {
    settings = {
        extra_breed_name = {
                            "skaven_storm_vermin_with_shield",
                            "skaven_storm_vermin",
                            "skaven_plague_monk",
                            "chaos_warrior",
                            "chaos_raider",
                            "chaos_berzerker"
                            },
        use_controlled_advance = true,
        sounds = {
            PLAYER_SPOTTED = "beastmen_patrol_player_spotted",
            FORMING = "beastmen_patrol_forming",
            FOLEY = "beastmen_patrol_foley",
            FORMATED = "beastmen_patrol_formated",
            FORMATE = "beastmen_patrol_formate",
            CHARGE = "beastmen_patrol_charge",
            VOICE = "beastmen_patrol_voice"
        },
        offsets = PatrolFormationSettings.default_settings.offsets,
        speeds = PatrolFormationSettings.default_settings.speeds
    },
    normal = {
        {
            "beastmen_standard_bearer"
        },
        {
            "beastmen_bestigor"
        },
        {
            "beastmen_bestigor"
        },
        {
            "beastman_ungor",
            "beastman_ungor"
        },
        {
            "beastman_ungor",
            "beastman_ungor"
        },
        {
            "beastmen_bestigor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        }
    },
    hard = {
        {
            "beastmen_standard_bearer"
        },
        {
            "beastmen_bestigor"
        },
        {
            "beastman_ungor",
            "beastman_ungor"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastman_ungor",
            "beastman_ungor"
        },
        {
            "beastmen_bestigor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        }
    },
    harder = {
        {
            "beastmen_standard_bearer"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        }
    },
    hardest = {
        {
            "beastmen_standard_bearer"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        },
        {
            "beastmen_gor",
            "beastmen_gor"
        }
    },
    -- Patrol Composition Changed From Dutch
    cataclysm = {
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
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
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "chaos_berzerker",
            "chaos_berzerker"
        },
        {
            "chaos_warrior",
            "chaos_warrior"
        },
        {
            "chaos_raider",
            "chaos_raider"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        },
        {
            "beastmen_standard_bearer",
            "beastmen_standard_bearer"
        },
        {
            "beastmen_bestigor",
            "beastmen_bestigor"
        }
    }
}


return patrol_formation