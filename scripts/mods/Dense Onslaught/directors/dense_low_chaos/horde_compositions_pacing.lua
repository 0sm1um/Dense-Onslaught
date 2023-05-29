local DirectorUtils = local_require("scripts/mods/Dense Onslaught/directors/director_utils")
local horde_compositions_pacing = table.clone(HordeCompositionsPacing)

horde_compositions_pacing.huge = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                12,
                18
            },
            "skaven_clan_rat",
            {
                16,
                22
            },
            "skaven_plague_monk",
            {
                3,
                4
            },
            "skaven_storm_vermin",
            {
                2,
                4
            }
        }
    },
    {
        name = "shielders",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                10,
                16
            },
            "skaven_clan_rat",
            {
                14,
                22
            },
            "skaven_clan_rat_with_shield",
            {
                5,
                7
            },
            "skaven_plague_monk",
            {
                3,
                7
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                12,
                18
            },
            "skaven_clan_rat",
            {
                16,
                22
            },
            "skaven_storm_vermin_commander",
            {
                3,
                6
            },
            "skaven_storm_vermin",
            {
                2,
                3
            }
        }
    },
    {
        name = "shielders_heavy",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                10,
                16
            },
            "skaven_clan_rat",
            {
                14,
                22
            },
            "skaven_clan_rat_with_shield",
            {
                5,
                7
            },
            "skaven_storm_vermin_commander",
            {
                2,
                5
            },
            "skaven_storm_vermin_with_shield",
            {
                1,
                2
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.skaven
}
horde_compositions_pacing.huge_shields = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                12,
                18
            },
            "skaven_clan_rat",
            {
                16,
                22
            },
            "skaven_storm_vermin_commander",
            {
                3,
                5
            },
            "skaven_storm_vermin_with_shield",
            {
                1,
                2
            }
        }
    },
    {
        name = "shielders",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                10,
                16
            },
            "skaven_clan_rat",
            {
                14,
                22
            },
            "skaven_clan_rat_with_shield",
            {
                5,
                7
            },
            "skaven_plague_monk",
            {
                4,
                8
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                12,
                18
            },
            "skaven_clan_rat",
            {
                16,
                22
            },
            "skaven_storm_vermin_commander",
            {
                4,
                6
            },
            "skaven_plague_monk",
            {
                4,
                5
            }
        }
    },
    {
        name = "shielders_heavy",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                10,
                16
            },
            "skaven_clan_rat",
            {
                14,
                22
            },
            "skaven_clan_rat_with_shield",
            {
                5,
                7
            },
            "skaven_plague_monk",
            {
                3,
                6
            },
            "skaven_storm_vermin_with_shield",
            {
                2,
                3
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.skaven
}
horde_compositions_pacing.huge_armor = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                12,
                18
            },
            "skaven_clan_rat",
            {
                16,
                22
            },
            "skaven_storm_vermin_commander",
            {
                5,
                8
            }
        }
    },
    {
        name = "shielders",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                10,
                16
            },
            "skaven_clan_rat",
            {
                14,
                22
            },
            "skaven_clan_rat_with_shield",
            {
                5,
                7
            },
            "skaven_storm_vermin_commander",
            {
                2,
                4
            },
            "skaven_storm_vermin_with_shield",
            {
                1,
                2
            },
            "skaven_storm_vermin",
            {
                1,
                2
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                12,
                18
            },
            "skaven_clan_rat",
            {
                16,
                22
            },
            "skaven_storm_vermin_with_shield",
            {
                1,
                2
            },
            "skaven_storm_vermin",
            {
                2,
                4
            }
        }
    },
    {
        name = "shielders_heavy",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                10,
                16
            },
            "skaven_clan_rat",
            {
                14,
                22
            },
            "skaven_clan_rat_with_shield",
            {
                5,
                7
            },
            "skaven_storm_vermin_with_shield",
            {
                1,
                3
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.skaven
}
horde_compositions_pacing.huge_berzerker = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                12,
                18
            },
            "skaven_clan_rat",
            {
                16,
                22
            },
            "skaven_storm_vermin",
            {
                2,
                4
            },
            "skaven_plague_monk",
            {
                2,
                5
            }
        }
    },
    {
        name = "shielders",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                10,
                16
            },
            "skaven_clan_rat",
            {
                14,
                22
            },
            "skaven_clan_rat_with_shield",
            {
                5,
                7
            },
            "skaven_plague_monk",
            {
                5,
                8
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                18,
                22
            },
            "skaven_clan_rat",
            {
                20,
                24
            },
            "skaven_storm_vermin",
            {
                1,
                3
            },
            "skaven_plague_monk",
            {
                2,
                5
            }
        }
    },
    {
        name = "shielders_heavy",
        weight = 5,
        breeds = {
            "skaven_slave",
            {
                10,
                16
            },
            "skaven_clan_rat",
            {
                14,
                22
            },
            "skaven_clan_rat_with_shield",
            {
                5,
                7
            },
            "skaven_plague_monk",
            {
                3,
                6
            },
            "skaven_storm_vermin_with_shield",
            {
                2,
                3
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.skaven
}

horde_compositions_pacing.chaos_huge = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                10,
                14
            },
            "chaos_marauder",
            {
                10,
                14
            },
            "chaos_raider",
            {
                4,
                5
            },
            "chaos_warrior",
            {
                1,
                1
            }
        }
    },
    {
        name = "zerker",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                12
            },
            "chaos_marauder",
            {
                8,
                12
            },
            "chaos_marauder_with_shield",
            {
                4,
                6
            },
            "chaos_berzerker",
            {
                5,
                7
            }
        }
    },
    {
        name = "shielders",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                12
            },
            "chaos_marauder",
            {
                8,
                12
            },
            "chaos_marauder_with_shield",
            {
                4,
                6
            },
            "chaos_berzerker",
            {
                3,
                5
            },
            "chaos_raider",
            {
                1,
                2
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                10,
                14
            },
            "chaos_marauder",
            {
                10,
                14
            },
            "chaos_raider",
            {
                3,
                5
            },
            "chaos_warrior",
            {
                1,
                2
            }
        }
    },
    {
        name = "frenzy",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                10,
                14
            },
            "chaos_marauder",
            {
                10,
                14
            },
            "chaos_raider",
            {
                3,
                4
            },
            "chaos_berzerker",
            {
                4,
                5
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.chaos
}
horde_compositions_pacing.chaos_huge_shields = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                10,
                14
            },
            "chaos_marauder",
            {
                10,
                14
            },
            "chaos_raider",
            {
                3,
                5
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
            "chaos_fanatic",
            {
                8,
                12
            },
            "chaos_marauder",
            {
                8,
                12
            },
            "chaos_marauder_with_shield",
            {
                4,
                6
            },
            "chaos_berzerker",
            {
                3,
                5
            }
        }
    },
    {
        name = "shielders",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                10,
                14
            },
            "chaos_marauder",
            {
                10,
                14
            },
            "chaos_marauder_with_shield",
            {
                4,
                6
            },
            "chaos_raider",
            {
                3,
                5
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                10,
                14
            },
            "chaos_marauder",
            {
                10,
                14
            },
            "chaos_raider",
            {
                4,
                5
            },
            "chaos_warrior",
            {
                1,
                2
            }
        }
    },
    {
        name = "frenzy",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                14
            },
            "chaos_marauder",
            {
                8,
                14
            },
            "chaos_raider",
            {
                3,
                4
            },
            "chaos_berzerker",
            {
                2,
                4
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.chaos
}
horde_compositions_pacing.chaos_huge_armor = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                10,
                14
            },
            "chaos_marauder",
            {
                10,
                14
            },
            "chaos_raider",
            {
                4,
                5
            },
            "chaos_warrior",
            {
                1,
                1
            }
        }
    },
    {
        name = "zerker",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                14
            },
            "chaos_marauder",
            {
                8,
                14
            },
            "chaos_berzerker",
            {
                4,
                5
            },
            "chaos_warrior",
            {
                1,
                1
            }
        }
    },
    {
        name = "shielders",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                12
            },
            "chaos_marauder",
            {
                8,
                12
            },
            "chaos_marauder_with_shield",
            {
                4,
                6
            },
            "chaos_raider",
            {
                1,
                3
            },
            "chaos_berzerker",
            {
                3,
                6
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                14
            },
            "chaos_marauder",
            {
                8,
                14
            },
            "chaos_raider",
            {
                3,
                4
            },
            "chaos_warrior",
            {
                1,
                2
            }
        }
    },
    {
        name = "frenzy",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                14
            },
            "chaos_marauder",
            {
                8,
                14
            },
            "chaos_raider",
            {
                2,
                4
            },
            "chaos_berzerker",
            {
                1,
                3
            },
            "chaos_warrior",
            {
                1,
                1
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.chaos
}
horde_compositions_pacing.chaos_huge_berzerker = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                14
            },
            "chaos_marauder",
            {
                8,
                14
            },
            "chaos_berzerker",
            {
                3,
                5
            },
            "chaos_warrior",
            {
                1,
                1
            }
        }
    },
    {
        name = "zerker",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                12
            },
            "chaos_marauder",
            {
                8,
                12
            },
            "chaos_marauder_with_shield",
            {
                4,
                6
            },
            "chaos_berzerker",
            {
                4,
                7
            }
        }
    },
    {
        name = "shielders",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                12
            },
            "chaos_marauder",
            {
                8,
                12
            },
            "chaos_marauder_with_shield",
            {
                4,
                6
            },
            "chaos_raider",
            {
                2,
                3
            },
            "chaos_berzerker",
            {
                3,
                6
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                8,
                14
            },
            "chaos_marauder",
            {
                8,
                14
            },
            "chaos_raider",
            {
                2,
                3
            },
            "chaos_berzerker",
            {
                3,
                5
            },
            "chaos_warrior",
            {
                1,
                2
            }
        }
    },
    {
        name = "frenzy",
        weight = 5,
        breeds = {
            "chaos_fanatic",
            {
                10,
                14
            },
            "chaos_marauder",
            {
                10,
                14
            },
            "chaos_raider",
            {
                2,
                3
            },
            "chaos_berzerker",
            {
                3,
                5
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.chaos
}

horde_compositions_pacing.beastmen_huge = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "beastmen_ungor",
            {
                10,
                16
            },
            "beastmen_gor",
            {
                10,
                14
            },
            "beastmen_bestigor",
            {
                3,
                4
            },
            "chaos_warrior",
            {
                1,
                2
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "beastmen_gor",
            {
                30,
                32
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
            },
            "skaven_storm_vermin_with_shield",
            {
                1,
                2
            },
            "skaven_storm_vermin_commander",
            {
                1,
                2
            }
        }
    },
    {
        name = "leader_gor",
        weight = 5,
        breeds = {
            "beastmen_gor",
            {
                38,
                40
            },
            "beastmen_ungor",
            {
                10,
                12
            },
            "beastmen_bestigor",
            {
                3,
                4
            },
            "chaos_berzerker",
            {
                1,
                2
            },
            "skaven_plague_monk",
            {
                1,
                2
            }
        }
    },
    {
        name = "leader_ungor",
        weight = 5,
        breeds = {
            "beastmen_ungor",
            {
                14,
                18
            },
            "chaos_marauder_with_shield",
            {
                4,
                6
            },
            "skaven_plague_monk",
            {
                1,
                2
            },
            "beastmen_bestigor",
            {
                3,
                4
            }
        }

    },
    sound_settings = HordeCompositionsSoundSettings.beastmen
}
horde_compositions_pacing.beastmen_huge_armor = {
    {
        name = "plain",
        weight = 5,
        breeds = {
            "beastmen_gor",
            {
                30,
                32
            },
            "chaos_marauder_with_shield",
            {
                3,
                4
            },
            "beastmen_ungor",
            {
                10,
                12
            },
            "beastmen_bestigor",
            {
                3,
                4
            },
            "chaos_raider",
            {
                3,
                4
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "beastmen_gor",
            {
                38,
                40
            },
            "beastmen_ungor",
            {
                10,
                12
            },
            "beastmen_bestigor",
            {
                3,
                4
            },
            "chaos_berzerker",
            {
                3,
                4
            }
        }
    },
    {
        name = "leader_gor",
        weight = 5,
        breeds = {
            "beastmen_gor",
            {
                38,
                40
            },
            "beastmen_ungor",
            {
                10,
                12
            },
            "beastmen_bestigor",
            {
                7,
                8
            }
        }
    },
    {
        name = "leader",
        weight = 5,
        breeds = {
            "beastmen_ungor",
            {
                35,
                37
            },
            "beastmen_ungor",
            {
                10,
                12
            },
            "beastmen_bestigor",
            {
                3,
                4
            },
            "skaven_plague_monk",
            {
                3,
                4
            }
        }
    },
    sound_settings = HordeCompositionsSoundSettings.beastmen
}

DirectorUtils.scale_horde_composition(horde_compositions_pacing, 0.85)

return horde_compositions_pacing