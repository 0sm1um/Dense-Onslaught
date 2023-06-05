local event_horde_composition = {}

event_horde_composition.dense_event_smaller = {
    {
        {
            name = "plain",
            weight = 5,
            breeds = {
                "skaven_slave",
                {
                    5,
                    7
                },
                "skaven_clan_rat",
                {
                    7,
                    9
                }
            }
        },
        {
            name = "mixed",
            weight = 5,
            breeds = {
                "skaven_slave",
                {
                    4,
                    6
                },
                "skaven_clan_rat",
                {
                    6,
                    7
                },
                "skaven_clan_rat_with_shield",
                {
                    1,
                    2
                }
            }
        },
        {
            name = "leader",
            weight = 3,
            breeds = {
                "skaven_slave",
                {
                    7,
                    9
                },
                "skaven_storm_vermin_commander",
                {
                    1,
                    2
                }
            }
        }
    }
}

event_horde_composition.dense_event_small = {
    {
        {
            name = "plain",
            weight = 5,
            breeds = {
                "skaven_slave",
                {
                    8,
                    10
                },
                "skaven_clan_rat",
                {
                    13,
                    15
                }
            }
        },
        {
            name = "mixed",
            weight = 5,
            breeds = {
                "skaven_slave",
                {
                    9,
                    10
                },
                "skaven_clan_rat",
                {
                    8,
                    9
                },
                "skaven_clan_rat_with_shield",
                {
                    3,
                    4
                }
            }
        },
        {
            name = "leader",
            weight = 3,
            breeds = {
                "skaven_slave",
                {
                    13,
                    15
                },
                "skaven_clan_rat_with_shield",
                {
                    1,
                    2
                },
                "skaven_storm_vermin_commander",
                {
                    1,
                    1
                }
            }
        }
    }
}

event_horde_composition.dense_event_medium = {
    {
        {
            name = "plain",
            weight = 5,
            breeds = {
                "skaven_slave",
                {
                    12,
                    13
                },
                "skaven_clan_rat",
                {
                    20,
                    25
                }
            }
        },
        {
            name = "mixed",
            weight = 5,
            breeds = {
                "skaven_slave",
                {
                    16,
                    18
                },
                "skaven_clan_rat",
                {
                    15,
                    16
                },
                "skaven_clan_rat_with_shield",
                {
                    5,
                    6
                },
                "skaven_clan_rat_with_shield",
                {
                    5,
                    6
                },
                "skaven_storm_vermin_commander",
                {
                    2,
                    4
                },
            }
        },
        {
            name = "leader",
            weight = 3,
            breeds = {
                "skaven_slave",
                {
                    14,
                    17
                },
                "skaven_clan_rat",
                {
                    14,
                    18
                },
                "skaven_clan_rat_with_shield",
                {
                    5,
                    6
                },
                "skaven_storm_vermin_commander",
                {
                    2,
                    3
                },
                "skaven_storm_vermin",
                {
                    2,
                    2
                }
            }
        }
    }
}

