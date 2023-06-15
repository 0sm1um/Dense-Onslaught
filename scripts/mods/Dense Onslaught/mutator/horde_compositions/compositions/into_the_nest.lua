local into_the_nest = {}

into_the_nest.stronghold_boss_event_defensive = {
    {
        {
            name = "plain",
            weight = 6,
            breeds = {
                "skaven_slave",
                {
                    5,
                    10
                },
                "skaven_clan_rat",
                {
                    15,
                    20
                },
                "skaven_clan_rat_with_shield",
                {
                    8,
                    10
                },
                "skaven_plague_monk",
                {
                    6,
                    8
                },
                "skaven_storm_vermin_with_shield",
                2,
            }
        },
        {
            name = "somevermin",
            weight = 4,
            breeds = {
                "skaven_clan_rat",
                {
                    10,
                    12
                },
                "skaven_clan_rat_with_shield",
                {
                    10,
                    12
                },
                "skaven_plague_monk",
                {
                    9,
                    10
                },
                "skaven_storm_vermin_with_shield",
                {
                    2,
                    2
                }
            }
        }
    }
}

into_the_nest.stronghold_boss_trickle = {
    {
        {
            name = "plain",
            weight = 8,
            breeds = {
                "skaven_slave",
                {
                    5,
                    6
                },
                "skaven_clan_rat",
                {
                    5,
                    7
                },
                "skaven_clan_rat_with_shield",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "plain",
            weight = 2,
            breeds = {
                "skaven_slave",
                {
                    5,
                    6
                },
                "skaven_clan_rat",
                {
                    5,
                    7
                },
                "skaven_clan_rat_with_shield",
                {
                    2,
                    3
                },
                "skaven_storm_vermin",
                {
                1,
                1
                }
            }
        }
    }
}

into_the_nest.stronghold_boss_initial_wave = {
    {
        {
            name = "plain",
            weight = 6,
            breeds = {
                "skaven_storm_vermin",
                10,
                "skaven_plague_monk",
                6,
                "skaven_clan_rat",
                {
                    8,
                    12
                }
            }
        },
        {
            name = "plain",
            weight = 6,
            breeds = {
                "skaven_storm_vermin",
                10,
                "skaven_plague_monk",
                6,
                "skaven_clan_rat",
                {
                    8,
                    12
                }
            }
        }
    }
}

return into_the_nest