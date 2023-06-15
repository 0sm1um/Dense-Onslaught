local halescourge = {}

halescourge.sorcerer_boss_event_defensive = {
    {
        {
            name = "wave_a",
            weight = 5,
            breeds = {
                "chaos_fanatic",
                {
                    15,
                    20
                },
                "chaos_marauder_with_shield",
                {
                    9,
                    12
                },
                "chaos_raider",
                {
                    2,
                    2
                },
                "chaos_berzerker",
                {
                    4,
                    5
                },	
                "chaos_plague_sorcerer",
                2
            }
        },
        {
            name = "wave_b",
            weight = 5,
            breeds = {
                "chaos_fanatic",
                {
                    9,
                    11
                },
                "chaos_marauder",
                {
                    12,
                    15
                },
                "chaos_marauder_with_shield",
                {
                    2,
                    3
                },
                "chaos_warrior",
                {
                    1,
                    1
                },	
                "chaos_plague_sorcerer",
                2
            }
        },
        {
            name = "wave_c",
            weight = 5,
            breeds = {
                "chaos_marauder",
                {
                    12,
                    15
                },
                "chaos_warrior",
                {
                    2,
                    3
                },
                "chaos_plague_sorcerer",
                2
            }
        },
        {
            name = "wave_d",
            weight = 5,
            breeds = {
                "chaos_fanatic",
                {
                    12,
                    15
                },
                "chaos_raider",
                {
                    3,
                    4
                },
                "chaos_plague_sorcerer",
                2
            }
        },
        {
            name = "wave_e",
            weight = 5,
            breeds = {
                "chaos_marauder",
                {
                    6,
                    9
                },
                "chaos_berzerker",
                {
                    6,
                    8
                },
                "chaos_plague_sorcerer",
                2
            }
        },
        {
            name = "wave_f",
            weight = 4,
            breeds = {
                "beastmen_gor",
                {
                    6,
                    8
                },
                "beastmen_ungor",
                {
                    8,
                    10
                },
                "beastmen_bestigor",
                {
                    2,
                    3
                },
                "beastmen_standard_bearer",
                2
            }
        },
        start_time = 0
    }
}

halescourge.sorcerer_extra_spawn = halescourge.sorcerer_boss_event_defensive

return halescourge