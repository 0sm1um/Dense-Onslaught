local mod = get_mod("Dense Onslaught")

--[[
	Key to understanding:
		Plain: Always Unshielded trash
		Zerker: Always Shielded Trash
		Shielders: Always Shielded Trash
		Leader: Always unshielded trash and white SV
		Frenzy: Always mix of SV and berzerkers
]]

	HordeCompositionsPacing.huge = {
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
	HordeCompositionsPacing.huge_shields = {
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
	HordeCompositionsPacing.huge_armor = {
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
	HordeCompositionsPacing.huge_berzerker = {
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

return HordeCompositionsPacing
