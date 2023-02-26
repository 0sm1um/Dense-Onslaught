local mod = get_mod("Dense Onslaught")

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
