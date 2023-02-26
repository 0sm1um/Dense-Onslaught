local mod = get_mod("Dense Onslaught")

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
