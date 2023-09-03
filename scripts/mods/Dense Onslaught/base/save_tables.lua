local mod = get_mod("Dense Onslaught")
local mutator = mod:persistent_table("Dense Onslaught")

-- SOMETHING WRONG WITH BOSS SETTINGS


	-- Pacing
	--mutator.OriginalConflictDirectors = table.clone(ConflictDirectors)
	mutator.OriginalDifficultySettings = table.clone(DifficultySettings)
	mutator.OriginalBreeds = table.clone(Breeds)
	mutator.OriginalBreedPacks = table.clone(BreedPacks)
	mutator.OriginalBreedPacksBySize = table.clone(BreedPacksBySize)
	mutator.OriginalPackSpawningSettings = table.clone(PackSpawningSettings)
	mutator.OriginalPacingSettings = table.clone(PacingSettings)
	mutator.OriginalRecycleSettings  = table.clone(RecycleSettings)
	mutator.OriginalHordeCompositions = table.clone(HordeCompositions)
	mutator.OriginalHordeCompositionsPacing = table.clone(HordeCompositionsPacing)
	mutator.OriginalSpecialsSettings = table.clone(SpecialsSettings)
	--mutator.OriginalCurrentSpecialsSettings = table.clone(CurrentSpecialsSettings)

	-- Events and Triggers
	mutator.OriginalGenericTerrorEvents = table.clone(GenericTerrorEvents)
	mutator.OriginalTerrorEventBlueprints = table.clone(TerrorEventBlueprints)
	mutator.OriginalBossSettings = table.clone(BossSettings)
	mutator.OriginalPatrolFormationSettings = table.clone(PatrolFormationSettings)

	-- Dutch Remnants
	mutator.OriginalBreedActions = table.clone(BreedActions)