event_horde_composition.dense_event_large = {
    {
        {
            name = "plain",
            weight = 5,
            breeds = {
                "skaven_slave",
                {
                    22,
                    26
                },
                "skaven_clan_rat",
                {
                    34,
                    38
                }
            }
        },
        {
            name = "mixed",
            weight = 5,
            breeds = {
                "skaven_slave",
                {
                    14,
                    17
                },
                "skaven_clan_rat",
                {
                    30,
                    35
                },
                "skaven_clan_rat_with_shield",
                {
                    8,
                    13
                }
            }
        },
    },
    {
        {
            name = "leader",
            weight = 3,
            breeds = {
                "skaven_slave",
                {
                    12,
                    14
                },
                "skaven_clan_rat",
                {
                    20,
                    22
                },
                "skaven_clan_rat_with_shield",
                {
                    7,
                    11
                },
                "skaven_storm_vermin_commander",
                {
                    3,
                    4
                }
            }
        },
        {
            name = "shielders",
            weight = 3,
            breeds = {
                "skaven_slave",
                {
                    14,
                    16
                },
                "skaven_clan_rat",
                {
                    20,
                    21
                },
                "skaven_clan_rat_with_shield",
                {
                    10,
                    14
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

event_horde_composition.dense_event_small_chaos = {
    {
        {
            name = "plain",
            weight = 7,
            breeds = {
                "chaos_marauder",
                {
                    10,
                    13
                }
            }
        },
        {
            name = "shielders",
            weight = 3,
            breeds = {
                "chaos_marauder_with_shield",
                {
                    5,
                    7
                },
                "chaos_marauder",
                {
                    4,
                    5
                }
            }
        }
    }
}

event_horde_composition.dense_event_medium_chaos = {
    {
        {
            name = "plain",
            weight = 7,
            breeds = {
                "chaos_marauder",
                {
                    15,
                    20
                },
                "chaos_fanatic",
                {
                    15,
                    20
                }
            }
        },
        {
            name = "shielders",
            weight = 3,
            breeds = {
                "chaos_marauder_with_shield",
                {
                    5,
                    6
                },
                "chaos_marauder",
                {
                    5,
                    10
                },
                "chaos_fanatic",
                {
                    15,
                    20
                }
            }
        },
    },
    {
        {
            name = "leader",
            weight = 7,
            breeds = {
                "chaos_marauder",
                {
                    4,
                    5
                },
                "chaos_fanatic",
                {
                    20,
                    25
                },
                "chaos_raider",
                {
                    3,
                    3
                }
            }
        },
        {
            name = "zerker",
            weight = 3,
            breeds = {
                "chaos_marauder",
                {
                    10,
                    15
                },
                "chaos_fanatic",
                {
                    20,
                    25
                },
                "chaos_berzerker",
                {
                    4,
                    4
                }
            }
        }
    }
}

event_horde_composition.dense_event_large_chaos = {
    {
        {
            name = "plain",
            weight = 7,
            breeds = {
                "chaos_marauder",
                {
                    22,
                    26
                },
                "chaos_fanatic",
                {
                    22,
                    26
                }
            }
        },
        {
            name = "shielders",
            weight = 3,
            breeds = {
                "chaos_marauder_with_shield",
                {
                    9,
                    13
                },
                "chaos_marauder",
                {
                    8,
                    11
                },
                "chaos_fanatic",
                {
                    22,
                    26
                }
            }
        },
    },
    {
        {
            name = "leader",
            weight = 5,
            breeds = {
                "chaos_marauder",
                {
                    8,
                    11
                },
                "chaos_fanatic",
                {
                    22,
                    26
                },
                "chaos_raider",
                {
                    3,
                    4
                }
            }
        },
        {
            name = "zerker",
            weight = 3,
            breeds = {
                "chaos_marauder",
                {
                    8,
                    11
                },
                "chaos_fanatic",
                {
                    22,
                    26
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

event_horde_composition.dense_event_extra_spice_small = {
    {
        {
            name = "few_clanrats",
            weight = 20,
            breeds = {
                "skaven_clan_rat",
                {
                    4,
                    5
                },
                "skaven_clan_rat_with_shield",
                {
                    6,
                    7
                },
                "skaven_storm_vermin_commander",
                1
            }
        },
        {
            name = "storm_clanrats",
            weight = 2,
            breeds = {
                "skaven_clan_rat",
                {
                    6,
                    7
                },
                "skaven_clan_rat_with_shield",
                {
                    4,
                    5
                },
                "skaven_storm_vermin_with_shield",
                1
            }
        }
    }
}

event_horde_composition.dense_event_extra_spice_medium = {
    {
        {
            name = "few_clanrats",
            weight = 10,
            breeds = {
                "skaven_clan_rat",
                {
                    8,
                    13
                },
                "skaven_clan_rat_with_shield",
                {
                    10,
                    15
                },
                "skaven_storm_vermin_commander",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "storm_clanrats",
            weight = 3,
            breeds = {
                "skaven_clan_rat",
                {
                    10,
                    15
                },
                "skaven_clan_rat_with_shield",
                {
                    8,
                    13
                },
                "skaven_storm_vermin_with_shield",
                {
                    1,
                    2
                }
            }
        }
    }
}

event_horde_composition.dense_event_extra_spice_large = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "skaven_clan_rat",
                {
                    17,
                    19
                },
                "skaven_clan_rat_with_shield",
                {
                    20,
                    24
                },
                "skaven_storm_vermin_commander",
                {
                    3,
                    4
                }
            }
        },
        {
            name = "lotsofvermin",
            weight = 3,
            breeds = {
                "skaven_clan_rat",
                {
                    20,
                    24
                },
                "skaven_clan_rat_with_shield",
                {
                    17,
                    19
                },
                "skaven_storm_vermin_with_shield",
                {
                    2,
                    3
                }
            }
        }
    }
}

event_horde_composition.dense_chaos_elites = {
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

return event_horde_composition