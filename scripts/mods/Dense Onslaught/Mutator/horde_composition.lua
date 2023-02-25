local mod = get_mod("Dense Onslaught")

	HordeCompositionsPacing.small = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					8,
					10
				},
				"skaven_clan_rat",
				{
					12,
					14
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					10,
					12
				},
				"skaven_clan_rat_with_shield",
				{
					7,
					8
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.medium = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					15,
					20
				},
				"skaven_clan_rat",
				{
					26,
					30
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					16,
					20
				},
				"skaven_clan_rat",
				{
					10,
					12
				}
			}
		},
		{
			name = "leader",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					15,
					20
				},
				"skaven_clan_rat",
				{
					18,
					20
				}

			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.large = {
		{
			name = "plain",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					15,
					20
				},
				"skaven_clan_rat",
				{
					35,
					42
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_clan_rat",
				{
					40,
					42
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					12
				}
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					15,
					20
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_storm_vermin_commander",
				{
					5,
					6
				},
				"skaven_plague_monk",
				{
					2,
					3
				}

			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					20,
					30
				},
				"skaven_clan_rat",
				{
					10,
					12
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					15
				},
				"skaven_storm_vermin_with_shield",
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
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					22,
					28
				},
				"skaven_clan_rat",
				{
					20,
					30
				},
				"skaven_plague_monk",
				{
					7,
					8
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					12,
					16
				},
				"skaven_clan_rat",
				{
					20,
					25
				},
				"skaven_clan_rat_with_shield",
				{
					18,
					20
				},
				"skaven_storm_vermin_commander",
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
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					20,
					22
				},
				"skaven_clan_rat",
				{
					30,
					35
				},
				"skaven_storm_vermin_commander",
				{
					5,
					6
				},
				"skaven_storm_vermin",
				{
					1,
					2
				}
			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					22,
					28
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					8,
					10
				},
				"skaven_storm_vermin_with_shield",
				{
					2,
					3
				},
				"skaven_storm_vermin_commander",
				{
					4,
					5
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge_shields = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					20,
					22
				},
				"skaven_clan_rat",
				{
					30,
					34
				},
				"skaven_clan_rat_with_shield",
				{
					7,
					9
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_plague_monk",
				{
					2,
					3
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					20,
					22
				},
				"skaven_clan_rat",
				{
					26,
					28
				},
				"skaven_clan_rat_with_shield",
				{
					12,
					14
				},
				"skaven_plague_monk",
				{
					3,
					4
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					20,
					24
				},
				"skaven_clan_rat",
				{
					24,
					28
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_clan_rat_with_shield",
				{
					6,
					8
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
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					22,
					24
				},
				"skaven_clan_rat",
				{
					24,
					28
				},
				"skaven_clan_rat_with_shield",
				{
					18,
					20
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_storm_vermin_with_shield",
				{
					3,
					4
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge_armor = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					20,
					24
				},
				"skaven_clan_rat",
				{
					12,
					30
				},
				"skaven_storm_vermin_commander",
				{
					7,
					8
				},
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					18,
					22
				},
				"skaven_clan_rat",
				{
					24,
					26
				},
				"skaven_clan_rat_with_shield",
				{
					7,
					9
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
				},
				"skaven_storm_vermin",
				{
					2,
					3
				},
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					22,
					24
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_storm_vermin_commander",
				{
					7,
					8
				}
			}
		},
		{
			name = "shielders_heavy",
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					18,
					20
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					3,
					5
				},
				"skaven_storm_vermin_commander",
				{
					4,
					5
				},
				"skaven_storm_vermin_with_shield",
				{
					3,
					4
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.huge_berzerker = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					18,
					20
				},
				"skaven_clan_rat",
				{
					28,
					30
				},
				"skaven_plague_monk",
				{
					7,
					8
				}
			}
		},
		{
			name = "shielders",
			weight = 7,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					15,
					18
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					7
				},
				"skaven_plague_monk",
				{
					7,
					8
				}
			}
		},
		{
			name = "leader",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_storm_vermin_commander",
				{
					3,
					4
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
			weight = 2,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					20,
					22
				},
				"skaven_clan_rat_with_shield",
				{
					3,
					5
				},
				"skaven_storm_vermin_with_shield",
				{
					3,
					4
				},
				"skaven_plague_monk",
				{
					4,
					5
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.skaven
	}
	HordeCompositionsPacing.chaos_medium = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					3,
					4
				},
				"chaos_fanatic",
				{
					15,
					20
				}
			}
		},
		{
			name = "zerkers",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_berzerker",
				{
					1,
					1
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_marauder_with_shield",
				{
					1,
					3
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_raider",
				{
					1,
					1
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_large = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					5,
					6
				},
				"chaos_fanatic",
				{
					20,
					25
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					20,
					25
				},
				"chaos_raider",
				{
					2,
					2
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_raider",
				{
					1,
					1
				},
				"chaos_berzerker",
				{
					1,
					2
				},
				"chaos_marauder_with_shield",
				{
					1,
					2
				},
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					18,
					20
				},
				"chaos_marauder",
				{
					24,
					26
				},
				"chaos_raider",
				{
					6,
					7
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					24,
					26
				},
				"chaos_marauder",
				{
					14,
					16
				},
				"chaos_berzerker",
				{
					6,
					7
				}
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					8,
					10
				},
				"chaos_marauder_with_shield",
				{
					18,
					20
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_warrior",
				1,
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder",
				{
					18,
					20
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					12,
					14
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_shields = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					15,
					16
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_berzerker",
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
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_raider",
				{
					6,
					7
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder",
				{
					14,
					16
				},
				"chaos_raider",
				{
					7,
					8
				},
				"chaos_marauder_with_shield",
				{
					6,
					7
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					18,
					20
				},
				"chaos_marauder",
				{
					16,
					18
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_marauder_with_shield",
				{
					6,
					7
				},
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_armor = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					20,
					22
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					3,
					4
				},
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					12,
					14
				},
				"chaos_berzerker",
				{
					6,
					8
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					10,
					12
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					4,
					6
				},
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					20,
					22
				},
				"chaos_marauder",
				{
					14,
					16
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_berzerker",
				{
					2,
					3
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					12,
					14
				},
				"chaos_marauder",
				{
					18,
					20
				},
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_berzerker",
				{
					4,
					6
				},
				"chaos_warrior",
				1
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.chaos_huge_berzerker = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					14,
					16
				},
				"chaos_marauder",
				{
					24,
					26
				},
				"chaos_berzerker",
				{
					7,
					8
				}
			}
		},
		{
			name = "zerker",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					18,
					20
				},
				"chaos_berzerker",
				{
					5,
					6
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "shielders",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					16,
					18
				},
				"chaos_marauder",
				{
					16,
					18
				},
				"chaos_marauder_with_shield",
				{
					8,
					10
				},
				"chaos_berzerker",
				{
					6,
					7
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					14,
					16
				},
				"chaos_marauder",
				{
					18,
					20
				},
				"chaos_berzerker",
				{
					7,
					8
				}
			}
		},
		{
			name = "frenzy",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					14,
					16
				},
				"chaos_marauder",
				{
					16,
					18
				},
				"chaos_raider",
				{
					4,
					5
				},
				"chaos_berzerker",
				{
					4,
					5
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				},
				"chaos_warrior",
				1
			}
		},
		sound_settings = HordeCompositionsSoundSettings.chaos
	}
	HordeCompositionsPacing.beastmen_medium = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					12,
					14
				},
				"beastmen_ungor",
				{
					5,
					7
				}
			}
		},
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					7,
					9
				},
				"beastmen_ungor",
				{
					8,
					10
				}
			}
		},
		{
			name = "leader_gor",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					12,
					14
				},
				"beastmen_ungor",
				{
					5,
					7
				},
				"beastmen_bestigor",
				{
					1,
					2
				}
			}
		},
		{
			name = "leader_ungor",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					7,
					9
				},
				"beastmen_ungor",
				{
					8,
					10
				},
				"beastmen_bestigor",
				{
					1,
					2
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
	HordeCompositionsPacing.beastmen_large = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					16,
					18
				},
				"beastmen_ungor",
				{
					5,
					7
				}
			}
		},
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					12,
					14
				},
				"beastmen_ungor",
				{
					8,
					10
				}
			}
		},
		{
			name = "leader_gor",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					16,
					18
				},
				"beastmen_ungor",
				{
					5,
					7
				},
				"beastmen_bestigor",
				{
					2,
					2
				}
			}
		},
		{
			name = "leader_ungor",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					12,
					14
				},
				"beastmen_ungor",
				{
					8,
					10
				},
				"beastmen_bestigor",
				{
					2,
					2
				}
			}
		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
	HordeCompositionsPacing.beastmen_huge = {
		{
			name = "plain",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					35,
					38
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
				"chaos_warrior",
				1
			}
		},
		{
			name = "leader",
			weight = 7,
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
				},
			}
		},
		{
			name = "leader_gor",
			weight = 7,
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
				},
			}
		},
		{
			name = "leader_ungor",
			weight = 7,
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
				"chaos_raider",
				{
					1,
					2
				},
				"skaven_storm_vermin_commander",
				{
					1,
					2
				},

			}

		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
	HordeCompositionsPacing.beastmen_huge_armor = {
		{
			name = "plain",
			weight = 3,
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
				},
			}
		},
		{
			name = "leader",
			weight = 7,
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
				},
			}
		},
		{
			name = "leader_gor",
			weight = 7,
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
			weight = 7,
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
				},
			},
		},
		sound_settings = HordeCompositionsSoundSettings.beastmen
	}
