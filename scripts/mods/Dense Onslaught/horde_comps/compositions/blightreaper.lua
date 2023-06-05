local blightreaper = {}

blightreaper.onslaught_blightreaper_temple_easy = {
    {
        {
            name = "skaven_offensive",
            weight = 1,
            breeds = {
                "skaven_storm_vermin_commander",
                {
                    5,
                    6
                },
                "skaven_plague_monk",
                {
                    5,
                    6
                }
            }
        },
        {
            name = "skaven_mixed",
            weight = 1,
            breeds = {
                "skaven_storm_vermin_with_shield",
                3,
                "skaven_plague_monk",
                {
                    5,
                    6
                }
            }
        },
        {
            name = "skaven_defensive",
            weight = 1,
            breeds = {
                "skaven_storm_vermin_with_shield",
                3,
                "skaven_storm_vermin_commander",
                {
                    5,
                    6
                }
            }
        },
        {
            name = "chaos_mixed",
            weight = 1,
            breeds = {
                "chaos_berzerker",
                {
                    6,
                    7
                },
                "chaos_marauder_with_shield",
                8,
            }
        },
        {
            name = "chaos_offensive",
            weight = 1,
            breeds = {
                "chaos_warrior",
                2,
                "chaos_raider",
                5,
            }
        },
        {
            name = "chaos_zerg",
            weight = 1,
            breeds = {
                "chaos_warrior",
                2,
                "chaos_berzerker",
                {
                    6,
                    7
                },
            }
        },
        {
            name = "chaos_defensive",
            weight = 1,
            breeds = {
                "chaos_raider",
                {
                    5,
                    6
                },
                "chaos_marauder_with_shield",
                8,
            }
        },
        {
            name = "chaos_leader",
            weight = 1,
            breeds = {
                "chaos_warrior",
                1,
                "chaos_raider",
                {
                    2,
                    3
                },
                "chaos_marauder_with_shield",
                {
                    4,
                    5
                },
                "chaos_berzerker",
                {
                    3,
                    4
                }
            }
        }
    }
}

blightreaper.onslaught_blightreaper_temple_hard = {
    {
        {
            name = "chaos_defensive",
            weight = 1,
            breeds = {
                "chaos_warrior",
                7,
                "chaos_marauder_with_shield",
                {
                    4,
                    5
                }
            }
        },
        {
            name = "chaos_offensive",
            weight = 1,
            breeds = {
                "chaos_warrior",
                6,
                "chaos_raider",
                {
                    6,
                    7
                }
            }
        },
        {
            name = "chaos_zerg",
            weight = 1,
            breeds = {
                "chaos_warrior",
                6,
                "chaos_berzerker",
                {
                    7,
                    8
                }
            }
        },
        {
            name = "chaos_leader",
            weight = 1,
            breeds = {
                "chaos_warrior",
                3,
                "chaos_marauder_with_shield",
                {
                    4,
                    5
                },
                "chaos_raider",
                {
                    6,
                    7
                },
                "chaos_berzerker",
                {
                    7,
                    8
                }
            }
        }
    }
}

return blightreaper