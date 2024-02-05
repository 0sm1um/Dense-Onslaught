local mod = get_mod("Dense Onslaught")

	--Generic event spawnsets

	HordeCompositions.event_smaller = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					10,
					12
				},
				"skaven_clan_rat",
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
				"skaven_slave",
				{
					9,
					11
				},
				"skaven_clan_rat",
				{
					1,
					2
				},
				"skaven_clan_rat_with_shield",
				{
					1,
					1
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
					1
				}
			}
		}
	}

	HordeCompositions.event_small = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					15,
					18
				},
				"skaven_clan_rat",
				{
					3,
					5
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
					2,
					3
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

	HordeCompositions.event_medium = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					32,
					33
				},
				"skaven_clan_rat",
				{
					8,
					11
				}
			}
		},
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					26,
					28
				},
				"skaven_clan_rat",
				{
					5,
					6
				},
				"skaven_clan_rat_with_shield",
				{
					5,
					6
				}
			}
		},
		{
			name = "leader",
			weight = 3,
			breeds = {
				"skaven_slave",
				{
					24,
					27
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
				}
			}
		}
	}

	HordeCompositions.event_large = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					42,
					45
				},
				"skaven_clan_rat",
				{
					14,
					18
				}
			}
		},
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					37,
					39
				},
				"skaven_clan_rat",
				{
					10,
					15
				},
				"skaven_clan_rat_with_shield",
				{
					8,
					13
				}
			}
		},
		{
			name = "leader",
			weight = 3,
			breeds = {
				"skaven_slave",
				{
					34,
					36
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
					34,
					36
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

	HordeCompositions.event_small_chaos = {
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

	HordeCompositions.event_medium_chaos = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder",
				{
					14,
					16
				},
				"chaos_fanatic",
				{
					20,
					25
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
					4,
					5
				},
				"chaos_fanatic",
				{
					20,
					25
				}
			}
		},
		{
			name = "leader",
			weight = 5,
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
					2,
					2
				}
			}
		},
		{
			name = "zerker",
			weight = 3,
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
				},
				"chaos_berzerker",
				{
					1,
					2
				}
			}
		}
	}

	HordeCompositions.event_large_chaos = {
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
	
	HordeCompositions.event_extra_spice_small = {
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
	
	HordeCompositions.event_extra_spice_medium = {
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
	
	HordeCompositions.event_extra_spice_large = {
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
	
	HordeCompositions.event_chaos_extra_spice_small = {
		{
			{
				name = "few_clanrats",
				weight = 25,
				breeds = {
					"chaos_marauder",
					{
						4,
						5
					}
				}
			},
			{
				name = "storm_clanrats",
				weight = 2,
				breeds = {
					"chaos_marauder",
					{
						2,
						3
					},
					"chaos_raider",
					1
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 25,
				breeds = {
					"chaos_marauder",
					{
						5,
						6
					}
				}
			},
			{
				name = "storm_clanrats",
				weight = 2,
				breeds = {
					"chaos_marauder",
					{
						3,
						4
					},
					"chaos_raider",
					1
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 25,
				breeds = {
					"chaos_marauder",
					{
						6,
						7
					}
				}
			},
			{
				name = "storm_clanrats",
				weight = 2,
				breeds = {
					"chaos_marauder",
					{
						3,
						4
					},
					"chaos_raider",
					2
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 25,
				breeds = {
					"chaos_marauder",
					{
						9,
						11
					}
				}
			},
			{
				name = "storm_clanrats",
				weight = 2,
				breeds = {
					"chaos_marauder",
					{
						6,
						7
					},
					"chaos_raider",
					2
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 25,
				breeds = {
					"chaos_marauder",
					{
						11,
						13
					},
					"chaos_raider",
					2
				}
			},
			{
				name = "storm_clanrats",
				weight = 2,
				breeds = {
					"chaos_marauder",
					{
						8,
						9
					},
					"chaos_raider",
					3
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 25,
				breeds = {
					"chaos_marauder",
					{
						11,
						13
					},
					"chaos_raider",
					2
				}
			},
			{
				name = "storm_clanrats",
				weight = 2,
				breeds = {
					"chaos_marauder",
					{
						8,
						9
					},
					"chaos_raider",
					4
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 25,
				breeds = {
					"chaos_marauder",
					{
						11,
						13
					},
					"chaos_raider",
					2
				}
			},
			{
				name = "storm_clanrats",
				weight = 2,
				breeds = {
					"chaos_marauder",
					{
						8,
						9
					},
					"chaos_raider",
					4
				}
			}
		}
	}
	
	HordeCompositions.event_chaos_extra_spice_medium = {
		{
			{
				name = "few_clanrats",
				weight = 10,
				breeds = {
					"chaos_marauder",
					{
						5,
						7
					}
				}
			},
			{
				name = "storm_clanrats",
				weight = 3,
				breeds = {
					"chaos_marauder",
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
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 10,
				breeds = {
					"chaos_marauder",
					{
						6,
						8
					}
				}
			},
			{
				name = "storm_clanrats",
				weight = 3,
				breeds = {
					"chaos_marauder",
					{
						4,
						6
					},
					"chaos_raider",
					{
						1,
						2
					}
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 10,
				breeds = {
					"chaos_marauder",
					{
						7,
						9
					},
					"chaos_raider",
					1
				}
			},
			{
				name = "storm_clanrats",
				weight = 3,
				breeds = {
					"chaos_marauder",
					{
						4,
						6
					},
					"chaos_raider",
					{
						2,
						3
					}
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 10,
				breeds = {
					"chaos_marauder",
					{
						10,
						12
					},
					"chaos_raider",
					2
				}
			},
			{
				name = "storm_clanrats",
				weight = 3,
				breeds = {
					"chaos_marauder",
					{
						7,
						8
					},
					"chaos_raider",
					{
						4,
						5
					}
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 10,
				breeds = {
					"chaos_marauder",
					{
						13,
						14
					},
					"chaos_raider",
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
					"chaos_marauder",
					{
						9,
						11
					},
					"chaos_raider",
					{
						6,
						7
					}
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 10,
				breeds = {
					"chaos_marauder",
					{
						13,
						14
					},
					"chaos_raider",
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
					"chaos_marauder",
					{
						9,
						11
					},
					"chaos_raider",
					{
						6,
						7
					}
				}
			}
		},
		{
			{
				name = "few_clanrats",
				weight = 10,
				breeds = {
					"chaos_marauder",
					{
						13,
						14
					},
					"chaos_raider",
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
					"chaos_marauder",
					{
						9,
						11
					},
					"chaos_raider",
					{
						6,
						7
					}
				}
			}
		}
	}

	TerrorEventBlueprints.generic_disable_pacing = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	TerrorEventBlueprints.generic_enable_specials = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	---------------------
	--Unscaled Onslaught variants of generic compositions
	
	HordeCompositions.onslaught_chaos_shields = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_marauder_with_shield",
				{
					3,
					4
				}
			}
		}
	}
	
	HordeCompositions.onslaught_chaos_berzerkers_small = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		}
	}
	
	HordeCompositions.onslaught_chaos_berzerkers_medium = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		}
	}
	
	HordeCompositions.onslaught_chaos_warriors = {
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
	
	HordeCompositions.onslaught_chaos_warriors_small = {
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
	
	HordeCompositions.onslaught_event_small_fanatics = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_fanatic",
				{
					5,
					6
				}
			}
		}
	}
	
	HordeCompositions.onslaught_plague_monks_small = {
		{
			name = "mines_plague_monks",
			weight = 1,
			breeds = {
				"skaven_plague_monk",
				{
					3,
					4
				}
			}
		}
	}
	
	HordeCompositions.onslaught_plague_monks_medium = {
		{
			name = "mines_plague_monks",
			weight = 1,
			breeds = {
				"skaven_plague_monk",
				{
					4,
					5
				}
			}
		}
	}
	
	HordeCompositions.onslaught_storm_vermin_small = {
		{
			name = "somevermin",
			weight = 3,
			breeds = {
				"skaven_storm_vermin_commander",
				{
					2,
					3
				}
			}
		}
	}
	
	HordeCompositions.onslaught_storm_vermin_medium = {
		{
			name = "somevermin",
			weight = 3,
			breeds = {
				"skaven_storm_vermin_commander",
				{
					3,
					4
				}
			}
		}
	}
	
	HordeCompositions.onslaught_storm_vermin_shields_small = {
		{
			name = "somevermin",
			weight = 3,
			breeds = {
				"skaven_storm_vermin_with_shield",
				{
					2,
					3
				}
			}
		}
	}
	
	HordeCompositions.onslaught_event_military_courtyard_plague_monks = {
		{
			name = "mixed",
			weight = 1,
			breeds = {
				"skaven_plague_monk",
				{
					3,
					3
				},
				"skaven_clan_rat",
				{
					4,
					6
				}
			}
		}
	}
	
	HordeCompositions.onslaught_military_end_event_plague_monks = {
		{
			name = "military_plague_monks",
			weight = 1,
			breeds = {
				"skaven_plague_monk",
				{
					3,
					4
				}
			}
		}
	}
	

	---------------------
	--Custom compositions

	HordeCompositions.event_extra_spice_unshielded = {
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

	HordeCompositions.skaven_shields = {
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
	
	HordeCompositions.event_stormvermin_shielders = {
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
	
	HordeCompositions.event_maulers_small = {
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
	
	HordeCompositions.event_maulers_medium = {
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
	
	HordeCompositions.beastmen_trash = {
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
	
	HordeCompositions.beastmen_elite = {
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

	HordeCompositions.beastmen_mix = {
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
	
	HordeCompositions.event_beastmen_mix_small = {
		{
			name = "plain",
			weight = 10,
			breeds = {
				"beastmen_ungor",
				{
					5,
					6
				},
				"beastmen_gor",
				{
					5,
					6
				},
				"beastmen_bestigor",
				{
					1,
					1
				}
			}
		},
		{
			name = "elite",
			weight = 10,
			breeds = {
				"beastmen_ungor",
				{
					2,
					3
				},
				"beastmen_gor",
				{
					2,
					3
				},
				"beastmen_bestigor",
				{
					2,
					3
				}
			}
		},
		{
			name = "banner",
			weight = 10,
			breeds = {
				"beastmen_gor",
				{
					2,
					3
				},
				"beastmen_ungor",
				{
					2,
					3
				},
				"beastmen_bestigor",
				{
					1,
					2
				},
				"beastmen_standard_bearer",
				{
					1,
					1
				}
			}
		}
	}	

	HordeCompositions.mines_boss = {
		{
			name = "plain",
			weight = 10,
			breeds = {
				"chaos_warrior",
				{
					2,
					2
				},
				"chaos_raider",
				{
					3,
					3
				},
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

	HordeCompositions.event_chaos_small_mix_elites = {
		{
			name = "plain",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					11,
					15
				},
				"chaos_marauder",
				{
					9,
					11
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
				"chaos_marauder_with_shield",
				{
					5,
					7
				},
				"chaos_marauder",
				{
					3,
					5
				},
				"chaos_fanatic",
				{
					7,
					9
				},
				"chaos_raider",
				{
					2,
					2
				}
			}
		},
		{
			name = "leader",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					8,
					9
				},
				"chaos_marauder",
				{
					4,
					5
				},
				"chaos_raider",
				{
					1,
					1
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
				"chaos_marauder",
				{
					4,
					6
				},
				"chaos_fanatic",
				{
					9,
					11
				},
				"chaos_berzerker",
				{
					3,
					4
				},
				"chaos_marauder_with_shield",
				{
					3,
					4
				}
			}
		}
	}	
	
	HordeCompositions.onslaught_event_beastmen_medium = {
		{
			name = "trash",
			weight = 10,
			breeds = {
				"beastmen_gor",
				{
					10,
					12
				},
				"beastmen_ungor",
				{
					8,
					9
				}
			}
		},
		{
			name = "elite",
			weight = 10,
			breeds = {
				"beastmen_gor",
				{
					8,
					9
				},
				"beastmen_ungor",
				{
					6,
					7
				},
				"beastmen_bestigor",
				{
					1,
					1
				}
			}
		},
		{
			name = "banner",
			weight = 10,
			breeds = {
				"beastmen_gor",
				{
					5,
					6
				},
				"beastmen_ungor",
				{
					10,
					12
				},
				"beastmen_bestigor",
				{
					1,
					1
				},
				"beastmen_standard_bearer",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.onslaught_event_beastmen_large = {
		{
			name = "trash",
			weight = 10,
			breeds = {
				"beastmen_gor",
				{
					20,
					22
				},
				"beastmen_ungor",
				{
					16,
					18
				}
			}
		},
		{
			name = "elite",
			weight = 10,
			breeds = {
				"beastmen_gor",
				{
					16,
					18
				},
				"beastmen_ungor",
				{
					12,
					14
				},
				"beastmen_bestigor",
				{
					2,
					2
				}
			}
		},
		{
			name = "banner",
			weight = 10,
			breeds = {
				"beastmen_gor",
				{
					10,
					12
				},
				"beastmen_ungor",
				{
					23,
					25
				},
				"beastmen_bestigor",
				{
					2,
					2
				},
				"beastmen_standard_bearer",
				{
					1,
					1
				}
			}
		}
	}
				
	
	HordeCompositions.onslaught_beastmen_bestigors = {
		{
			name = "elites",
			weight = 10,
			breeds = {
				"beastmen_bestigor",
				{
					1,
					1
				}
			}
		}
	}

	---------------------
	--Custom specials & bosses

	HordeCompositions.onslaught_custom_special_denial = {
		{
			name = "gasrat",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					1,
					1
				}
			}
		},
		{
			name = "gunner",
			weight = 10,
			breeds = {
				"skaven_ratling_gunner",
				{
					1,
					1
				}
			}
		},
		{
			name = "stormer",
			weight = 10,
			breeds = {
				"chaos_vortex_sorcerer",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_specials_heavy_denial = {
		{
			name = "gasrat",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					2,
					2
				},
				"skaven_ratling_gunner",
				{
					1,
					1
				},
				"chaos_vortex_sorcerer",
				{
					1,
					1
				}
			}
		},
		{
			name = "gunner",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					1,
					1
				},
				"skaven_ratling_gunner",
				{
					2,
					2
				},
				"chaos_vortex_sorcerer",
				{
					1,
					1
				}
			}
		},
		{
			name = "stormer",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					1,
					1
				},
				"skaven_ratling_gunner",
				{
					1,
					1
				},
				"chaos_vortex_sorcerer",
				{
					2,
					2
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_special_disabler = {
		{
			name = "assassin",
			weight = 10,
			breeds = {
				"skaven_gutter_runner",
				{
					1,
					1
				}
			}
		},
		{
			name = "packmaster",
			weight = 10,
			breeds = {
				"skaven_pack_master",
				{
					1,
					1
				}
			}
		},
		{
			name = "leech",
			weight = 10,
			breeds = {
				"chaos_corruptor_sorcerer",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_specials_heavy_disabler = {
		{
			name = "assassin",
			weight = 10,
			breeds = {
				"skaven_gutter_runner",
				{
					2,
					2
				},
				"skaven_pack_master",
				{
					1,
					1
				}
			}
		},
		{
			name = "packmaster",
			weight = 10,
			breeds = {
				"skaven_pack_master",
				{
					2,
					2
				},
				"chaos_corruptor_sorcerer",
				{
					1,
					1
				}
			}
		},
		{
			name = "leech",
			weight = 10,
			breeds = {
				"chaos_corruptor_sorcerer",
				{
					2,
					2
				},
				"skaven_gutter_runner",
				{
					1,
					1
				}
			}
		},
		{
			name = "mixed",
			weight = 10,
			breeds = {
				"skaven_gutter_runner",
				{
					1,
					1
				},
				"skaven_pack_master",
				{
					1,
					1
				},
				"chaos_corruptor_sorcerer",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.onslaught_custom_special_skaven = {
		{
			name = "assassin",
			weight = 10,
			breeds = {
				"skaven_gutter_runner",
				{
					1,
					1
				}
			}
		},
		{
			name = "packmaster",
			weight = 10,
			breeds = {
				"skaven_pack_master",
				{
					1,
					1
				}
			}
		},
		{
			name = "gasrat",
			weight = 10,
			breeds = {
				"skaven_poison_wind_globadier",
				{
					1,
					1
				}
			}
		},
		{
			name = "gunner",
			weight = 10,
			breeds = {
				"skaven_ratling_gunner",
				{
					1,
					1
				}
			}
		},
		{
			name = "warpfire",
			weight = 10,
			breeds = {
				"skaven_warpfire_thrower",
				{
					1,
					1
				}
			}
		}
	}

	HordeCompositions.onslaught_custom_boss_ogre = {
		{
			name = "ogre",
			weight = 10,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_stormfiend = {
		{
			name = "fiend",
			weight = 10,
			breeds = {
				"skaven_stormfiend",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_spawn = {
		{
			name = "spawn",
			weight = 10,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_troll = {
		{
			name = "troll",
			weight = 10,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		},
	}
	
	HordeCompositions.onslaught_custom_boss_minotaur = {
		{
			name = "mino",
			weight = 10,
			breeds = {
				"beastmen_minotaur",
				{
					1,
					1
				}
			}
		},
	}

	HordeCompositions.onslaught_custom_boss_random = {
		{
			name = "ogre",
			weight = 5,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		},
		{
			name = "fiend",
			weight = 5,
			breeds = {
				"skaven_stormfiend",
				{
					1,
					1
				}
			}
		},
		{
			name = "spawn",
			weight = 5,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
		{
			name = "troll",
			weight = 5,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		}
	}
	
	HordeCompositions.onslaught_custom_boss_random = {
		{
			name = "ogre",
			weight = 5,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		},
		{
			name = "fiend",
			weight = 5,
			breeds = {
				"skaven_stormfiend",
				{
					1,
					1
				}
			}
		},
		{
			name = "spawn",
			weight = 5,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
		{
			name = "troll",
			weight = 5,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		}
	}
	
	HordeCompositions.onslaught_custom_boss_random_no_fiend = {
		{
			name = "ogre",
			weight = 5,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		},
		{
			name = "spawn",
			weight = 5,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
		{
			name = "troll",
			weight = 5,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		},
		{	
			name = "mino",
			weight = 5,
			breeds = {
				"beastmen_minotaur",
				{ 
					1,
					1
				}
			}
		}	
	}

	HordeCompositions.onslaught_custom_boss_random_no_fiend_no_ogre = {
		{
			name = "spawn",
			weight = 5,
			breeds = {
				"chaos_spawn",
				{
					1,
					1
				}
			}
		},
		{
			name = "troll",
			weight = 5,
			breeds = {
				"chaos_troll",
				{
					1,
					1
				}
			}
		},
		{	
			name = "mino",
			weight = 5,
			breeds = {
				"beastmen_minotaur",
				{ 
					1,
					1
				}
			}
		}	
	}
	
	HordeCompositions.onslaught_custom_boss_random_fiend_or_ogre = {
		{
			name = "fiend",
			weight = 5,
			breeds = {
				"skaven_stormfiend",
				{
					1,
					1
				}
			}
		},
		{
			name = "ogre",
			weight = 5,
			breeds = {
				"skaven_rat_ogre",
				{
					1,
					1
				}
			}
		}
	}	
	
	HordeCompositions.onslaught_event_skaven_elite_adds = {
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
	
	HordeCompositions.onslaught_event_skaven_elite_adds_small = {
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
	
	HordeCompositions.onslaught_event_chaos_elite_adds = {
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
	
	HordeCompositions.onslaught_event_chaos_elite_adds_small = {
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

	HordeCompositions.onslaught_event_chaos_adds_small = {
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
	
	HordeCompositions.onslaught_chaos_shield_adds = {
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
		
	---------------------
	--Righteous Stand

	TerrorEventBlueprints.military.military_courtyard_event_01 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "courtyard_hidden",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "onslaught_courtyard_roof_middle",
			composition_type = "onslaught_custom_boss_random_no_fiend"
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 15 and count_event_breed("chaos_fanatic") < 18
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 16 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 25
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard_hidden",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard_hidden",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "courtyard_hidden",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12 and count_event_breed("chaos_fanatic") < 16
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "courtyard",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 16 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_military_elevator_left",
			breed_name = "chaos_warrior",
			optional_data = {
				far_off_despawn_immunity = true
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_military_elevator_right",
			breed_name = "chaos_warrior",
			optional_data = {
				far_off_despawn_immunity = true
			}
		},
		{
			"delay",
			duration = 3
		},	
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_done"
		}
	}
	
	TerrorEventBlueprints.military.military_courtyard_event_02 = TerrorEventBlueprints.military.military_courtyard_event_01

	TerrorEventBlueprints.military.military_courtyard_event_specials_01 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard_hidden",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "courtyard",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_specials_02 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_storm_vermin_medium"
		},	
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_specials_03 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_specials_04 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_left",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}

	TerrorEventBlueprints.military.military_courtyard_event_specials_05 = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_courtyard_roof_right",
			composition_type = "onslaught_custom_specials_heavy_disabler"
		},		
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "military_courtyard_event_specials_done"
		}
	}
	
	--01	Warriors & Plague Monks
	--02	Berzerkers & Stormvermins
	--03	Mixed Shielders
	--04	Extra Denial
	--05	Extra Disablers
	
	HordeCompositions.onslaught_military_mauler_assault = {
		{
			name = "plain",
			weight = 1,
			breeds = {
				"chaos_raider",
				15
			}
		}
	}
	
	HordeCompositions.military_end_event_chaos_01 = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_raider",
				{
					6,
					7,
				},
				"chaos_marauder",
				{
					10,
					11
				},
				"chaos_fanatic",
				{
					10,
					11
				}
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"chaos_raider",
				{
					6,
					7,
				},
				"chaos_marauder_with_shield",
				{
					4,
					5
				},
				"chaos_marauder",
				{
					4,
					5
				},
				"chaos_fanatic",
				{
					10,
					11
				}
			}
		}
	}
	
	HordeCompositions.military_end_event_berzerkers = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_berzerker",
				10,
				"chaos_marauder_with_shield",
				12
			}
		}
	}
	
	TerrorEventBlueprints.military.military_temple_guards = {
		{
			"disable_kick"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards02",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards05",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards06",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards07",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_guards09",
			breed_name = "chaos_warrior"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_temple_guard_assault",
			composition_type = "onslaught_military_mauler_assault"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_start = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"disable_kick"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "end_event_start",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "end_event_start",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 13
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_random_no_fiend_no_ogre"
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 12 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_start_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_01_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_01_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_01_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_01_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_02_left = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_02_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_02_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_02_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_02_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_02_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_02_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_02_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_03_left = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_military_finale_top_left",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_military_finale_top_right",
			composition_type = "onslaught_chaos_warriors_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_03_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_03_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_military_finale_top_right",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_military_finale_top_left",
			composition_type = "onslaught_chaos_warriors_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return(count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_03_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_03_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_middle",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
				{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_military_finale_top_right",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_military_finale_top_left",
			composition_type = "onslaught_chaos_warriors_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_03_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_03_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
				{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_military_finale_top_right",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_military_finale_top_left",
			composition_type = "onslaught_chaos_warriors_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 18 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_storm_vermin_with_shield") < 5 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_03_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_04_left = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_random_fiend_or_ogre",
			optional_data = {
				max_health_modifier = 0.5
				}
		},
		{
			"delay",
			duration = 10
		},
		{
			"delay",
			duration = 4
		},	
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_04_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_04_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_random_fiend_or_ogre",
			optional_data = {
				max_health_modifier = 0.5
				}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_04_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_04_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_middle",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_random_fiend_or_ogre",
			optional_data = {
				max_health_modifier = 0.5
				}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_04_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_04_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_boss_random_fiend_or_ogre",
			optional_data = {
				max_health_modifier = 0.5
				}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_clan_rat_with_shield") < 9 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_marauder_with_shield") < 6 and count_event_breed("chaos_fanatic") < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_plague_monk") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_04_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_05_left = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "end_event_left",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_05_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_05_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "end_event_right",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_05_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_05_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "end_event_middle",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_05_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_05_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "end_event_back",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_military_end_event_plague_monks"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_05_done"
		}
	}

	TerrorEventBlueprints.military.military_end_event_survival_06_right = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_right_hidden",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_right_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_06_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_06_middle = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_middle",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_left_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_06_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_survival_06_back = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_back_hidden",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_back_hidden",
			composition_type = "military_end_event_berzerkers"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_06_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_specials_01 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_specials_02 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_specials_03 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_specials_04 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_specials_05 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.military.military_end_event_specials_06 = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"event_horde",
			spawner_id = "end_event_left_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "end_event_right_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "end_event_back_hidden",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_warpfire_thrower") and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("chaos_vortex_sorcerer") < 1 and count_event_breed("chaos_corruptor_sorcerer") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_specials_done"
		}
	}
	
	--01 2x denial 1x skaven
	--02 2x denial 1x disabler
	--03 2x disabler 1x denial
	--04 2x disabler 1x skaven
	--05 Mass denial
	--06 3x skaven
	
	TerrorEventBlueprints.military.military_end_event_survival_escape = {
		{
			"set_master_event_running",
			name = "military_end_event_survival"
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event_start",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 12
			end
		},
		{
			"flow_event",
			flow_event_name = "military_end_event_survival_escape_done"
		}
	}
	
	---------------------
	--Convocation of Decay
	
	TerrorEventBlueprints.catacombs.catacombs_puzzle_event_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_puzzle_event_loop"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and count_event_breed("skaven_slave") < 14 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 4
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"flow_event",
			flow_event_name = "catacombs_puzzle_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_puzzle_event_a = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_puzzle_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"flow_event",
			flow_event_name = "catacombs_puzzle_event_a_done"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_puzzle_event_b = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_puzzle_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "event_maulers_medium"
		},
		{
			"flow_event",
			flow_event_name = "catacombs_puzzle_event_b_done"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_puzzle_event_c = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_puzzle_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "enemy_door",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"flow_event",
			flow_event_name = "catacombs_puzzle_event_c_done"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_special_event_a = {
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_storm_vermin_shields_small"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_special_event_b = {
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_02",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "puzzle_event_loop",
			composition_type = "onslaught_plague_monks_medium"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_special_event_c = {
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_01",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_02",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			spawner_id = "puzzle_special_03",
			breed_name = "skaven_warpfire_thrower"
		}		
	}
	
	--a shields & warriors 
	--b maulers
	--c berzerkers

	--a special shielded storm
	--b special monk
	--c special mass warpfire
	
	--Because otherwise triple boss event is triggered early by respawning player..
	local function living_player_has_dropped()
		for i, player in pairs(Managers.player:players()) do
			if player.player_unit then
				local status_extension = ScriptUnit.has_extension(player.player_unit, "status_system")
				if status_extension and not status_extension.is_ready_for_assisted_respawn(status_extension) then
					if POSITION_LOOKUP[player.player_unit].z < -15 then
						return true
					end
				end
			end
		end
		return false
	end
	
	TerrorEventBlueprints.catacombs.catacombs_load_sorcerers = {
		{
			"force_load_breed_package",
			breed_name = "chaos_dummy_sorcerer"
		},
		{
			"continue_when",
			condition = function (t)
				return living_player_has_dropped()
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_pool_boss_1",
			breed_name = "chaos_spawn",
			breed_name = "beastmen_minotaur"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_pool_boss_2",
			breed_name = "chaos_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_pool_boss_3",
			breed_name = {
				"skaven_rat_ogre",
				"skaven_stormfiend"
			}
		}	
	}
	
	TerrorEventBlueprints.catacombs.catacombs_end_event_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 6,
			spawner_id = "end_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_warriors"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 6 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_01_done"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_end_event_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
			end
		},		
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 6,
			spawner_id = "end_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 6,
			spawner_id = "end_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 10
		},
		
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_02_done"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_end_event_specials_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event_specials"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_end_event_specials_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event_specials"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.catacombs.catacombs_end_event_specials_03 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "catacombs_end_event_specials"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "catacombs_end_event_specials_done"
		}
	}
	
	---------------------
	--Hunger in the Dark
	
	LevelSettings.mines.boss_events.max_events_of_this_kind.event_boss = 2
	
	TerrorEventBlueprints.mines.mines_end_event_start = {
		{
			"disable_kick"
		},
		{
			"enable_bots_in_carry_event"
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_first_wave = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_mines_extra_troll_1",
			breed_name = "chaos_troll"
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_first_wave_done"
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 15 and count_event_breed("chaos_berzerker") < 8
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_large"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_mines_extra_troll_3",
			breed_name = "chaos_troll"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_small"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_maulers_medium"
		},	
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("chaos_raider") < 6
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},	
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 13 and count_event_breed("chaos_fanatic") < 15 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 8
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 2
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 2
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 5 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_loop_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_maulers_medium"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and count_event_breed("chaos_fanatic") < 14 and count_event_breed("chaos_raider") < 7 and count_event_breed("chaos_berzerker") < 8
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "event_maulers_small"
		},	
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12 and count_event_breed("chaos_fanatic") < 14 and count_event_breed("chaos_raider") < 7 and count_event_breed("chaos_berzerker") < 8
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "end_event",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_chaos",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 5 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_loop_02_done"
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_specials_01 = {
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") + count_event_breed("chaos_vortex_sorcerer")) < 3 and (count_event_breed("skaven_gutter_runner") + count_event_breed("skaven_pack_master") + count_event_breed("chaos_corruptor_sorcerer")) < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_specials_02 = {
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") + count_event_breed("chaos_vortex_sorcerer")) < 3 and (count_event_breed("skaven_gutter_runner") + count_event_breed("skaven_pack_master") + count_event_breed("chaos_corruptor_sorcerer")) < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_specials_03 = {
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") + count_event_breed("chaos_vortex_sorcerer")) < 3 and (count_event_breed("skaven_gutter_runner") + count_event_breed("skaven_pack_master") + count_event_breed("chaos_corruptor_sorcerer")) < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_stop = {
		{
			"control_specials",
			enable = true
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_trolls = {
		{
			"force_load_breed_package",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_01",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_02",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_03",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_04",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_05",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_06",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_07",
			breed_name = "chaos_dummy_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_08",
			breed_name = "chaos_dummy_troll"
		},
		{
			"stop_event",
			stop_event_name = "mines_end_event_loop"
		},
		{
			"stop_event",
			stop_event_name = "mines_end_event_loop_02"
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_trolls_done"
		}
	}
	
	TerrorEventBlueprints.mines.mines_troll_boss = {
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_bell_boss",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_mines_horde_front",
			composition_type = "mines_boss"
		},			
		{
			"spawn_at_raw",
			spawner_id = "troll_boss",
			breed_name = "chaos_troll"
		},
		{
			"set_time_challenge",
			time_challenge_name = "mines_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "mines_speed_event_cata"
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return count_event_breed("chaos_troll") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_troll_boss_done"
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "mines_speed_event"
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "mines_speed_event_cata"
		}
	}
	
	TerrorEventBlueprints.mines.mines_end_event_escape = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "end_event"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "escape",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "escape",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 9 and count_event_breed("chaos_berzerker") < 5
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "escape",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 12 and count_event_breed("skaven_slave") < 15 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "mines_end_event_escape_done"
		}
	}
	
	---------------------
	--Halescourge

	TerrorEventBlueprints.ground_zero.gz_elevator_guards_a = {
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_1",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_2",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_3",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_4",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_5",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_a_6",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_1",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_2",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_3",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_4",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_5",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_6",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_7",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "ele_guard_b_8",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_1",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_2",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_3",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_4",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_5",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_ele_guard_c_6",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"delay",
			duration = 5
		}
	}

	local ACTIONS = BreedActions.chaos_exalted_sorcerer
	local restore_bubbledude = {
		"BTSpawnAllies",
		enter_hook = "sorcerer_spawn_horde",
		name = "sorcerer_spawn_horde",
		action_data = ACTIONS.spawn_allies_horde
	}

	table.insert(BreedBehaviors.chaos_exalted_sorcerer[7], 2, restore_bubbledude)

	TerrorEventBlueprints.ground_zero.gz_chaos_boss = {
		{
			"set_master_event_running",
			name = "gz_chaos_boss"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"spawn_at_raw",
			spawner_id = "warcamp_chaos_boss",
			breed_name = "chaos_exalted_sorcerer"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_sorcerer") == 1
			end
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_sorcerer") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "gz_chaos_boss_dead"
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	HordeCompositions.sorcerer_boss_event_defensive = {
		{
			name = "wave_a",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					15,
					20
				},
				"chaos_marauder_with_shield",
				{
					9,
					12
				},
				"chaos_raider",
				{
					2,
					2
				},
				"chaos_berzerker",
				{
					4,
					5
				},	
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_b",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					9,
					11
				},
				"chaos_marauder",
				{
					12,
					15
				},
				"chaos_marauder_with_shield",
				{
					2,
					3
				},
				"chaos_warrior",
				{
					1,
					1
				},	
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_c",
			weight = 5,
			breeds = {
				"chaos_marauder",
				{
					12,
					15
				},
				"chaos_warrior",
				{
					2,
					3
				},
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_d",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					12,
					15
				},
				"chaos_raider",
				{
					3,
					4
				},
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_e",
			weight = 5,
			breeds = {
				"chaos_marauder",
				{
					6,
					9
				},
				"chaos_berzerker",
				{
					6,
					8
				},
				"chaos_plague_sorcerer",
				2
			}
		},
		{
			name = "wave_f",
			weight = 4,
			breeds = {
				"beastmen_gor",
				{
					6,
					8
				},
				"beastmen_ungor",
				{
					8,
					10
				},
				"beastmen_bestigor",
				{
					2,
					3
				},
				"beastmen_standard_bearer",
				2
			}
		},			
		start_time = 0
	}

	HordeCompositions.sorcerer_extra_spawn = HordeCompositions.sorcerer_boss_event_defensive

	---------------------
	--Athel Yenlui

	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_time_challenge",
			time_challenge_name = "elven_ruins_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "elven_ruins_speed_event_cata"
		},
		{
			"set_master_event_running",
			name = "ruins_end_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"disable_kick"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_small"
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = {
				2,
				3
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		}
	}

	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event_flush = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "elven_ruins_speed_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "elven_ruins_toptier",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = {
				1,
				2
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_ogre"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_stormfiend"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				3,
				4
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_custom_boss_ogre"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "elven_ruins_toptier",
			composition_type = "onslaught_storm_vermin_medium"
		}
	}

	TerrorEventBlueprints.elven_ruins.elven_ruins_end_event_device_fiddlers = {
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_hordes",
			enable = false
		},	
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_1",
			breed_name = "skaven_storm_vermin_warlord",
			optional_data = { 
				max_health_modifier = 1/4
			}	
		},
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_2",
			breed_name = "skaven_storm_vermin_warlord",
			optional_data = { 
				max_health_modifier = 1/4
			}	
		},
		{
			"spawn_at_raw",
			spawner_id = "device_skaven_3",
			breed_name = "skaven_storm_vermin_warlord",
			optional_data = { 
				max_health_modifier = 1/4
			}	
		},
		{
			"delay",
			duration = 5
		},	
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 15,
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "onslaught_event_skaven_elite_adds_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "elven_ruins_bottomtier",
			composition_type = "event_extra_spice_small"
		}	
	}

	---------------------
	--Screaming Bell

	HordeCompositions.event_bell_monks = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"skaven_plague_monk",
				{
					5,
					6
				}
			}
		}
		
	}	
	
	HordeCompositions.event_bell_warriors = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"chaos_warrior",
				10
			}
		}	
	}

	TerrorEventBlueprints.bell.canyon_bell_event = {
		{
			"set_master_event_running",
			name = "canyon_bell_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "bell_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "bell_speed_event_cata"
		},
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_monks"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_clan_rat_with_shield") < 8 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "canyon_bell_event_done"
		}
	}

	TerrorEventBlueprints.bell.canyon_ogre_boss = {
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"spawn_at_raw",
			spawner_id = "canyon_ogre_boss",
			breed_name = "skaven_rat_ogre"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_second_ogre",
			breed_name = {
				"beastmen_minotaur",
				"chaos_spawn",
				"chaos_troll"
			}	
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_bell_boss_exit",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_bell_boss_exit",
			composition_type = "onslaught_event_skaven_elite_adds"
		},			
		{	
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_bell_warriors"
		}	
	}

	TerrorEventBlueprints.bell.canyon_escape_event = {
		{
			"set_master_event_running",
			name = "canyon_escape_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"continue_when",
			duration = 5,
			condition = function ()
			if (count_breed("skaven_rat_ogre") + count_breed("chaos_troll") + count_breed("chaos_spawn") + count_breed("beastmen_minotaur")) > 0 then
				 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_gutter_runner, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.skaven_pack_master, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
				 Managers.state.conflict:spawn_one(Breeds.chaos_corruptor_sorcerer, nil, nil)
				 return true
			end
				return count_event_breed("skaven_slave") < 200
			end
		},	
		{
			"event_horde",
			spawner_id = "canyon_escape_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_hordes",
			enable = true
		},
		{
			"delay",
			duration = 25
		},
		{
			"continue_when",
			condition = function ()
			if (count_breed("skaven_rat_ogre") + count_breed("chaos_troll") + count_breed("chaos_spawn") + count_breed("beastmen_minotaur")) > 0 then
				Managers.state.conflict:level_flow_event("canyon_escape_event_done")
				return true
			end	
				return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_clan_rat_with_shield") < 8 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 3
			end
		}
	}

	---------------------
	--Fort Brachsenbrücke

	HordeCompositions.event_fort_pestilen = {
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"skaven_slave",
				{
					37,
					39
				},
				"skaven_plague_monk",
				{
					10,
					13
				}
			}
		}
	}
	
	HordeCompositions.event_fort_savagery = {
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"chaos_fanatic",
				{
					29,
					33
				},
				"chaos_berzerker",
				{
					11,
					13
				}
			}
		}
	}

	TerrorEventBlueprints.fort.fort_pacing_off = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		}
	}

	TerrorEventBlueprints.fort.fort_terror_event_climb = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_terror_event_climb"
		},
		{
			"event_horde",
			spawner_id = "terror_event_climb",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_storm_vermin_commander") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_terror_event_climb_done"
		}
	}

	TerrorEventBlueprints.fort.fort_terror_event_inner_yard_skaven = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_terror_event_inner_yard"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_clan_rat") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_storm_vermin_commander") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_terror_event_inner_yard_done"
		}
	}
	
	TerrorEventBlueprints.fort.fort_terror_event_inner_yard_chaos = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_terror_event_inner_yard"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 8 and count_event_breed("chaos_raider") < 2 and count_event_breed("chaos_marauder") < 5 and count_event_breed("chaos_marauder_with_shield") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_terror_event_inner_yard_done"
		}
	}

	TerrorEventBlueprints.fort.fort_horde_gate = {
		{
			"set_master_event_running",
			name = "fort_horde_gate"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 4
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_fort_tower_right",
			breed_name = "skaven_rat_ogre",
			optional_data = { 
				max_health_modifier = 1/3
			}	
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_fort_tower_left",
			breed_name = "chaos_spawn",
			optional_data = { 
				max_health_modifier = 1/3
			}	
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_fort_tower_cannon",
			breed_name = {
				"chaos_troll",
				"beastmen_minotaur"
			},	
			optional_data = { 
				max_health_modifier = 1/3
			}	
		},	
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 4 and count_event_breed("chaos_berzerker") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_gate_done"
		}
	}

	-- TerrorEventBlueprints.fort.fort_horde_cannon = {
		-- {
			-- "set_master_event_running",
			-- name = "fort_horde_cannon"
		-- },
		-- {
			-- "set_freeze_condition",
			-- max_active_enemies = 100
		-- },
		-- {
			-- "control_pacing",
			-- enable = false
		-- },
		-- {
			-- "control_specials",
			-- enable = false
		-- },
		-- {
			-- "event_horde",
			-- spawner_id = "fort_horde_cannon",
			-- composition_type = "event_fort_pestilen"
		-- },
		-- {
			-- "delay",
			-- duration = 5
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "siege_1",
			-- breed_name = "skaven_warpfire_thrower"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "siege_2",
			-- breed_name = "skaven_poison_wind_globadier"
		-- },
		-- {
			-- "delay",
			-- duration = {
				-- 5,
				-- 9
			-- }
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "siege_4",
			-- breed_name = "skaven_poison_wind_globadier"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "siege_6",
			-- breed_name = "skaven_ratling_gunner"
		-- },
		-- {
			-- "continue_when",
			-- condition = function (t)
				-- return count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_plague_monk") < 6 and count_event_breed("skaven_poison_wind_globadier") < 4 and count_event_breed("skaven_warpfire_thrower") < 4 and count_event_breed("skaven_ratling_gunner") < 4
			-- end
		-- },
		-- {
			-- "delay",
			-- duration = 7
		-- },
		-- {
			-- "flow_event",
			-- flow_event_name = "fort_horde_cannon_done"
		-- }
	-- }
	
	TerrorEventBlueprints.fort.fort_horde_cannon_skaven = {
		{
			"set_master_event_running",
			name = "fort_horde_cannon"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "onslaught_fort_event_tower_mid",
			composition_type = "onslaught_event_skaven_elite_adds"
		},	
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "event_fort_pestilen"
		},
		{
			"event_horde",
			spawner_id = "onslaught_fort_event_tower_drop",
			composition_type = "onslaught_event_skaven_elite_adds"
		},	
		{
			"spawn_at_raw",
			spawner_id = "manual_special_spawners",
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_pack_master",
				"skaven_gutter_runner",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_1",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_2",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = {
				5,
				9
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_4",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_6",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "fort_horde_cannon",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 20
		},
		{
			"spawn_at_raw",
			spawner_id = "manual_special_spawners",
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_pack_master",
				"skaven_gutter_runner",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			},
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_slave") < 25 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 6 and count_event_breed("skaven_poison_wind_globadier") < 4 and count_event_breed("skaven_warpfire_thrower") < 4 and count_event_breed("skaven_ratling_gunner") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_cannon_done"
		}
	}
	
	TerrorEventBlueprints.fort.fort_horde_cannon_chaos = {
		{
			"set_master_event_running",
			name = "fort_horde_cannon"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "onslaught_fort_event_tower_drop",
			composition_type = "onslaught_event_chaos_elite_adds"
		},	
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "event_fort_savagery"
		},
		{
			"event_horde",
			spawner_id = "onslaught_fort_event_tower_mid",
			composition_type = "onslaught_event_chaos_adds_small"
		},	
		{
			"spawn_at_raw",
			spawner_id = "manual_special_spawners",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer",
				"skaven_gutter_runner",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_1",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_2",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = {
				5,
				9
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_4",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_6",
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "fort_horde_cannon",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 20
		},
		{
			"spawn_at_raw",
			spawner_id = "manual_special_spawners",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer",
				"skaven_gutter_runner",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("chaos_fanatic") < 20 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("skaven_poison_wind_globadier") < 4 and count_event_breed("skaven_warpfire_thrower") < 4 and count_event_breed("chaos_vortex_sorcerer") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_cannon_done"
		}
	}

	TerrorEventBlueprints.fort.fort_siegers = {
		{
			"set_master_event_running",
			name = "fort_siegers"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_1",
			breed_name = "skaven_stormfiend"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_2",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_3",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_4",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_5",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_6",
			breed_name = "chaos_marauder"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 2 and count_event_breed("chaos_raider") < 2 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2 and count_event_breed("skaven_stormfiend") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "siege_broken"
		}
	}

	---------------------
	--Into the Nest
	
	TerrorEventBlueprints.skaven_stronghold.stronghold_pacing_off = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	
	TerrorEventBlueprints.skaven_stronghold.stronghold_pacing_on = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	
	TerrorEventBlueprints.skaven_stronghold.stronghold_horde_water_wheels = {
		{
			"set_master_event_running",
			name = "stronghold_horde_water_wheels"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_pacing",
			enable = false
		},	
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "stronghold_horde_water_wheels",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_stronghold_boss_1",
			breed_name = "skaven_rat_ogre",
			optional_data = { 
				max_health_modifier = 0.5
			}	
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_stronghold_water_wheels_event",
			composition_type = "stronghold_water_wheel"
		},	
		{
			"spawn_at_raw",
			spawner_id = "onslaught_stronghold_boss_2",
			breed_name = "skaven_rat_ogre",
			optional_data = { 
				max_health_modifier = 0.5
			}	
		},			
		{
			"control_specials",
			enable = true
		},
		{
			"delay",
			duration = 10
		},	
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_slave") < 6 and count_event_breed("skaven_clan_rat_with_shield") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_storm_vermin") < 2 and count_breed("skaven_rat_ogre") < 2
			end
		},
		{
			"control_pacing",
			enable = true
		},	
		{
			"flow_event",
			flow_event_name = "stronghold_horde_water_wheels_done"
		}
	}
	
	TerrorEventBlueprints.skaven_stronghold.stronghold_boss = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"disable_kick"
		},
		{
			"set_master_event_running",
			name = "stronghold_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "stronghold_boss",
			breed_name = "skaven_storm_vermin_warlord",
			optional_data = { 
				max_health_modifier = 1.5
			}	
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_warlord") == 1
			end
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_warlord") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "stronghold_boss_killed"
		},
		{
			"delay",
			duration = 2
		},

		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}
	
	HordeCompositions.stronghold_water_wheel = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					8,
					10
				},
				"skaven_clan_rat",
				{
					7,
					19
				},
				"skaven_clan_rat_with_shield",
				{
					10,
					12
				},
				"skaven_plague_monk",
				{
					3,
					4
				},
				"skaven_storm_vermin",
				5,
			}
		}
	}	
	
	HordeCompositions.stronghold_boss_event_defensive = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					15,
					17
				},
				"skaven_clan_rat",
				{
					10,
					14
				},
				"skaven_clan_rat_with_shield",
				{
					12,
					17
				},
				"skaven_plague_monk",
				{
					3,
					4
				},
				"skaven_pack_master",
				{
					2,
					2
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
					14,
					16
				},
				"skaven_clan_rat_with_shield",
				{
					17,
					20
				},
				"skaven_plague_monk",
				{
					5,
					6
				},
				"skaven_pack_master",
				{
					2,
					2
				},
				"skaven_storm_vermin_with_shield",
				2,
			}
		}
	}
	
	HordeCompositions.stronghold_boss_trickle = {
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
					2,
					3
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					5
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
					2,
					3
				},
				"skaven_clan_rat_with_shield",
				{
					4,
					5
				},
				"skaven_storm_vermin_commander",
				1
			}
		}
	}
	
	HordeCompositions.stronghold_boss_initial_wave = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_storm_vermin",
				8,
				"skaven_plague_monk",
				4,
				"skaven_clan_rat",
				{
					6,
					8
				}
			}
		}
	}
	
	BreedActions.skaven_storm_vermin_warlord.spawn_allies.difficulty_spawn_list = {
			easy = {
				"skaven_storm_vermin"
			},
			normal = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			hard = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			survival_hard = {
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			harder = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			survival_harder = {
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			hardest = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			},
			survival_hardest = {
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin",
				"skaven_storm_vermin"
			}
	}

	BreedActions.skaven_storm_vermin_warlord.spawn_sequence.considerations.time_since_last.max_value = 800
	
	--See hooks for boss behaviour changes.

	---------------------
	--Against the Grain

	
		
	
	TerrorEventBlueprints.farmlands.farmlands_rat_ogre = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "skaven_rat_ogre"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_left_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right",
			breed_name = "skaven_pack_master"
		},		
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"skaven_stormfiend",
				"chaos_troll",
				"beastmen_minotaur",
				"chaos_spawn"
			}		
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("skaven_stormfiend") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1 and count_event_breed("beastmen_minotaur") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}
	
	TerrorEventBlueprints.farmlands.farmlands_storm_fiend = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "skaven_stormfiend"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_left_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right",
			breed_name = "skaven_pack_master"
		},		
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"chaos_troll",
				"beastmen_minotaur",
				"chaos_spawn"
			}		
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("skaven_stormfiend") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1 and count_event_breed("beastmen_minotaur") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}
	
	TerrorEventBlueprints.farmlands.farmlands_chaos_troll = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "chaos_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_left_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right",
			breed_name = "skaven_pack_master"
		},		
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_troll") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"skaven_stormfiend",
				"chaos_troll",
				"beastmen_minotaur",
				"chaos_spawn"
			}		
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("skaven_stormfiend") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1 and count_event_breed("beastmen_minotaur") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}
	
	TerrorEventBlueprints.farmlands.farmlands_beastmen_minotaur = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "beastmen_minotaur"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_left_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right",
			breed_name = "skaven_pack_master"
		},		
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("beastmen_minotaur") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"skaven_stormfiend",
				"chaos_troll",
				"beastmen_minotaur",
				"chaos_spawn"
			}		
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("skaven_stormfiend") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1 and count_event_breed("beastmen_minotaur") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}
	
	TerrorEventBlueprints.farmlands.farmlands_chaos_spawn = {
		{
			"set_master_event_running",
			name = "farmlands_boss_barn"
		},
		{
			"spawn_at_raw",
			spawner_id = "farmlands_rat_ogre",
			breed_name = "chaos_spawn"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_left_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right_hay",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn_right",
			breed_name = "skaven_pack_master"
		},		
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_spawn") == 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_spawned"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_extra_boss",
			breed_name = {
				"skaven_rat_ogre",
				"skaven_stormfiend",
				"chaos_troll",
				"beastmen_minotaur",
				"chaos_spawn"
			}		
		},
		{
			"delay",
			duration = 1
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("skaven_stormfiend") < 1 and count_event_breed("chaos_troll") < 1 and count_event_breed("chaos_spawn") < 1 and count_event_breed("beastmen_minotaur") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "farmlands_barn_boss_dead"
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_spawn_guards = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"spawn_at_raw",
			spawner_id = "wall_guard_01",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "wall_guard_02",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "wall_guard_03",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_wall_guard_extra_1",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "windmill_guard",
			breed_name = "chaos_warrior"
		}
	}
			

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_01"
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "square_front",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_bridge_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 10 and count_event_breed("skaven_slave") < 40
			end
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20
			end
		},
		{
			"event_horde",
			spawner_id = "hay_barn_back",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_back",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_hay_barn_bridge_guards = {
		{
			"spawn_at_raw",
			spawner_id = "hay_barn_bridge_guards",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_1",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_2",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_3",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_4",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_hay_barn_bridge_guards_extra_5",
			breed_name = "chaos_berzerker"
		},
		{
			"event_horde",
			spawner_id = "onslaught_gate_guards_cages",
			composition_type = "onslaught_event_chaos_elite_adds"
		},	
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"set_time_challenge",
			time_challenge_name = "farmlands_speed_event"
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_hay_barn = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"disable_kick"
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_hay_barn"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "hay_barn_guards",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "hay_barn_manual_spawns",
			breed_name = "chaos_marauder"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_cellar_invis",
			composition_type = "event_small_chaos"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn1_disabler",
			breed_name = "skaven_pack_master"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_gutter_runner"
		},	
		{
			"event_horde",
			spawner_id = "hay_barn_cellar_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_cellar_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "hay_barn_front_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "hay_barn_front_invis",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "hay_barn_interior",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 15 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 7 and count_event_breed("skaven_storm_vermin_with_shield") < 5
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_upper_square = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_upper_square"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "square_center",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_boss_outstairs",
			breed_name = {
				"skaven_rat_ogre",
				"chaos_spawn",
				"chaos_troll"
			},
			optional_data = {
				max_health_modifier = 0.5
			}
		},	
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "onslaught_hay_barn1_behind",
			composition_type = "onslaught_event_skaven_elite_adds"
		},	
		{
			"event_horde",
			spawner_id = "onslaught_hay_barn1_behind",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 15 and count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20
			end
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "onslaught_hay_barn1_behind",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "onslaught_hay_barn1_behind",
			composition_type = "onslaught_event_chaos_elite_adds"
		},	
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20 and count_event_breed("chaos_marauder") < 15
			end
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "event_small"
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_creek",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_sawmill_door = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_sawmill_door"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_farmlands_boss_barn2",
			breed_name = {
				"skaven_rat_ogre",
				"chaos_spawn",
				"chaos_troll"
			},
			optional_data = {
				max_health_modifier = 0.5
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn2_disabler1",
			breed_name = "skaven_pack_master"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_barn2_disabler2",
			breed_name = "skaven_pack_master"
		},	
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "onslaught_hay_barn1_behind",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_hay_barn1_behind",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_prisoner_event_sawmill = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_master_event_running",
			name = "farmlands_prisoner_event_sawmill"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior",
			composition_type = "event_large"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_interior_invis",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20
			end
		},
		{
			"event_horde",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 15 and count_event_breed("skaven_clan_rat_with_shield") < 15 and count_event_breed("skaven_slave") < 20
			end
		}
	}

	TerrorEventBlueprints.farmlands.farmlands_gate_open_event = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "farmlands_speed_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "event_large"
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "sawmill_yard",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	---------------------
	--Empire in Flames

	TerrorEventBlueprints.ussingen.ussingen_gate_guards = {
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_1",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_2",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_spawner_3",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			spawner_id = "gate_spawner_1",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			spawner_id = "gate_spawner_2",
			breed_name = "chaos_warrior"
		}
	}
	
	TerrorEventBlueprints.ussingen.ussingen_payload_event_01 = {
		{
			"control_pacing",
			enable = false
		},
		{
			"disable_kick"
		},
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "ussingen_payload_event"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cart_guard_1",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cart_guard_2",
			breed_name = "chaos_warrior"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "onslaught_chaos_warriors_small"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "ussingen_payload_start",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_start",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 4 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 11 and count_event_breed("chaos_fanatic") < 16 and count_event_breed("chaos_warrior") < 4
			end
		}
	}

	TerrorEventBlueprints.ussingen.ussingen_payload_event_02 = {
		{
			"control_pacing",
			enable = false
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "ussingen_payload_event"
		},
		{
			"delay",
			duration = 4
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_square",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_square",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "ussingen_payload_transit",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"delay",
			duration = 12
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}
	
	TerrorEventBlueprints.ussingen.ussingen_gate_open_event = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "ussingen_gate_open",
			composition_type = "event_ussingen_gate_group"
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			spawner_id = "ussingen_mansion_garden_payload",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "ussingen_mansion_garden_payload",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 8
		},
		{
			"control_specials",
			enable = true
		}
	}
	
	HordeCompositions.event_ussingen_gate_group = {
		{
			name = "storm_slaves",
			weight = 1,
			breeds = {
				"skaven_slave",
				57,
				"skaven_clan_rat_with_shield",
				14,
				"skaven_storm_vermin_commander",
				{
					7,
					8
				}
			}
		}
	}
	
	TerrorEventBlueprints.ussingen.ussingen_escape = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "ussingen_escape"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_escape_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_escape_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_escape_event",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "ussingen_escape_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_raider") < 6 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "ussingen_escape_restart"
		}
	}

	---------------------
	--Festering Ground

	--TerrorEventBlueprints.nurgle.nurgle_end_event_loop = {
		--"nurgle_end_event_loop_01",
		--1,
		--"nurgle_end_event_loop_02",
	--	1,
		--"nurgle_end_event_loop_03",
		--1,
		--"nurgle_end_event_loop_04",
		--1,
		--"nurgle_end_event_loop_05",
		--1,
		--"nurgle_end_event_loop_06",
		--1,
		--"nurgle_end_event_loop_07",
		--1
	--}
	
	
		--nurgle_end_event_specials = {
		--	"nurgle_end_event_specials_01",
		--	1,
		--	"nurgle_end_event_specials_02",
		--	1,
		--	"nurgle_end_event_specials_03",
		--	1
		--}
		
	TerrorEventBlueprints.nurgle.nurgle_end_event01 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 10) and count_event_breed("chaos_raider") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("chaos_berzerker") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 10) and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_berzerker") < 5
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_monk",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_monk",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 5 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event01_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_specials_01 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_specials_02 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_specials_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_specials_03 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier",
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_ratling_gunner") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_pack_master") + count_event_breed("skaven_gutter_runner") + count_event_breed("chaos_corruptor_sorcerer") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_specials_done"
		}
	}
	
	--01 2 Denial 1 random
	--02 1 Denial 1 disabler 1 random
	--03 1 Denial 2 random
	
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_escape_02 = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event02",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_escape_02_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_01 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_event_skaven_elite_adds"
		},	
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_beastmen_event",
			composition_type = "onslaught_event_skaven_elite_adds"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 4 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_02 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_maulers_medium"
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "onslaught_beastmen_event",
			composition_type = "onslaught_event_chaos_elite_adds"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "event_chaos_extra_spice_small"
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 4 and (count_event_breed("chaos_raider") + count_event_breed("chaos_warrior")) < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_03 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event",
			composition_type = "event_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_nurgle_boss_loop",
			breed_name = {
				"chaos_spawn",
				"skaven_rat_ogre"
			},	
			optional_data = {
				max_health_modifier = 1/4
			}
		},			
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_event_chaos_elite_adds"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_slave") < 4 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_04 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "chaos_berzerkers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_beastmen_event",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "onslaught_beastmen_event",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"delay",
			duration = 3
		},	
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("chaos_berzerker") < 2 and count_event_breed("chaos_marauder") < 2 and (count_event_breed("chaos_raider") + count_event_breed("chaos_warrior")) < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_05 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "nurgle_end_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "nurgle_end_event",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 3
		},	
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_slave") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_loop_06 = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_beastmen_event",
			composition_type = "beastmen_trash"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_beastmen_event",
			composition_type = "beastmen_elite"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "nurgle_end_event_chaos",
			composition_type = "beastmen_mix"
		},	
		{
			"delay" ,
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_beastmen_event",
			composition_type = "beastmen_mix"
		},
		{
			"delay",
			duration = 6
		},	
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("beastmen_gor") + count_event_breed("beastmen_ungor") < 10) and count_event_breed("beastmen_bestigor") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_loop_done"
		}	
	}
	
	TerrorEventBlueprints.nurgle.nurgle_end_event_escape = {
		{
			"set_master_event_running",
			name = "nurgle_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_gate_1",
			breed_name = "beastmen_bestigor"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_gate_2",
			breed_name = "beastmen_bestigor"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_gate_3",
			breed_name = "beastmen_standard_bearer"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_gate_4",
			breed_name = "beastmen_bestigor"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_gate_5",
			breed_name = "beastmen_bestigor"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_gate_6",
			breed_name = "beastmen_bestigor"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_thirdroom_1",
			breed_name = "beastmen_standard_bearer"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_thirdroom_2",
			breed_name = "beastmen_bestigor"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_thirdroom_3",
			breed_name = "beastmen_bestigor"
		},
		{	
			"spawn_at_raw",
			spawner_id = "onslaught_beastmen_thirdroom_4",
			breed_name = "beastmen_bestigor"
		},
		{
			"delay",
			duration = 10
		},	
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "nurgle_end_event02",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_clan_rat") < 12 and count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "nurgle_end_event_escape_done"
		}
	}
		

	---------------------
	--Warcamp

	HordeCompositions.event_warcamp_elites = {
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
	
	HordeCompositions.event_ram_elites = {
		{
			name = "mauler",
			weight = 5,
			breeds = {
				"chaos_warrior",
				1,
				"chaos_raider",
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
				"chaos_warrior",
				1,
				"chaos_berzerker",
				{
					4,
					5
				}
			}
		},
		{
			name = "mixed",
			weight = 5,
			breeds = {
				"chaos_warrior",
				1,
				"chaos_raider",
				{
					1,
					2
				},
				"chaos_berzerker",
				{
					2,
					3
				}
			}
		}
	}	

	TerrorEventBlueprints.warcamp.warcamp_payload = {
		{
			"set_master_event_running",
			name = "warcamp_payload"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 12
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_r",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
		},	
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "payload_event_l",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_marauder") < 9 and count_event_breed("chaos_marauder_with_shield") < 8
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_l",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "payload_event_r",
			composition_type = "event_maulers_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_left",
			composition_type = "event_ram_elites"
		},
		{
			"delay",
			duration = 6
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_ram_event_right",
			composition_type = "event_ram_elites"
		},			
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "warcamp_payload"
		}
	}
	
	TerrorEventBlueprints.warcamp.warcamp_door_guard = {
		{
			"disable_kick"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_shield_dude_1",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_shield_dude_2",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_sword_dude_1",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_sword_dude_2",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "wc_2h_dude_1",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_left",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_right",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_top_left",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_top_right",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_warcamp_gate_boss",
			breed_name = "chaos_troll",
			breed_name = "chaos_spawn",
			optional_data = { 
				max_health_modifier = 0.4
			}	
			
		}
	}

	-- TerrorEventBlueprints.warcamp.warcamp_door_guard = {
		-- {
			-- "disable_kick"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_shield_dude_1",
			-- breed_name = "chaos_warrior"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_shield_dude_2",
			-- breed_name = "chaos_warrior"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_sword_dude_1",
			-- breed_name = "chaos_berzerker"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_sword_dude_2",
			-- breed_name = "chaos_berzerker"
		-- },
		-- {
			-- "spawn_at_raw",
			-- spawner_id = "wc_2h_dude_1",
			-- breed_name = "chaos_warrior"
		-- }
	-- }

	TerrorEventBlueprints.warcamp.warcamp_camp = {
		{
			"set_master_event_running",
			name = "warcamp_camp"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_specials",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_small_chaos"
		},
		{
			"spawn_special",
			breed_name = "chaos_corruptor_sorcerer",
		},
		{
			"spawn_special",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_pack_master",
				"skaven_poison_wind_globadier"
			}
		},		
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "camp_event",
			composition_type = "event_warcamp_elites"
		},
		{
			"delay",
			duration = 8
		},
		{
			"spawn_special",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_gutter_runner",
				"skaven_pack_master"
			}
		},	
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 5 and count_event_breed("chaos_raider") < 5 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield") < 15) and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "warcamp_camp_restart"
		}
	}

	HordeCompositions.warcamp_boss_event_trickle = {
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

	HordeCompositions.warcamp_boss_event_defensive = {
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
	
	TerrorEventBlueprints.warcamp.warcamp_chaos_boss = {
		{
			"set_master_event_running",
			name = "warcamp_chaos_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "warcamp_chaos_boss",
			breed_name = "chaos_exalted_champion_warcamp"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_warcamp") == 1
			end
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top",
			composition_type = "onslaught_event_chaos_elite_adds_small"
		},	
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top_behind",
			composition_type = "onslaught_event_chaos_elite_adds_small"
		},	
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top_left",
			composition_type = "event_small_chaos"
		},	
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_camp_boss_top_right",
			composition_type = "onslaught_event_chaos_adds_small"
		},	
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_warcamp") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "warcamp_chaos_boss_dead"
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}

	--See hooks for warcamp boss behaviour changes.
	
	---------------------
	--Skittergate
	
	-- AiBreedSnippets.on_grey_seer_despawn = function (unit, blackboard, t)
		-- local conflict_director = Managers.state.conflict

		-- conflict_director:remove_unit_from_bosses(unit)
		
		-- mod:echo("im despawning")

		-- if blackboard.is_angry then
			-- conflict_director:add_angry_boss(-1)
		-- end
		
		-- local world = blackboard.world

		-- LevelHelper:flow_event(world, "skittergate_rasknitt_boss_killed")
	-- end
	
	-- AiBreedSnippets.on_grey_seer_death = function (unit, blackboard, t)
		-- local conflict_director = Managers.state.conflict

		-- conflict_director:remove_unit_from_bosses(unit)
		
		-- local t = Managers.time:time("game")

		-- Managers.state.conflict.specials_pacing:delay_spawning(t, 120, 20, true)

		-- if blackboard.is_angry then
			-- conflict_director:add_angry_boss(-1)
		-- end
		
		-- local world = blackboard.world

		-- LevelHelper:flow_event(world, "skittergate_rasknitt_boss_killed")
		
		-- mod:echo("im working")

		-- AiBreedSnippets.drop_loot_dice(3, Vector3(-308, -364, -126), true)
	-- end	
	
	-- local flow_event_on_death = function (unit, blackboard)
		-- local world = blackboard.world

		-- LevelHelper:flow_event(world, "skittergate_rasknitt_boss_killed")
		
		-- print("im working")

	-- end
	
	
	-- Breeds.skaven_grey_seer.run_on_death = AiBreedSnippets.on_grey_seer_death and flow_event_on_death
	
	TerrorEventBlueprints.skittergate.skittergate_pacing_off = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	
	TerrorEventBlueprints.skittergate.skittergate_pacing_on = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	
	TerrorEventBlueprints.skittergate.skittergate_spawn_guards = {
		{
			"spawn_at_raw",
			spawner_id = "gate_guard_01",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "gate_guard_02",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_gate_guard",
			breed_name = "skaven_storm_vermin_commander"
		}
	}
	
	TerrorEventBlueprints.skittergate.skittergate_chaos_boss = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},	
		{
			"set_master_event_running",
			name = "skittergate_chaos_boss"
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_1",
			composition_type = "onslaught_skittergate_warriors_one"
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_3",
			composition_type = "onslaught_skittergate_warriors_three"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			spawner_id = "onslaught_CW_gatekeeper_2",
			composition_type = "onslaught_skittergate_warriors_two"
		},
		{
			"spawn_at_raw",
			spawner_id = "skittergate_chaos_boss",
			breed_name = "chaos_exalted_champion_norsca"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_norsca") == 1
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_norsca") < 1 or count_event_breed("chaos_warrior") < 4
			end
		},
		{
			"event_horde",
			spawner_id = "onslaught_zerker_gatekeeper",
			composition_type = "onslaught_skittergate_warriors_three"
		},
		{
			"event_horde",
			spawner_id = "onslaught_zerker_gatekeeper",
			composition_type = "onslaught_skittergate_zerker"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_norsca") < 1
			end
		},
		{
			"delay",
			duration = 2
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_champion_norsca") < 1 and count_event_breed("chaos_spawn_exalted_champion_norsca") < 1
			end
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		},	
		{
			"flow_event",
			flow_event_name = "skittergate_chaos_boss_killed"
		}
	}
	
	HordeCompositions.onslaught_skittergate_warriors_one = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_warrior",
				1,
			}
		}
	}
	
	HordeCompositions.onslaught_skittergate_warriors_two = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_warrior",
				2,
			}
		}
	}
	
	HordeCompositions.onslaught_skittergate_warriors_three = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_warrior",
				3,
			}
		}
	}
	
	HordeCompositions.onslaught_skittergate_zerker = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"chaos_berzerker",
				{
					10,
					12
				},
				"chaos_marauder",
				{
					7,
					8
				},
				"chaos_raider",
				{
					3,
					4
				}
			}
		}
	}
	
	TerrorEventBlueprints.skittergate.skittergate_gatekeeper_marauders = {
		{
			"spawn_at_raw",
			spawner_id = "skittergate_gatekeeper_marauder_01",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "skittergate_gatekeeper_marauder_02",
			breed_name = "chaos_raider"
		},
		{
			"spawn_at_raw",
			spawner_id = "skittergate_gatekeeper_marauder_03",
			breed_name = "chaos_marauder_with_shield"
		}
	}
	
	TerrorEventBlueprints.skittergate.skittergate_terror_event_02 = {
		{
			"control_pacing",
			enable = false
		},	
		{
			"set_master_event_running",
			name = "skittergate_terror_event_02"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "terror_event_02",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "terror_event_02",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "terror_event_02",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and count_event_breed("skaven_slave") < 20 and (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 12
			end
		},
		{
			"flow_event",
			flow_event_name = "skittergate_terror_event_02_done"
		}
	}
	
	TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
	
	TerrorEventBlueprints.skittergate.skittergate_rasknitt_boss = {
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},	
		{
			"force_load_breed_package",
			breed_name = "skaven_storm_vermin_warlord"
		},
		{
			"force_load_breed_package",
			breed_name = "chaos_exalted_champion_warcamp"
		},
		{
			"set_master_event_running",
			name = "skittergate_rasknitt_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "skittergate_rasknitt_boss",
			breed_name = "skaven_grey_seer"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_stormfiend_boss") == 1
			end
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},	
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 20
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},	
		{
			"continue_when",
			duration = 60,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 15 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "skaven_shields"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_extra_spice_large"
		},
		-- {
			-- "event_horde",
			-- limit_spawners = 3,
			-- spawner_id = "onslaught_skitter_top_key",
			-- composition_type = "skaven_shields"
		-- },
		{
			"delay",
			duration = 20
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_boss_top",
			breed_name = "skaven_storm_vermin_warlord",	
			optional_data = {
				max_health_modifier = 0.5
			}	
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 4 and count_event_breed("skaven_plague_monk") < 4
			end
		},	
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 25
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		-- {
			-- "event_horde",
			-- limit_spawners = 3,
			-- spawner_id = "onslaught_skitter_top_left_platform",
			-- composition_type = "event_extra_spice_small"
		-- },
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},	
		{
			"continue_when",
			duration = 75,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 5 and count_event_breed("skaven_plague_monk") < 4 and count_breed("skaven_storm_vermin_warlord") < 1
			end
		},
		{
			"delay",
			duration = 10
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small_chaos"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_event_chaos_adds_small"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_chaos_small_mix_elites"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "mines_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"delay",
			duration = 10
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 13 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 7 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "onslaught_event_chaos_adds_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "mines_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"spawn_at_raw",
			spawner_id = "skittergate_rasknitt_boss",
			breed_name = "chaos_exalted_champion_warcamp",
			optional_data =
			{
				max_health_modifier = 0.5
			}	
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"delay",
			duration = 10
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 10
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 25
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_chaos_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},	
		{
			"continue_when",
			duration = 75,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 9 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 2 and count_breed("chaos_exalted_champion_warcamp") < 1
			end
		},
		{
			"delay",
			duration = 10
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end	
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 6 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"delay",
			duration = 8
		},	
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_slave") + count_event_breed("skaven_clan_rat_with_shield")) < 5 and (count_event_breed("skaven_storm_vermin") + count_event_breed("skaven_storm_vermin_with_shield")) < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "mines_boss"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 14 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 7
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_key",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_right",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_under_platform",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_key",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_skitter_special_top_left",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_right_platform",
			composition_type = "mines_boss"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_skitter_top_left_platform",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},	
		{
			"continue_when",
			duration = 50,
			condition = function ()
			if count_breed("skaven_grey_seer") == 0 then
				Managers.state.conflict:level_flow_event("skittergate_rasknitt_boss_killed")
				TerrorEventMixer.stop_event("skittergate_rasknitt_boss")
				return true
			end
				return (count_event_breed("chaos_fanatic") + count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 8 and (count_event_breed("chaos_raider") + count_event_breed("chaos_berzerker")) < 5 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("skaven_stormfiend_boss") < 1
			end
		},
		{
			"set_time_challenge",
			time_challenge_name = "skittergate_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "skittergate_speed_event_cata"
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("skaven_grey_seer") < 1
			end
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "skittergate_speed_event"
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "skittergate_speed_event_cata"
		},
		{
			"flow_event",
			flow_event_name = "skittergate_rasknitt_boss_killed"
		}
	}
	
	BreedActions.skaven_grey_seer.ground_combat.spawn_allies_cooldown = 18

	BreedActions.skaven_grey_seer.ground_combat.staggers_until_teleport = 1
	BreedActions.skaven_grey_seer.ground_combat.warp_lightning_spell_cooldown = {
			2,
			2,
			2,
			2
	}
	
	BreedActions.skaven_grey_seer.ground_combat.vermintide_spell_cooldown = {
			4,
			4,
			4,
			4
	}
	
	BreedActions.skaven_grey_seer.ground_combat.teleport_spell_cooldown = {
			1.5,
			1.5,
			1.5,
			1.5
	}
	
	HordeCompositions.skittergate_boss_event_defensive = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					1,
					1
				}
			}
		}
	}	
				
				-- "skaven_storm_vermin",
				-- {
					-- 5,
					-- 6
				-- },
				-- "skaven_clan_rat",
				-- {
					-- 5,
					-- 6
				-- },
				-- "skaven_clan_rat_with_shield",
				-- {
					-- 7,
					-- 9
				-- },
				-- "skaven_storm_vermin_with_shield",
				-- {
					-- 1,
					-- 2
				-- }
			-- }
		-- },
		-- {
			-- name = "somevermin",
			-- weight = 3,
			-- breeds = {
				-- "skaven_slave",
				-- {
					-- 25,
					-- 30
				-- },
				-- "skaven_storm_vermin",
				-- {
					-- 3,
					-- 4
				-- },
				-- "skaven_storm_vermin_with_shield",
				-- {
					-- 1,
					-- 2
				-- },
				-- "skaven_plague_monk",
				-- {
					-- 2,
					-- 3
				-- }
				
			-- }
		-- },
		-- {
			-- name = "berzerkers",
			-- weight = 3,
			-- breeds = {
				-- "skaven_plague_monk",
				-- {
					-- 9,
					-- 10
				-- },
				-- "skaven_clan_rat_with_shield",
				-- {
					-- 10,
					-- 12
				-- },
				-- "skaven_storm_vermin_with_shield",
				-- 1
			-- }
		-- },
		-- {
			-- name = "shield_vermins",
			-- weight = 8,
			-- breeds = {
				-- "skaven_storm_vermin_with_shield",
				-- {
					-- 7,
					-- 8
				-- },
				-- "skaven_clan_rat_with_shield",
				-- {
					-- 10,
					-- 12
				-- },
				-- "skaven_storm_vermin",
				-- 2,
			-- }
		-- }
	-- }
	
	HordeCompositions.skittergate_grey_seer_trickle = {
		{
			name = "plain",
			weight = 6,
			breeds = {
				"skaven_slave",
				{
					1,
					1
				}
			}
		}
	}	
				
				-- "skaven_slave",
				-- {
					-- 16,
					-- 20
				-- },
				-- "skaven_clan_rat",
				-- {
					-- 9,
					-- 10
				-- },
				-- "skaven_clan_rat_with_shield",
				-- {
					-- 6,
					-- 8
				-- },
				-- "skaven_storm_vermin_commander",
				-- {
					-- 2,
					-- 3
				-- },
				-- "skaven_plague_monk",
				-- {
					-- 4,
					-- 5
				-- },
				-- "skaven_storm_vermin_with_shield",
				-- 1
			-- }
		-- }
	-- }
	
	--See hooks for boss logic.
	
	---------------------
	--The Pit
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_pacing_off = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_pacing_off = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	
	HordeCompositions.chaos_elites = {
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
	
	HordeCompositions.slum_specials = {
		{
			name = "leech",
			weight = 2,
			breeds = {
				"chaos_corruptor_sorcerer",
				2,
			}
		},
		{
			name = "warpfire",
			weight = 2,
			breeds = {
				"skaven_warpfire_thrower",
				2,
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"chaos_corruptor_sorcerer",
				1,
				"skaven_warpfire_thrower",
				1,
			}
		}
	}
	
	HordeCompositions.slum_escape_chaos = {
		{
			name = "escape",
			weight = 2,
			breeds = {
				"chaos_marauder_with_shield",
				5,
				"chaos_raider",
				2,
				"chaos_berzerker",
				4,
				"chaos_warrior",
				2
			}
		}
	}

	HordeCompositions.slum_escape_skaven = {
		{
			name = "cutoff",
			weight = 2,
			breeds = {
				"skaven_storm_vermin",
				4,
				"skaven_storm_vermin_with_shield",
				4,
				"skaven_clan_rat_with_shield",
				8
			}
		}
	}

	HordeCompositions.slum_warrior = {
		{
			name = "warrior",
			weight = 2,
			breeds = {
				"chaos_warrior",
				1
			}
		}
	}	
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_start = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_event_start"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_left_01",
			composition_type = "event_maulers_small"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_right_01",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_slum_event_start_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_left_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_left_01",
			composition_type = "chaos_elites"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_left_01",
			composition_type = "slum_warrior"
		},	
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_right_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_right_01",
			composition_type = "chaos_elites"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_right_01",
			composition_type = "slum_warrior"
		},	
		{
			"delay",
			duration = 41
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_slum_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_spice_mid = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_front_mid_01",
			composition_type = "slum_specials"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_spice_left = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "event_maulers_small"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_spice_right = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_left_01",
			composition_type = "event_maulers_small"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_event_end_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "slum_warrior"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "slum_warrior"
		},	
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_event_roof_01",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("chaos_marauder_with_shield") + count_event_breed("chaos_marauder")) < 8
			end
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"delay",
			duration = 6
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_slum_event_end_loop"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_gauntlet_part_01 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_gauntlet_master"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 130
		},
		{
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_special",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff_3",
			composition_type = "slum_escape_chaos"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff_4",
			composition_type = "slum_escape_skaven"
		},	
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_behind",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_special",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_01",
			breed_name = "skaven_pack_master"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_gauntlet_wall = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_gauntlet_master"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 130
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff_4",
			composition_type = "slum_escape_chaos"
		},	
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff_3",
			composition_type = "slum_escape_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall_01",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall_01",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall_01",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "bogenhafen_slum_gauntlet_wall",
			composition_type = "onslaught_chaos_warriors"
		}	
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_gauntlet_wall_smash = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_gauntlet_master"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 130
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_slum.dlc_bogenhafen_slum_gauntlet_part_02 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_slum_gauntlet_master"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_slum_portal_boss",
			breed_name = "chaos_troll"
		},	
		{
			"set_freeze_condition",
			max_active_enemies = 130
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_slum_gauntlet_cutoff_3",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_slum_escape_crate_big",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_slum_escape_crate_small",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_slum_escape_wall",
			breed_name = "chaos_warrior"
		},	
		{
			"spawn_special",
			spawner_id = "dlc_bogenhafen_slum_gauntlet_part_02",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and (count_event_breed("chaos_marauder_with_shield") + count_event_breed("chaos_marauder")) < 9 and count_event_breed("chaos_warrior") < 2 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 10 and count_event_breed("skaven_slave") < 14 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_slum_gauntlet_part_02_done"
		}
	}
	
	---------------------
	--Blightreaper
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_disable_pacing = {
		{
			"text",
			text = "",
			duration = 0
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_start = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_sewer_start"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{	
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "sewer_start",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"event_horde",
			spawner_id = "sewer_start",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"delay",
			duration = 20
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_start_done"
		}
	}

	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_spice = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_spice",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_spice",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_spice_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_mid01 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_sewer_mid01"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "sewer_mid",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_chaos_small_mix_elites"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_room1_side",
			composition_type = "event_chaos_small_mix_elites"
		},	
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 8 and count_event_breed("skaven_slave") < 15
			end
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			spawner_id = "sewer_rawspawner01",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_mid",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_mid",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_chaos_small_mix_elites"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_room1_side",
			composition_type = "event_chaos_small_mix_elites"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "sewer_mid",
			composition_type = "event_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 2 and count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 2 and count_event_breed("skaven_slave") < 3
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_mid01_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_end = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_sewer_end"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_backspawn",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_end_chaos",
			composition_type = "event_chaos_small_mix_elites"
		},
		{
			"event_horde",
			spawner_id = "onslaught_sewer_room1_side",
			composition_type = "event_chaos_small_mix_elites"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 10 and count_event_breed("chaos_marauder_with_shield") < 10
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_end_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "sewer_mid",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_end_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_sewer_escape = {
		{
			"set_master_event_running",
			name = "bogenhafenhafen_sewer_escape"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "sewer_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_sewer_exit_gun_1",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_sewer_exit_gun_2",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_sewer_escape_done"
		}
	}
	
	HordeCompositions.onslaught_blightreaper_temple_easy = {
		{
			name = "skaven_offensive",
			weight = 1,
			breeds = {
				"skaven_storm_vermin_commander",
				{
					5,
					6
				},
				"skaven_plague_monk",
				{
					5,
					6
				}
			}
		},
		{
			name = "skaven_mixed",
			weight = 1,
			breeds = {
				"skaven_storm_vermin_with_shield",
				3,
				"skaven_plague_monk",
				{
					5,
					6
				}
			}
		},
		{
			name = "skaven_defensive",
			weight = 1,
			breeds = {
				"skaven_storm_vermin_with_shield",
				3,
				"skaven_storm_vermin_commander",
				{
					5,
					6
				}
			}
		},
		{
			name = "chaos_mixed",
			weight = 1,
			breeds = {
				"chaos_berzerker",
				{
					6,
					7
				},
				"chaos_marauder_with_shield",
				8,
			}
		},
		{
			name = "chaos_offensive",
			weight = 1,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_raider",
				5,
			}
		},
		{
			name = "chaos_zerg",
			weight = 1,
			breeds = {
				"chaos_warrior",
				2,
				"chaos_berzerker",
				{
					6,
					7
				},
			}
		},
		{
			name = "chaos_defensive",
			weight = 1,
			breeds = {
				"chaos_raider",
				{
					5,
					6
				},
				"chaos_marauder_with_shield",
				8,
			}
		},
		{
			name = "chaos_leader",
			weight = 1,
			breeds = {
				"chaos_warrior",
				1,
				"chaos_raider",
				{
					2,
					3
				},
				"chaos_marauder_with_shield",
				{
					4,
					5
				},
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		}
	}
	
	HordeCompositions.onslaught_blightreaper_temple_hard = {
		{
			name = "chaos_defensive",
			weight = 1,
			breeds = {
				"chaos_warrior",
				7,
				"chaos_marauder_with_shield",
				{
					4,
					5
				}
			}
		},
		{
			name = "chaos_offensive",
			weight = 1,
			breeds = {
				"chaos_warrior",
				6,
				"chaos_raider",
				{
					6,
					7
				}
			}
		},
		{
			name = "chaos_zerg",
			weight = 1,
			breeds = {
				"chaos_warrior",
				6,
				"chaos_berzerker",
				{
					7,
					8
				}
			}
		},
		{
			name = "chaos_leader",
			weight = 1,
			breeds = {
				"chaos_warrior",
				3,
				"chaos_marauder_with_shield",
				{
					4,
					5
				},
				"chaos_raider",
				{
					6,
					7
				},
				"chaos_berzerker",
				{
					7,
					8
				}
			}
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_loop = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_loop"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_loop",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_rawspawner01",
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 7 and count_event_breed("skaven_slave") < 8 and count_event_breed("skaven_storm_vermin_commander") < 2 and count_event_breed("chaos_fanatic") < 6 and count_event_breed("chaos_marauder") < 4 and count_event_breed("skaven_gutter_runner") < 2 and count_event_breed("skaven_pack_master") < 2 and (count_event_breed("skaven_poison_wind_globadier") + count_event_breed("skaven_warpfire_thrower") + count_event_breed("skaven_ratling_gunner")) < 4
			end
		},
		{
			"delay",
			duration = 12
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_loop_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_start = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_end_start"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"disable_kick"
		},
		{
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_start",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_disabler"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"event_horde",
			spawner_id = "temple_event_start",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_start_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button1 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button1"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button1",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button1_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button2 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button2"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_rawspawner01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_at_raw",
			spawner_id = "temple_rawspawner02",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button2_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button3 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button3"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stingers_plague_monk"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button3",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button3",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button3",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"spawn_special",
			amount = 3,
			spawner_id = "temple_event_button3",
			breed_name = "chaos_corruptor_sorcerer"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "temple_event_button3",
			composition_type = "onslaught_blightreaper_temple_easy"
		},
		{
			"event_horde",
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_slave") < 20 and count_event_breed("skaven_storm_vermin_with_shield") < 4 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button3_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button4 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button4"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button4",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_blightreaper_temple_hard"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button4",
			composition_type = "onslaught_blightreaper_temple_hard"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "onslaught_blightreaper_temple_hard"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_special_denial"
		},
		{
			"delay",
			duration = 10
		},		
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 1 and count_event_breed("chaos_marauder_with_shield") < 1 and count_event_breed("chaos_raider") < 1 and count_event_breed("chaos_berzerker") < 1 and count_event_breed("chaos_warrior") < 1
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "onslaught_custom_boss_spawn"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_city_horde_top",
			composition_type = "onslaught_event_chaos_elite_adds"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "onslaught_blightreaper_temple_hard"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "onslaught_custom_specials_heavy_denial"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "onslaught_city_horde_top",
			composition_type = "mines_boss"
		},	
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2 and count_event_breed("chaos_spawn") < 1
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"force_load_breed_package",
			breed_name = "chaos_exalted_champion_warcamp"
		},
		{
			"force_load_breed_package",
			breed_name = "chaos_exalted_champion_norsca"
		},
		{
			"delay",
			duration = 2
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button4_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_button5 = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_button5"
		},	
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_city_boss_sword",
			breed_name = "chaos_exalted_champion_warcamp"
		},
		-- {
			-- "event_horde",
			-- limit_spawners = 2,
			-- spawner_id = "onslaught_city_horde_top",
			-- composition_type = "event_chaos_small_mix_elites"
		-- },
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_chaos_small_mix_elites"
		},			
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_city_boss_top",
			breed_name = "chaos_exalted_champion_norsca"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button3",
			composition_type = "event_chaos_small_mix_elites"
		},	
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button5",
			composition_type = "onslaught_blightreaper_temple_hard"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_chaos_small_mix_elites"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button4",
			composition_type = "event_chaos_small_mix_elites"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "temple_event_button2",
			composition_type = "event_chaos_small_mix_elites"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2 and count_event_breed("chaos_exalted_champion_norsca") < 1 and count_event_breed("chaos_exalted_champion_warcamp") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button5_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bogenhafen_city.dlc_bogenhafen_city_temple_escape = {
		{
			"set_master_event_running",
			name = "dlc_bogenhafen_city_temple_escape"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "temple_event_escape",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 12 and count_event_breed("chaos_marauder_with_shield") < 7 and count_event_breed("chaos_raider") < 4 and count_event_breed("chaos_berzerker") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_bogenhafen_city_temple_button5_done"
		}
	}

	---------------------
	--Horn of Magnus
	
	HordeCompositions.onslaught_gutter_assistants = {
		{
			name = "monk",
			weight = 5,
			breeds = {
				"skaven_plague_monk",
				1
			}
		},
		{
			name = "shield",
			weight = 5,
			breeds = {
				"skaven_storm_vermin_with_shield",
				1				
			}
		},
		{
			name = "pack",
			weight = 5,
			breeds = {
				"skaven_pack_master",
				1
			}
		},
		{
			name = "warpfire",
			weight = 2,
			breeds = {
				"skaven_warpfire_thrower",
				1
			}
		}
	}
	
	TerrorEventBlueprints.magnus.magnus_gutter_runner_treasure = {
		{
			"spawn_special",
			breed_name = "skaven_gutter_runner",
			amount = {
				2,
				3
			}
		},
		{
			"play_stinger",
			stinger_name = "enemy_gutterrunner_stinger"
		},
		{
			"event_horde",
			composition_type = "onslaught_gutter_assistants"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "gutter_runner_treasure_restart"
		}
	}
	
	TerrorEventBlueprints.magnus.magnus_door_a = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 12
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_custom_boss_ogre"
		},
		{
			"delay",
			duration = 12
		},
		{
			"continue_when",
			duration = 10,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner"
			}
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			},
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "magnus_door_event_specials",
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}
	
	TerrorEventBlueprints.magnus.magnus_door_b = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_b",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_custom_boss_troll"
		},
		{
			"delay",
			duration = 12
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_specials",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"spawn_special",
			spawner_id = "magnus_door_event_specials",
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			"skaven_warpfire_thrower",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "magnus_door_event_specials",
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "magnus_door_event_specials",
			amount = {
				1,
				2
			}
		},
		{
			"spawn_special",
			breed_name = "chaos_corruptor_sorcerer",
			spawner_id = "magnus_door_event_specials",
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_c",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn",
			{
				1,
				2
			},
			spawner_id = "magnus_door_event_specials",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_a",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("skaven_clan_rat") + count_breed("skaven_clan_rat_with_shield")) < 10 and count_breed("skaven_slave") < 15 and (count_breed("skaven_storm_vermin_commander") + count_breed("skaven_storm_vermin_with_shield")) < 4 and count_breed("skaven_plague_monk") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "magnus_door_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"continue_when",
			duration = 12,
			condition = function (t)
				return (count_breed("chaos_marauder") + count_breed("chaos_marauder_with_shield")) < 8 and count_breed("chaos_fanatic") < 13 and count_breed("chaos_raider") < 4 and count_breed("chaos_berzerker") < 4
			end
		},
		{
			"continue_when",
			duration = 5,
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	}
	
	TerrorEventBlueprints.magnus.magnus_end_event = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"set_master_event_running",
			name = "magnus_end_event"
		},
		{
			"flow_event",
			flow_event_name = "magnus_horn_crescendo_starting"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn_first",
			composition_type = "event_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "magnus_end_event_first_wave_killed"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"disable_kick"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			spawner_id = "onslaught_magnus_entrance",
			composition_type = "onslaught_event_beastmen_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_magnus_top_left",
			breed_name = "beastmen_minotaur",
			optional_data = {
				max_health_modifier = 0.25
			}
		},
		{
			"event_horde",
			spawner_id = "onslaught_magnus_top_window",
			composition_type = "onslaught_beastmen_bestigors"
		},
		{
			"spawn_special",
			breed_name = "beastmen_standard_bearer"
		},	
		{
			"delay",
			duration = 5,
		},
		{
			"event_horde",
			spawner_id = "onslaught_magnus_horn",
			composition_type = "beastmen_elite"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_magnus_boss_entrance",
			breed_name = "beastmen_minotaur",
			optional_data = {
				max_health_modifier = 0.25
			}
		},
		{
			"spawn_special",
			breed_name = "beastmen_standard_bearer"
		},
		{
			"delay",
			duration = 10
		},	
		{
			"continue_when",
			duration = 65,
			condition = function (t)
				return (count_event_breed("beastmen_gor") + count_event_breed("beastmen_ungor")) < 8 and count_event_breed("beastmen_bestigor") < 2 and count_breed("beastmen_minotaur") < 1
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_fanatic") < 18 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"spawn_special",
			amount = 4,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"control_specials",
			enable = true
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_magnus_top_window",
			composition_type = "onslaught_event_beastmen_large"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_magnus_horn",
			composition_type = "beastmen_elite"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			breed_name = "beastmen_standard_bearer"
		},	
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_magnus_entrance",
			composition_type = "onslaught_event_beastmen_medium"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_magnus_top_window",
			composition_type = "onslaught_beastmen_bestigors"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_magnus_horn",
			composition_type = "onslaught_beastmen_bestigors"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_magnus_horn",
			composition_type = "onslaught_beastmen_bestigors"
		},
		{
			"continue_when",
			duration = 65,
			condition = function (t)
				return (count_event_breed("beastmen_gor") + count_event_breed("beastmen_ungor")) < 8 and count_event_breed("beastmen_bestigor") < 2 and count_breed("beastmen_minotaur") < 1
			end
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = "chaos_corruptor_sorcerer"
		},
		{
			"spawn_special",
			amount = 3,
			breed_name = "chaos_vortex_sorcerer"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 1
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("chaos_marauder") + count_event_breed("chaos_marauder_with_shield")) < 10 and count_event_breed("chaos_fanatic") < 18 and count_event_breed("chaos_raider") < 6 and count_event_breed("chaos_berzerker") < 6 and count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"spawn_special",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 18 and count_event_breed("skaven_slave") < 25 and count_event_breed("skaven_storm_vermin_commander") < 6 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "magnus_tower_horn",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "event_extra_spice_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "magnus_tower_horn",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 3 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("skaven_plague_monk") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "magnus_horn_event_done"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_pacing",
			enable = true
		}
	}
	
	---------------------
	--Garden of Morr
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_1_a = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_boss",
			breed_name = "skaven_rat_ogre"
		},
		{
			"delay",
			duration = 4
		},	
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 5
		}
	}
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_1_b = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_poison_wind_globadier",
			amount = 3
		},
		{
			"delay",
			duration = 4
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_boss",
			breed_name = "skaven_rat_ogre"
		},	
		{
			"delay",
			duration = 4
		},	
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		}
	}
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_2_a = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_poison_wind_globadier",
			amount = 2
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				4,
				8
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_pack_master",
			amount = 4
		},
		{
			"delay",
			duration = 2
		},	
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "chaos_vortex_sorcerer",
			amount = 2
		},
		{
			"delay",
			duration = 5
		}
	}
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_2_b = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_pack_master",
			amount = 4
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "chaos_vortex_sorcerer",
			amount = 2
		},
		{
			"delay",
			duration = 5
		}
	}
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_3_a = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_boss",
			breed_name = "beastmen_minotaur"
		},	
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			breed_name = "skaven_warpfire_thrower",
			amount = 3
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		}
	}
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_3_b = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_cemetery_boss",
			breed_name = "beastmen_minotaur"
		},	
		{
			"spawn_special",
			breed_name = "skaven_ratling_gunner",
			amount = 3
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "cemetery_brew_event_specials",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 5
		}
	}
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_4_a = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		}
	}
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_event_4_b = {
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			composition_type = "event_extra_spice_medium"
		}
	}
	
	TerrorEventBlueprints.cemetery.cemetery_plague_brew_exit_event = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			spawner_id = "cemetery_brew_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		}
	}
	
	---------------------
	--Engines of War
	
	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_loop = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = {
				2,
				4
			}
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_slave") < 12 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
			end
		},
		{
			"delay",
			duration = {
				8,
				10
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_loop_restart"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_resistance_loop = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "forest_camp_specials",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			}
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = {
				4,
				9
			}
		},
		{
			"spawn_special",
			amount = 2,
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 5 and count_event_breed("skaven_slave") < 12 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
			end
		},
		{
			"delay",
			duration = {
				13,
				17
			}
		},
		{
			"event_horde",
			spawner_id = "forest_camp_specials",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"spawn_special",
			amount = 2,
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner"
			}
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_extra_spice_unshielded"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "skaven_camp_loop",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"delay",
			duration = {
				4,
				9
			}
		},
		{
			"spawn_special",
			amount = 2,
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_special",
			spawner_id = "forest_camp_specials",
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner",
				"skaven_poison_wind_globadier",
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 5 and count_event_breed("skaven_slave") < 12 and (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and (count_event_breed("skaven_storm_vermin_commander") + count_event_breed("skaven_storm_vermin_with_shield")) < 5
			end
		},
		{
			"delay",
			duration = {
				13,
				17
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_resistance_loop_restart"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_a = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 6
			end
		},
		{
			"delay",
			duration = {
				10,
				15
			}
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 4 
			end
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_a_done"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_b = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 4 
			end
		},
		{
			"delay",
			duration = {
				10,
				15
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_b_done"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_c = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "skaven_shields"
		},
		{
			"continue_when",
			duration = 15,
			condition = function (t)
				return count_event_breed("skaven_clan_rat_with_shield") < 10 and count_event_breed("skaven_storm_vermin_with_shield") < 5
			end
		},
		{
			"delay",
			duration = {
				10,
				15
			}
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "skaven_shields"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "skaven_shields"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat_with_shield") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_c_done"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_skaven_camp_finale = {
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"stop_event",
			stop_event_name = "forest_skaven_camp_resistance_loop"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_door_a",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_door_a",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_doomwheel_boss",
			breed_name = {
				"skaven_rat_ogre",
				"chaos_spawn"
			}
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("skaven_stormfiend") < 1
			end
		},
		{
			"stop_master_event"
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_finale_done"
		},
		{
			"disable_bots_in_carry_event"
		},
		{
			"control_pacing",
			enable = true
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_end_event_loop = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield")) < 8 and count_event_breed("skaven_slave") < 12 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"delay",
			duration = {
				7,
				10
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_loop_restart"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_end_event_a = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = {
				6,
				9
			}
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_specials",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				30,
				34
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_end_event_b = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_event_small_fanatics"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_maulers_small"
		},
		{
			"delay",
			duration = {
				30,
				35
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_end_event_c = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = {
				29,
				33
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	}
	
	TerrorEventBlueprints.forest_ambush.forest_end_finale = {
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 20
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "event_large"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 15 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("chaos_raider") < 5 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	}
	
	---------------------
	--Dark Omens
	
	local horde_sound_settings = {
		skaven = {
			stinger_sound_event = "enemy_horde_stinger",
			music_states = {
				horde = "horde"
			}
		},
		chaos = {
			stinger_sound_event = "enemy_horde_chaos_stinger",
			music_states = {
				pre_ambush = "pre_ambush_chaos",
				horde = "horde_chaos"
			}
		},
		beastmen = {
			stinger_sound_event = "enemy_horde_beastmen_stinger",
			music_states = {
				pre_ambush = "pre_ambush_beastmen",
				horde = "horde_beastmen"
			}
		}
	}
	
	local function num_spawned_enemies()
		local spawned_enemies = Managers.state.conflict:spawned_units()

		return #spawned_enemies
	end
	
	local function num_alive_standards()
		local alive_standards = Managers.state.conflict:alive_standards()

		return #alive_standards
	end
	
	TerrorEventBlueprints.crater.crater_mid_event = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "crater_mid_event"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_01",
			composition_type = "onslaught_custom_boss_minotaur",
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_01",
			composition_type = "ungor_archers",
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_02",
			composition_type = "ungor_archers",
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_01",
			composition_type = "event_medium_beastmen",
			sound_settings = horde_sound_settings.beastmen
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "crater_mid_event_door_horde_02",
			composition_type = "event_medium_beastmen",
			sound_settings = horde_sound_settings.beastmen
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_crater_horde_behind",
			composition_type = "event_beastmen_mix_small",
			sound_settings = horde_sound_settings.beastmen
		},
		{
			"delay",
			duration = 4
		},	
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("beastmen_gor") < 4 and count_breed("beastmen_ungor") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_mid_event_enable_gate"
		},
		{
			"delay",
			duration = 1
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "crater_mid_event_door_elite_02",
			composition_type = "crater_bestigor_medium",
			sound_settings = horde_sound_settings.beastmen
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("beastmen_bestigor") < 3
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"control_specials",
			enable = true
		},
		{
			"flow_event",
			flow_event_name = "crater_mid_event_done"
		}
	}
	
	TerrorEventBlueprints.crater.crater_detour_specials = {		
		{
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 6,
			spawner_id = "crater_detour_specials",
			composition_type = "crater_detour"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_crater_secret_boss",
			breed_name = "chaos_spawn",
			optional_data = {
				max_health_modifier = 0.5
			}
		},
		{
			"delay",
			duration = 10
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_crater_secret_rock_top_left",
			composition_type = "beastmen_mix"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_crater_secret_rock_outside",
			composition_type = "beastmen_mix"
		},
		{
			"delay",
			duration = 3
		},	
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "onslaught_crater_secret_top_behind",
			composition_type = "beastmen_trash"
		},
		{
			"delay",
			duration = 10
		},	
		{
			"continue_when",
			duration = 70,
			condition = function (t)
				return count_breed("chaos_spawn") < 1 and count_breed("beastmen_bestigor") < 1 and count_breed("beastmen_gor") < 2
			end
		},
		{
			"control_specials",
			enable = true
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_crater_secret_top_behind",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_crater_secret_rock_outside",
			composition_type = "onslaught_event_military_courtyard_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "onslaught_crater_secret_rock_top_left",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return num_spawned_enemies() < 8
			end
		},
		{
			"control_pacing",
			enable = true
		}	
	}
	
	TerrorEventBlueprints.crater.crater_end_event_manual_spawns = {
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_01",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_02",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_03",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_04",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_05",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_06",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_07",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_08",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_10",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_11",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_12",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_13",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_14",
			breed_name = "beastmen_bestigor"
		},
		{
			"spawn_at_raw",
			spawner_id = "crater_end_event_manual_spawn_15",
			breed_name = "beastmen_bestigor"
		}
	}
	
	TerrorEventBlueprints.crater.crater_end_event_intro_wave = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "crater_end_event_intro_wave"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event_intro_wave",
			composition_type = "event_large_beastmen"
		},
		{
			"delay",
			duration = 20
		},
		{
			"continue_when",
			duration = 55,
			condition = function (t)
				return count_event_breed("beastmen_gor") < 4 and count_breed("beastmen_ungor") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_intro_wave_done"
		}
	}
	
	TerrorEventBlueprints.crater.crater_end_event_wave_01 = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "crater_end_event_wave_01"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return num_spawned_enemies() < 8
			end
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_medium_beastmen"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return num_alive_standards() < 1 and count_event_breed("beastmen_gor") < 8 and count_event_breed("beastmen_ungor") < 8
			end
		},
		{
			"spawn_at_raw",
			breed_name = "beastmen_minotaur",
			spawner_id = "event_minotaur"
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_01_done"
		}
	}
	
	TerrorEventBlueprints.crater.crater_end_event_wave_02 = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "crater_end_event_wave_02"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_small_beastmen"
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 8
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return num_spawned_enemies() < 6
			end
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return num_alive_standards() < 1 and count_event_breed("beastmen_gor") < 8 and count_event_breed("beastmen_ungor") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_02_done"
		}
	}
	
	TerrorEventBlueprints.crater.crater_end_event_wave_03 = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "crater_end_event_wave_03"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return num_spawned_enemies() < 5
			end
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 6
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_small_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "ungor_archers"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return num_alive_standards() < 1 and count_event_breed("beastmen_gor") < 8 and count_event_breed("beastmen_ungor") < 8
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_03_done"
		}
	}
	
	TerrorEventBlueprints.crater.crater_end_event_wave_04 = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "crater_end_event_wave_04"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_large_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_small_beastmen"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return num_spawned_enemies() < 8
			end
		},
		{
			"spawn_special",
			breed_name = "beastmen_bestigor",
			amount = 6
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "event_medium_beastmen"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "crater_end_event",
			composition_type = "ungor_archers"
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_04_repeat"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return num_alive_standards() < 1 and count_event_breed("beastmen_gor") < 5 and count_event_breed("beastmen_ungor") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "crater_end_event_wave_04_done"
		}
	}
	
	TerrorEventBlueprints.crater.crater_end_event_minotaur = {
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("beastmen_minotaur") == 1
			end
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("beastmen_minotaur") < 1
			end
		}
	}
	
	HordeCompositions.event_small_beastmen = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					13,
					14
				}
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"beastmen_ungor",
				{
					3,
					4
				},
				"beastmen_gor",
				{
					9,
					10
				}
			}
		}
	}
	
	HordeCompositions.event_medium_beastmen = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					16,
					17
				},
				"beastmen_ungor",
				{
					8,
					9
				}
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					7,
					8
				},
				"beastmen_ungor",
				{
					15,
					16
				}
			}
		}
	}
	
	HordeCompositions.event_large_beastmen = {
		{
			name = "plain",
			weight = 7,
			breeds = {
				"beastmen_gor",
				{
					18,
					19
				},
				"beastmen_ungor",
				{
					16,
					17
				}
			}
		},
		{
			name = "mixed",
			weight = 3,
			breeds = {
				"beastmen_gor",
				{
					22,
					23
				},
				"beastmen_ungor",
				{
					14,
					15
				}
			}
		}
	}
	
	HordeCompositions.crater_bestigor_medium = {
		{
			name = "ambestigor",
			weight = 3,
			breeds = {
				"beastmen_bestigor",
				{
					9,
					10
				},
				"beastmen_standard_bearer",
				2
			}
		}
	}
	
	---------------------
	--Old Haunts
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_control_pacing_disabled = {
		{
			"text",
			text = "",
			duration = 0
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_temple_inside = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_temple_inside"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_hordes",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 6
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 7 and count_event_breed("skaven_slave") < 7 and count_event_breed("skaven_storm_vermin_commander") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_portals_temple_inside_done"
		}
	}

	TerrorEventBlueprints.dlc_portals.dlc_portals_temple_inside_specials = {
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "plague_monks_small"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_custom_special_skaven"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_custom_special_skaven"
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_temple_yard = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_temple_yard"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_special",
			spawner_id = "portals_temple_yard",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower"
			}
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_inside_specials",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_temple_yard",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"delay",
			duration = 6
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_raider") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dlc_portals_temple_yard_done"
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_temple_yard_exit = {
		{
			"spawn_at_raw",
			spawner_id = "portals_temple_yard_exit",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 18
		},
		{
			"spawn_at_raw",
			spawner_id = "portals_temple_yard_exit",
			breed_name = {
				"chaos_spawn",
				"skaven_rat_ogre",
				"beastmen_minotaur",
				"chaos_troll"
				}
		},
		{
			"delay",
			duration = 10
		},	
		{
			"control_pacing",
			enable = true
		},
		{
			"control_hordes",
			enable = true
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_guards = {
		{
			"event_horde",
			spawner_id = "portals_end_event_guards",
			composition_type = "chaos_warriors"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_portals_extra_guard_1",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_portals_extra_guard_2",
			breed_name = "chaos_warrior"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_portals_extra_guard_3",
			breed_name = "chaos_warrior"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_hordes",
			enable = false
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_a = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_event"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 1,
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 1,
			breed_name = {
				"skaven_poison_wind_globadier",
			}
		},
		{
			"spawn_special",
			breed_name = "skaven_pack_master",
			spawner_id = "portals_end_event_specials",
			amount = 2,
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "portals_end_event_done"
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_b = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_event"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 7
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower"
			}
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 1,
			breed_name = {
				"skaven_ratling_gunner"
			},
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 4 and count_event_breed("chaos_fanatic") < 4 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "portals_end_event_done"
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_c = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_event"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "plague_monks_medium"
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 2,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner"
			},
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 1,
			breed_name = {
				"skaven_gutter_runner"
			},
		},
		{
			"delay",
			duration = 4
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "portals_end_event_done"
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_event_d = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_event"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 4
		},
		{
			"spawn_special",
			spawner_id = "portals_end_event_specials",
			amount = 2,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_ratling_gunner"
			}
		},
		{
			"delay",
			duration = 8
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event",
			composition_type = "plague_monks_small",
		},
		{
			"delay",
			duration = 4
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_raider") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "portals_end_event_done"
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_escape_specials = {
		{
			"event_horde",
			spawner_id = "portals_end_escape_specials",
			composition_type = "plague_monks_medium"
		},
		{
			"spawn_special",
			spawner_id = "portals_end_escape_specials",
			amount = 2,
			breed_name = {
				"skaven_warpfire_thrower"
			}
		},
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_escape_a = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_escape"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "portals_end_event_skaven",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_special",
			spawner_id = "portals_end_escape_specials",
			amount = 1,
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			}
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "event_small"
		},		
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "plague_monks_small"
		},
		{
			"delay",
			duration = 6
		},
		{
			"spawn_special",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "portals_end_escape_specials",
			amount = 1,
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_skaven",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_plague_monk") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 3
			end
		},
		{
			"delay",
			duration = {
				1,
				4
			}
		},
		{
			"flow_event",
			flow_event_name = "portals_end_escape_done"
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_escape_b = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_escape"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "event_large_chaos"
		},
		{
			"spawn_special",
			spawner_id = "portals_end_escape_specials",
			amount = 2,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_warpfire_thrower"
			}
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 4 and count_event_breed("chaos_fanatic") < 4
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"spawn_special",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "portals_end_escape_specials",
			amount = 1,
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"delay",
			duration = 8
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_raider") < 2
			end
		},
		{
			"delay",
			duration = {
				1,
				4
			}
		},
		{
			"flow_event",
			flow_event_name = "portals_end_escape_done"
		}
	}
	
	TerrorEventBlueprints.dlc_portals.dlc_portals_end_escape_yard = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "dlc_portals_end_escape_yard"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "onslaught_custom_boss_spawn"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard_specials",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 4 and count_event_breed("chaos_fanatic") < 4
			end
		},
		{
			"event_horde",
			spawner_id = "portals_end_escape_yard",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_raider") < 2
			end
		},
		{
			"delay",
			duration = {
				10,
				15
			}
		},
		{
			"flow_event",
			flow_event_name = "portals_end_escape_yard_done"
		}
	}
	
	-------------------
	--Blood in the Darkness
	
	TerrorEventBlueprints.dlc_bastion.bastion_gate_event = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "bastion_gate_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_hordes",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"delay",
			duration = 1
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_rat_ogre",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_slave") < 16 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 16 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_medium"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 16 and count_event_breed("skaven_storm_vermin_commander") < 5 and count_event_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_large"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_medium_shield"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 15) and count_event_breed("skaven_slave") < 16 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 10) and count_event_breed("skaven_slave") < 16 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return (count_event_breed("skaven_clan_rat") + count_event_breed("skaven_clan_rat_with_shield") < 10) and count_event_breed("skaven_slave") < 16 and count_event_breed("skaven_storm_vermin_commander") < 5
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "event_medium_shield"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event",
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 7 and count_event_breed("chaos_warrior") < 6
			end
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "chaos_warriors_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_stormfiend",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_spawn",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 8 and count_event_breed("chaos_fanatic") < 9 and count_event_breed("chaos_warrior") < 5
			end
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_troll",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_troll",
			spawner_id = "bastion_gate_event_special",
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "chaos_warriors_small"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 7
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "bastion_gate_event_chaos",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 4 and count_event_breed("chaos_fanatic") < 4 and count_event_breed("chaos_warrior") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_gate_event_done"
		}
	}
	
	TerrorEventBlueprints.dlc_bastion.bastion_finale_event = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "bastion_finale_event"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"delay",
			duration = 10
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_rat_ogre",
				"chaos_spawn"
			}
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 8 and count_event_breed("skaven_slave") < 9 and count_event_breed("skaven_storm_vermin_commander") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "nngl_bastion_vo_sorcerer_taunt"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 8 and count_event_breed("skaven_slave") < 9 and count_event_breed("skaven_storm_vermin_commander") < 3
			end
		},
		{
			"flow_event",
			flow_event_name = "nngl_bastion_vo_sorcerer_taunt"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_medium_shield"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 8 and count_event_breed("skaven_slave") < 9 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 3
			end
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_small"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 8 and count_event_breed("skaven_slave") < 9 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 3 and count_event_breed("skaven_plague_monk") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "nngl_bastion_vo_sorcerer_taunt"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_medium_shield"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "onslaught_plague_monks_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_pack_master",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_pack_master",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_pack_master",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			spawner_id = "bastion_finale_event_boss",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier",
				"skaven_poison_wind_globadier"
			},
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_warpfire_thrower") < 1 and count_event_breed("skaven_warpfire_thrower") < 1 and count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("skaven_gutter_runner") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event",
			composition_type = "storm_vermin_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 8 and count_event_breed("skaven_slave") < 9 and count_event_breed("skaven_storm_vermin_commander") < 3 and count_event_breed("skaven_storm_vermin_with_shield") < 3 and count_event_breed("skaven_plague_monk") < 4 and count_event_breed("skaven_rat_ogre") < 1 and count_event_breed("chaos_spawn") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_vo_finale_tiring"
		},
		{
			"delay",
			duration = 3
		},
		{
			"flow_event",
			flow_event_name = "nngl_bastion_vo_sorcerer_taunt"
		},
		{
			"delay",
			duration = 3
		},
		{
			"flow_event",
			flow_event_name = "bastion_finale_event_boss"
		}
	}
	
	TerrorEventBlueprints.dlc_bastion.bastion_event_rat_ogre = {
		{
			"set_master_event_running",
			name = "bastion_event_boss"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_warrior") < 1 and count_event_breed("chaos_raider") < 1 and count_event_breed("chaos_berzerker") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_finale_event_escape"
		}
	}
	
	TerrorEventBlueprints.dlc_bastion.bastion_event_storm_fiend = {
		{
			"set_master_event_running",
			name = "bastion_event_boss"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_maulers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_warrior") < 1 and count_event_breed("chaos_raider") < 1 and count_event_breed("chaos_berzerker") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_finale_event_escape"
		}
	}
	
	TerrorEventBlueprints.dlc_bastion.bastion_event_chaos_spawn = {
		{
			"set_master_event_running",
			name = "bastion_event_boss"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "chaos_warriors_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "bastion_finale_event_boss",
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_warrior") < 1 and count_event_breed("chaos_raider") < 1 and count_event_breed("chaos_berzerker") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "bastion_finale_event_escape"
		}
	}
	
	TerrorEventBlueprints.dlc_bastion.bastion_finale_event_gauntlet = {
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_stormvermin_shielders"
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "storm_vermin_medium"
		},
		{
			"delay",
			duration = 7
		},
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "bastion_finale_event_escape",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 5
			end
		}
	}
	
	-----------------
	--Enchanter's lair
	
	TerrorEventBlueprints.dlc_castle.castle_catacombs_welcome_committee = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "catacombs_welcome_committee",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			spawner_id = "catacombs_welcome_committee",
			composition_type = "onslaught_chaos_berzerkers_medium"
		},
		{
			"event_horde",
			spawner_id = "catacombs_welcome_committee",
			composition_type = "onslaught_chaos_berzerkers_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "catacombs_special_welcome",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "catacombs_special_welcome",
			composition_type = "onslaught_chaos_warriors"
		}
	}
	
	TerrorEventBlueprints.dlc_castle.castle_dining_hall_guards = {
		{
			"set_master_event_running",
			name = "dining_hall"
		},
		{
			"control_hordes",
			enable = false
		},	
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "dining_hall_spawner_recruit",
			difficulty_requirement = NORMAL
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "dining_hall_spawner_veteran",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "dining_hall_spawner_champion",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "dining_hall_spawner_legend",
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "dining_hall_spawner_cataclysm",
			difficulty_requirement = CATACLYSM
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "dining_hall_spawner_cataclysm_02",
			difficulty_requirement = CATACLYSM
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "onslaught_castle_diningroom_cw1",
		},
		{
			"delay",
			duration = 0.8
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "onslaught_castle_diningroom_cw2",
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "onslaught_castle_diningroom_cw3",
		},
		{
			"delay",
			duration = 0.8
		},
		-- {
			-- "spawn_at_raw",
			-- breed_name = "chaos_warrior",
			-- spawner_id = "onslaught_castle_diningroom_cw4",
		-- },
		-- {
			-- "spawn_at_raw",
			-- breed_name = "chaos_warrior",
			-- spawner_id = "onslaught_castle_diningroom_cw5",
		-- },
		{
			"spawn_at_raw",
			breed_name = "chaos_warrior",
			spawner_id = "onslaught_castle_diningroom_cw6",
		},
		-- {
			-- "spawn_at_raw",
			-- breed_name = "chaos_warrior",
			-- spawner_id = "onslaught_castle_diningroom_cw7",
		-- },
		{
			"delay",
			duration = 10
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_exalted_champion_warcamp",
			spawner_id = "onslaught_castle_diningroom_lord",
			optional_data = {
				max_health_modifier = 0.75
			}	
		},
		{
			"delay",
			duration = 15
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "onslaught_castle_diningroom_left_door",
			composition_type = "onslaught_chaos_shield_adds"
		},
		-- {
			-- "delay",
			-- duration = 7
		-- },
		{
			"delay",
			duration = {
				10,
				15
			}	
		},
		{
			"event_horde",
			spawner_id = "onslaught_castle_diningroom_top_room",
			composition_type = "onslaught_chaos_shield_adds"
		},
		-- {
			-- "event_horde",
			-- spawner_id = "onslaught_castle_diningroom_left_door",
			-- composition_type = "onslaught_chaos_shield_adds"
		-- },
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_warrior") < 3
			end
		},
		{
			"delay",
			duration = 2
		},
		{
			"control_hordes",
			enable = true
		},
		{
			"delay",
			duration = 2
		},
		{
			"flow_event",
			flow_event_name = "castle_dining_hall_all_chaos_warriors_dead"
		}
	}
	
	TerrorEventBlueprints.dlc_castle.castle_chaos_boss = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"set_master_event_running",
			name = "castle_chaos_boss"
		},
		{
			"spawn_at_raw",
			spawner_id = "castle_chaos_boss",
			breed_name = "chaos_exalted_sorcerer_drachenfels"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_exalted_sorcerer_drachenfels") == 1
			end
		},
		{
			"flow_event",
			flow_event_name = "castle_chaos_boss_spawn"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("chaos_exalted_sorcerer_drachenfels") < 1
			end
		},
		{
			"control_specials",
			enable = true
		},
		{
			"flow_event",
			flow_event_name = "castle_chaos_boss_dead"
		}
	}
	
	TerrorEventBlueprints.dlc_castle.castle_catacombs_end_event_loop = {
		{
			"set_master_event_running",
			name = "escape_catacombs"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "escape_catacombs",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_slave") < 10
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "castle_catacombs_end_event_loop_done"
		}
	}
	
	TerrorEventBlueprints.dlc_castle.castle_catacombs_end_event_loop_extra_spice = {
		{
			"set_master_event_running",
			name = "escape_catacombs"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_escape_spice",
			composition_type = "event_extra_spice_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_escape_spice",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "end_event_escape_spice",
			composition_type = "onslaught_storm_vermin_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 9 and count_event_breed("skaven_storm_vermin_commander") < 3
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "castle_catacombs_end_event_loop_extra_spice_done"
		}
	}

	HordeCompositions.chaos_event_defensive = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					45,
					51
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					22,
					24
				},
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		},
		{
			name = "wave_b",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					20,
					24
				},
				"chaos_marauder_with_shield",
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
					2,
					3
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "wave_c",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_raider",
				{
					15,
					17
				}
			}
		},
		{
			name = "wave_d",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_berzerker",
				{
					15,
					17
				}
			}
		},
		{
			name = "wave_e",
			weight = 2,
			breeds = {
				"chaos_fanatic",
				{
					18,
					20
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					9,
					10
				},
				"chaos_warrior",
				8
			}
		},
		end_time = 9999,
		start_time = 0
	}
	
	HordeCompositions.chaos_event_defensive_intense = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					45,
					51
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					22,
					24
				},
				"chaos_berzerker",
				{
					3,
					4
				}
			}
		},
		{
			name = "wave_b",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					20,
					24
				},
				"chaos_marauder_with_shield",
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
					2,
					3
				},
				"chaos_warrior",
				1
			}
		},
		{
			name = "wave_c",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_raider",
				{
					15,
					17
				}
			}
		},
		{
			name = "wave_d",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					22,
					24
				},
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_marauder_with_shield",
				{
					10,
					12
				},
				"chaos_berzerker",
				{
					15,
					17
				}
			}
		},
		{
			name = "wave_e",
			weight = 4,
			breeds = {
				"chaos_fanatic",
				{
					18,
					20
				},
				"chaos_marauder",
				{
					13,
					14
				},
				"chaos_marauder_with_shield",
				7,
				"chaos_warrior",
				8
			}
		},
		end_time = 9999,
		start_time = 0
	}
	
	HordeCompositions.chaos_event_offensive_small = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					10,
					11
				},
				"chaos_fanatic",
				{
					4,
					5
				}
			}
		},
		end_time = 9999,
		start_time = 0
	}
	
	HordeCompositions.chaos_event_offensive = {
		{
			name = "wave_a",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_fanatic",
				{
					15,
					17
				},
				"chaos_berzerker",
				3
			}
		},
		{
			name = "wave_b",
			weight = 4,
			breeds = {
				"chaos_marauder",
				{
					15,
					17
				},
				"chaos_fanatic",
				{
					15,
					17
				},
				"chaos_raider",
				3
			}
		},
		end_time = 9999,
		start_time = 0
	}
	
