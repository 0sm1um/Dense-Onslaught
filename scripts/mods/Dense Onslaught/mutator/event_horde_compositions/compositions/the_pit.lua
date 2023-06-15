local the_pit = {}

the_pit.chaos_elites = {
    {
        {
            name = "zerker",
            weight = 1,
            breeds = {
                "chaos_berzerker",
                {
                    3,
                    4
                }
            }
        },
        {
            name = "mauler",
            weight = 1,
            breeds = {
                "chaos_raider",
                {
                    3,
                    4
                }
            }
        }
    }
}

the_pit.slum_specials = {
    {
        {
            name = "leech",
            weight = 2,
            breeds = {
                "chaos_corruptor_sorcerer",
                2,
            }
        },
        {
            name = "warpfire",
            weight = 2,
            breeds = {
                "skaven_warpfire_thrower",
                2,
            }
        },
        {
            name = "mixed",
            weight = 3,
            breeds = {
                "chaos_corruptor_sorcerer",
                1,
                "skaven_warpfire_thrower",
                1,
            }
        }
    }
}

the_pit.slum_escape_chaos = {
    {
        {
            name = "escape",
            weight = 2,
            breeds = {
                "chaos_marauder_with_shield",
                5,
                "chaos_raider",
                2,
                "chaos_berzerker",
                4,
                "chaos_warrior",
                2
            }
        },
        {
            name = "escape",
            weight = 2,
            breeds = {
                "chaos_marauder_with_shield",
                5,
                "chaos_raider",
                2,
                "chaos_berzerker",
                4,
                "chaos_warrior",
                2
            }
        }
    }
}

the_pit.slum_escape_skaven = {
    {
        {
            name = "cutoff",
            weight = 2,
            breeds = {
                "skaven_storm_vermin",
                4,
                "skaven_storm_vermin_with_shield",
                4,
                "skaven_clan_rat_with_shield",
                8
            }
        },
        {
            name = "cutoff",
            weight = 2,
            breeds = {
                "skaven_storm_vermin",
                4,
                "skaven_storm_vermin_with_shield",
                4,
                "skaven_clan_rat_with_shield",
                8
            }
        }
    }
}

the_pit.slum_warrior = {
    {
        {
            name = "warrior",
            weight = 2,
            breeds = {
                "chaos_warrior",
                1
            }
        },
        {
            name = "warrior",
            weight = 2,
            breeds = {
                "chaos_warrior",
                1
            }
        }
    }
}

return the_pit