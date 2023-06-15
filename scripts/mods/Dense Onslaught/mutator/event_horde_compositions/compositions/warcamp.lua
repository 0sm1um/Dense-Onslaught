local warcamp = {}

warcamp.event_warcamp_elites = {
    {
        {
            name = "warrior",
            weight = 5,
            breeds = {
                "chaos_warrior",
                4
            }
        },
        {
            name = "zerker",
            weight = 3,
            breeds = {
                "chaos_warrior",
                2,
                "chaos_berzerker",
                {
                    4,
                    6
                }
            }
        },
        {
            name = "mixed",
            weight = 2,
            breeds = {
                "chaos_warrior",
                3,
                "chaos_raider",
                {
                    2,
                    3
                }
            }
        }
    }
}

warcamp.warcamp_boss_event_trickle = {
    {
        {
            name = "plain",
            weight = 6,
            breeds = {
                "chaos_marauder",
                {
                    6,
                    8
                },
                "chaos_berzerker",
                {
                    1,
                    2
                }
            }
        },
        {
            name = "somevermin",
            weight = 4,
            breeds = {
                "chaos_marauder",
                {
                    6,
                    8
                },
                "chaos_raider",
                {
                    1,
                    2
                },
                "chaos_berzerker",
                {
                    1,
                    2
                }
            }
        }
    }
}

warcamp.warcamp_boss_event_defensive = {
    {
        {
            name = "plain",
            weight = 6,
            breeds = {
                "chaos_marauder",
                {
                    9,
                    12
                },
                "chaos_marauder_with_shield",
                {
                    9,
                    12
                },
                "chaos_raider",
                {
                    2,
                    3
                },
                "chaos_warrior",
                {
                    1,
                    2
                }
            }
        },
        {
            name = "horde",
            weight = 4,
            breeds = {
                "chaos_fanatic",
                {
                    25,
                    31
                },
                "chaos_marauder",
                {
                    7,
                    9
                },
                "chaos_berzerker",
                {
                    4,
                    5
                }
            }
        },
        {
            name = "somevermin",
            weight = 2,
            breeds = {
                "chaos_warrior",
                {
                    3,
                    4
                },
                "chaos_marauder",
                {
                    6,
                    7
                },
                "chaos_marauder_with_shield",
                {
                    3,
                    4
                }
            }
        }
    }
}

return warcamp