------- A Quiet Drink ---------

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_pub_collapse_01 = {
		{
			"set_master_event_running",
			name = "crawl_pub_collapse_01"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_skaven_horde",
			composition_type = "crawl_pub_01_skaven_small"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_skaven_horde5",
			composition_type = "crawl_pub_01_skaven_extras"
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_pub_horde_front",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos5",
			composition_type = "event_extra_spice_large"
		},	
		{
			"delay",
			duration = 5
		},	
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_skaven_horde2",
			composition_type = "crawl_pub_01_skaven_medium"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_skaven_horde4",
			composition_type = "crawl_pub_01_skaven_extras"
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_pub_horde_front",
			composition_type = "onslaught_event_skaven_elite_adds"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 3 and count_event_breed("skaven_storm_vermin_commander") < 2 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 1
			end
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_pub_horde_front",
			composition_type = "beastmen_mix"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos4",
			composition_type = "beastmen_elite"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos2",
			composition_type = "beastmen_trash"
		},
		{
			"delay",
			duration = 7
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos5",
			composition_type = "beastmen_mix"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos",
			composition_type = "beastmen_mix"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("beastmen_gor") < 3 and count_event_breed("beastman_ungor") < 3 and count_event_breed("beastmen_bestigor") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_pub_collapse_01_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_pub_collapse_02 = {
		{
			"set_master_event_running",
			name = "crawl_pub_collapse_02"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos4",
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos",
			composition_type = "crawl_pub_01_chaos_small"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos3",
			composition_type = "crawl_pub_01_chaos_extras"
		},
		{
			"delay",
			duration = 5
		},	
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos2",
			composition_type = "crawl_pub_01_chaos_large"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos5",
			composition_type = "crawl_pub_01_chaos_extras"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_pub_horde_front",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			spawner_id = "crawl_pub_collapse_chaos4",
			composition_type = "mines_boss"
		},	
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2 and count_event_breed("chaos_fanatic") < 2 and count_event_breed("chaos_warrior") < 2 and count_event_breed("chaos_berzerker") < 2
			end
		},
		{
			"delay",
			duration = 1
		},
		{
			"control_pacing",
			enable = true
		},
		{
			"delay",
			duration = 3
		},	
		{
			"flow_event",
			flow_event_name = "crawl_pub_collapse_02_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_pub_02_wave_01 = {
		{
			"set_master_event_running",
			name = "crawl_bar_02"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "pub_02",
			composition_type = "crawl_end_event_skaven_small"
		},
		{
			"event_horde",
			spawner_id = "pub_02",
			composition_type = "crawl_end_event_storm_vermin"
		},
		{
			"event_horde",
			spawner_id = "pub_02_behind",
			composition_type = "crawl_end_event_skaven_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_middle_event_ale",
			composition_type = "onslaught_plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_middle_event_ale_house",
			composition_type = "onslaught_event_skaven_elite_adds"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 2 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"event_horde",
			spawner_id = "pub_02_chaos",
			composition_type = "crawl_end_event_chaos_01"
		},
		{
			"event_horde",
			spawner_id = "pub_02_chaos",
			composition_type = "crawl_end_event_chaos_small"
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_middle_event_ale",
			composition_type = "onslaught_chaos_warriors"
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_middle_event_ale_house",
			composition_type = "onslaught_event_chaos_elite_adds"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 1 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_warrior") < 2 and count_event_breed("chaos_raider") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_pub_02_wave_01_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_01 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_skaven_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 3 and count_event_breed("chaos_warrior") < 3 and count_event_breed("chaos_berzerker") < 4
			end
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_celebration_end_event_chimney",
			breed_name = {
				"skaven_rat_ogre",
				"chaos_troll"
			},
			optional_data = {
				max_health_modifier = 0.6
				}
		},		
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_chaos_01"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_storm_vermin"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 2 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2 and count_event_breed("chaos_fanatic") < 3
			end
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_skaven_shield"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "skaven_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_clan_rat_with_shield") < 3
			end
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_chaos_02"
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_end_event_dropdown",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "onslaught_chaos_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 4 and count_event_breed("chaos_marauder_with_shield") < 3 and count_event_breed("chaos_fanatic") < 2 and count_event_breed("chaos_berzerker") < 1 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_01_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_02 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_skaven_small"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_chaos_01"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_slave") < 2 and count_event_breed("chaos_marauder") < 1 and count_event_breed("chaos_marauder_with_shield") < 1 and count_event_breed("chaos_fanatic") < 2
			end
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_skaven_medium"
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_end_event_dropdown",
			composition_type = "onslaught_event_skaven_elite_adds"
		},	
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_storm_vermin"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "onslaught_plague_monks_small"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_slave") < 2 and count_event_breed("skaven_storm_vermin_commander") < 1
			end
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_chaos_02"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "onslaught_event_chaos_elite_adds"
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 1 and count_event_breed("chaos_fanatic") < 2 and count_event_breed("chaos_berzerker") < 1
			end
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_chaos_small"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_skaven_small"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "storm_vermin_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_slave") < 2 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_marauder") < 1 and count_event_breed("chaos_marauder_with_shield") < 1 and count_event_breed("chaos_fanatic") < 2
			end
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_chaos_small"
		},
		{
			"event_horde",
			spawner_id = "pub_floor_fall_b",
			composition_type = "crawl_end_event_floor_fall"
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_celebration_end_event_chimney",
			breed_name = {
				"skaven_rat_ogre",
				"chaos_spawn"
			},
			optional_data = {
				max_health_modifier = 0.6
			}	
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("chaos_raider") < 2 and count_event_breed("chaos_marauder") < 1 and count_event_breed("chaos_marauder_with_shield") < 1 and count_event_breed("chaos_fanatic") < 2 and count_event_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_fire_vo"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_skaven_medium"
		},
		{
			"event_horde",
			spawner_id = "end_event",
			composition_type = "crawl_end_event_skaven_monks"
		},
		{
			"event_horde",
			spawner_id = "onslaught_celebration_end_event_dropdown",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 1 and count_event_breed("skaven_slave") < 1 and count_event_breed("skaven_plague_monk") < 1 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed("chaos_fanatic") < 1 and count_event_breed("chaos_marauder") < 1 and count_event_breed("chaos_marauder_with_shield") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_02_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_specials_01 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "end_event_specials",
			difficulty_requirement = HARDER
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_celebration_end_event_chimney",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower",
				"skaven_pack_master"
			}
		},	
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("skaven_pack_master") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_specials_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_specials_02 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_specials",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "end_event_specials",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_celebration_end_event_chimney",
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master"
			}
		},
		{
			"delay",
			duration = 3
		},	
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_warpfire_thrower") < 1 and count_event_breed("skaven_gutter_runner") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_specials_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_specials_03 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_specials",
			breed_name = "skaven_pack_master"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "end_event_specials",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_ratling_gunner") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_specials_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_specials_04 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_specials",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "end_event_specials",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "onslaught_celebration_end_event_chimney",
			breed_name = {
				"skaven_pack_master",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"delay",
			duration = 3
		},	
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_ratling_gunner") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_specials_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_specials_06 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_specials",
			breed_name = "skaven_pack_master"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_specials",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "end_event_specials",
			difficulty_requirement = HARDER
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "end_event_specials",
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_pack_master") < 1 and count_event_breed("skaven_poison_wind_globadier") < 1 and count_event_breed("skaven_gutter_runner") < 1 and count_event_breed("skaven_ratling_gunner") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_specials_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_specials_bar = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_specials_bar",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "end_event_specials",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_ratling_gunner") < 1 and count_event_breed("skaven_poison_wind_globadier") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_specials_bar_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_bar_fight_open_stairs = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"event_horde",
			spawner_id = "end_event_break_wall_01",
			composition_type = "crawl_end_event_open_stairs"
		},
		{
			"event_horde",
			spawner_id = "end_event_break_wall_01_2",
			composition_type = "crawl_end_event_open_stairs"
		},
		{
			"event_horde",
			spawner_id = "end_event_break_wall_01_3",
			composition_type = "crawl_end_event_open_stairs"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_warrior") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "crawl_bar_fight_open_stairs_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_gauntlet_01 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "gauntlet",
			composition_type = "crawl_end_event_chaos_01"
		},
		{
			"event_horde",
			spawner_id = "gauntlet",
			composition_type = "crawl_end_event_chaos_small"
		},
		{
			"event_horde",
			spawner_id = "gauntlet",
			composition_type = "onslaught_event_chaos_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "gauntlet",
			breed_name = {
				"chaos_corruptor_sorcerer",
				"skaven_pack_master",
				"skaven_poison_wind_globadier"
			}
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 1 and count_event_breed("chaos_fanatic") < 2 and count_event_breed("chaos_raider") < 2 and count_event_breed("chaos_warrior") < 2 and count_event_breed("chaos_berzerker") < 2
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"flow_event",
			flow_event_name = "crawl_gauntlet_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_gauntlet_02 = {
		{
			"set_master_event_running",
			name = "crawl_bar_fight"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "gauntlet",
			composition_type = "crawl_end_event_skaven_large"
		},
		{
			"event_horde",
			spawner_id = "gauntlet",
			composition_type = "onslaught_event_skaven_elite_adds"
		},
		{
			"spawn_at_raw",
			spawner_id = "gauntlet",
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_ratling_gunner",
				"skaven_gutter_runner"
			}
		},	
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 1 and count_event_breed( "skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"flow_event",
			flow_event_name = "crawl_gauntlet_done"
		}
	}

TerrorEventBlueprints.dlc_celebrate_crawl.crawl_floor_fall = {
		{
			"event_horde",
			spawner_id = "pub_floor_fall_a",
			composition_type = "crawl_end_event_floor_fall"
		},
		{
			"event_horde",
			spawner_id = "pub_floor_fall_b",
			composition_type = "crawl_end_event_floor_fall"
		},
		{
			"delay",
			duration = 0.5
		},
		{
			"event_horde",
			spawner_id = "pub_floor_fall_a",
			composition_type = "chaos_berzerkers_small"
		},
		{
			"event_horde",
			spawner_id = "pub_floor_fall_b",
			composition_type = "chaos_berzerkers_small"
		}
	}
