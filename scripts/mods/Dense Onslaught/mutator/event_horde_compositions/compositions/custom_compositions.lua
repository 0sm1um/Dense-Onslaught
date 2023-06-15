local custom_compositions = {}

custom_compositions.event_extra_spice_unshielded = {
    {
        {
            name = "few_clanrats",
            weight = 10,
            breeds = {
                "skaven_clan_rat",
                {
                    18,
                    22
                },
                "skaven_clan_rat_with_shield",
                {
                    5,
                    7
                }
            }
        },
        {
            name = "storm_clanrats",
            weight = 5,
            breeds = {
                "skaven_clan_rat",
                {
                    18,
                    22
                },
                "skaven_storm_vermin_commander",
                {
                    2,
                    3
                }
            }
        }

    }
}

custom_compositions.skaven_shields = {
    {
        {
            name = "plain",
            weight = 5,
            breeds = {
                "skaven_clan_rat_with_shield",
                {
                    7,
                    9
                }
            }
        },
        {
            name = "somevermin",
            weight = 5,
            breeds = {
                "skaven_clan_rat_with_shield",
                {
                    4,
                    5
                },
                "skaven_storm_vermin_with_shield",
                {
                    1,
                    1
                }
            }
        }
    }
}

--???
custom_compositions.event_stormvermin_shielders = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "skaven_storm_vermin_commander",
                2,
                "skaven_storm_vermin_with_shield",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "plain",
            weight = 10,
            breeds = {
                "skaven_storm_vermin_commander",
                2,
                "skaven_storm_vermin_with_shield",
                {
                    2,
                    3
                }
            }
        }
    }
}

--???
custom_compositions.event_stormvermin_special = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "skaven_storm_vermin",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "plain",
            weight = 10,
            breeds = {
                "skaven_storm_vermin",
                {
                    2,
                    3
                }
            }
        }
    }
}

--???
custom_compositions.event_maulers_small = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "chaos_raider",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "plain",
            weight = 10,
            breeds = {
                "chaos_raider",
                {
                    2,
                    3
                }
            }
        }
    }
}

--???
custom_compositions.event_maulers_medium = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "chaos_raider",
                {
                    5,
                    6
                }
            }
        },
        {
            name = "plain",
            weight = 10,
            breeds = {
                "chaos_raider",
                {
                    5,
                    6
                }
            }
        }
    }
}

--???
custom_compositions.event_bestigors_medium = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "beastmen_bestigor",
                {
                    5,
                    6
                }
            }
        },
        {
            name = "plain",
            weight = 10,
            breeds = {
                "beastmen_bestigor",
                {
                    5,
                    6
                }
            }
        }
    }
}

--???
custom_compositions.onslaught_custom_beastmen_huge = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "beastmen_gor",
                {
                    16,
                    20
                },
                "beastmen_ungor",
                {
                    10,
                    12
                },
                "beastmen_bestigor",
                {
                    4,
                    5
                }
            }
        },
        {
            name = "plain",
            weight = 10,
            breeds = {
                "beastmen_gor",
                {
                    16,
                    20
                },
                "beastmen_ungor",
                {
                    10,
                    12
                },
                "beastmen_bestigor",
                {
                    4,
                    5
                }
            }
        }
    }
    
}

