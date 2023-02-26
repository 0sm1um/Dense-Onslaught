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