custom_compositions.onslaught_event_skaven_elite_adds = {
    {
        {
            name = "vermin",
            weight = 5,
            breeds = {
                "skaven_storm_vermin",
                {
                    4,
                    5
                }
            }
        },
        {
            name = "verminmix",
            weight = 5,
            breeds = {
                "skaven_storm_vermin",
                {
                    2,
                    3
                },
                "skaven_storm_vermin_with_shield",
                {
                    2,
                    3
                }
            }
        },
    },
    {
        {
            name = "zerker",
            weight = 5,
            breeds = {
                "skaven_plague_monk",
                {
                    3,
                    4
                },
                "skaven_storm_vermin_with_shield",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "mixed",
            weight = 5,
            breeds = {
                "skaven_storm_vermin_commander",
                {
                    2,
                    3
                },
                "skaven_plague_monk",
                {
                    2,
                    2
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

custom_compositions.onslaught_event_skaven_elite_adds_small = {
    {
        {
            name = "vermin",
            weight = 5,
            breeds = {
                "skaven_storm_vermin",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "verminmix",
            weight = 5,
            breeds = {
                "skaven_storm_vermin",
                {
                    1,
                    2
                },
                "skaven_storm_vermin_with_shield",
                {
                    1,
                    2
                }
            }
        },
        {
            name = "zerker",
            weight = 5,
            breeds = {
                "skaven_plague_monk",
                {
                    2,
                    3
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

custom_compositions.onslaught_event_chaos_elite_adds = {
    {
        {
            name = "mauler",
            weight = 5,
            breeds = {
                "chaos_raider",
                {
                    4,
                    5
                }
            }
        },
        {
            name = "warrior",
            weight = 5,
            breeds = {
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
            name = "zerker",
            weight = 5,
            breeds = {
                "chaos_raider",
                {
                    2,
                    3
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

custom_compositions.onslaught_event_chaos_elite_adds_small = {
    {
        {
            name = "mauler",
            weight = 5,
            breeds = {
                "chaos_raider",
                {
                    2,
                    3
                },
                "chaos_fanatic",
                {
                    2,
                    3
                }	
            }
        },
        {
            name = "warrior",
            weight = 5,
            breeds = {
                "chaos_raider",
                {
                    1,
                    2
                },
                "chaos_warrior",
                {
                    1,
                    1
                },
                "chaos_fanatic",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "zerker",
            weight = 5,
            breeds = {
                "chaos_raider",
                {
                    1,
                    2
                },
                "chaos_berzerker",
                {
                    3,
                    4
                },
                "chaos_fanatic",
                {
                    2,
                    3
                }
            }
        }
    }
}

--???
custom_compositions.onslaught_event_chaos_adds_small = {
    {
        {
            name = "plain",
            weight = 5,
            breeds = {
                "chaos_warrior",
                1,
                "chaos_marauder",
                {
                    5,
                    7
                },
                "chaos_berzerker",
                {
                    2,
                    3
                },
                "chaos_fanatic",
                {
                    5,
                    8
                }
            }
        },
        {
            name = "plain",
            weight = 5,
            breeds = {
                "chaos_warrior",
                1,
                "chaos_marauder",
                {
                    5,
                    7
                },
                "chaos_berzerker",
                {
                    2,
                    3
                },
                "chaos_fanatic",
                {
                    5,
                    8
                }
            }
        }
    }		
}

custom_compositions.onslaught_chaos_shield_adds = {
    {
        {
            name = "marauder",
            weight = 5,
            breeds = {
                "chaos_marauder",
                {
                    4,
                    5
                },
                "chaos_marauder_with_shield",
                {
                    8,
                    10
                }
            }
        },
        {
            name = "fanatic",
            weight = 5,
            breeds = {
                "chaos_fanatic",
                {
                    7,
                    9
                },
                "chaos_marauder_with_shield",
                {
                    8,
                    10
                }
            }
        }
    }	
}

--???
custom_compositions.onslaught_chaos_warriors_small = {
    {
        {
            name = "plain",
            weight = 7,
            breeds = {
                "chaos_warrior",
                {
                    2,
                    2
                }
            }
        },
        {
            name = "plain",
            weight = 7,
            breeds = {
                "chaos_warrior",
                {
                    2,
                    2
                }
            }
        }
    }
}

--???
custom_compositions.onslaught_chaos_warriors = {
    {
        {
            name = "plain",
            weight = 7,
            breeds = {
                "chaos_warrior",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "plain",
            weight = 7,
            breeds = {
                "chaos_warrior",
                {
                    2,
                    3
                }
            }
        }
    }
}

--???
custom_compositions.beastmen_mix = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "beastmen_gor",
                {
                    4,
                    5
                },
                "beastmen_ungor",
                {
                    10,
                    12
                },
                "beastmen_bestigor",
                {
                    2,
                    3
                },
                "beastmen_standard_bearer",
                {
                    1,
                    1
                }
            }
        },
        {
            name = "plain",
            weight = 10,
            breeds = {
                "beastmen_gor",
                {
                    4,
                    5
                },
                "beastmen_ungor",
                {
                    10,
                    12
                },
                "beastmen_bestigor",
                {
                    2,
                    3
                },
                "beastmen_standard_bearer",
                {
                    1,
                    1
                }
            }
        }
    }
}

--???
custom_compositions.beastmen_elite = {
    {
        {
            name = "plain",
            weight = 10,
            breeds = {
                "beastmen_bestigor",
                {
                    2,
                    3
                }
            }
        },
        {
            name = "plain",
            weight = 10,
            breeds = {
                "beastmen_bestigor",
                {
                    2,
                    3
                }
            }
        }
    }
}

--???
custom_compositions.beastmen_trash = {
    {
        {
            name= "plain",
            weight = 10,
            breeds = {
                "beastmen_gor",
                {
                    3,
                    4
                },
                "beastmen_ungor",
                {
                    4,
                    5
                }
            }
        },
        {
            name= "plain",
            weight = 10,
            breeds = {
                "beastmen_gor",
                {
                    3,
                    4
                },
                "beastmen_ungor",
                {
                    4,
                    5
                }
            }
        }
    }
}

return custom_compositions