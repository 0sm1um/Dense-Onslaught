local mod = get_mod("Dense Onslaught")
local mutator = mod:persistent_table("Dense Onslaught")

	-- Pacing
	mutator.OriginalConflictDirectors = table.clone(ConflictDirectors)
	mutator.OriginalBreeds = table.clone(Breeds)
	mutator.OriginalBreedPacks = table.clone(BreedPacks)
	mutator.OriginalPackSpawningSettings = table.clone(PackSpawningSettings)
	mutator.OriginalPacingSettings = table.clone(PacingSettings)
	mutator.OriginalRecycleSettings  = table.clone(RecycleSettings)
	mutator.OriginalHordeCompositions = table.clone(HordeCompositions)
	mutator.OriginalHordeCompositionsPacing = table.clone(HordeCompositionsPacing)
	mutator.OriginalSpecialsSettings = table.clone(SpecialsSettings)

	-- Events and Triggers
	mutator.OriginalGenericTerrorEvents = table.clone(GenericTerrorEvents)
	mutator.OriginalTerrorEventBlueprints = table.clone(TerrorEventBlueprints)
	mutator.OriginalBossSettings = table.clone(BossSettings)
	mutator.OriginalPatrolFormationSettings = table.clone(PatrolFormationSettings)

	-- Dutch Remnants
	mutator.OriginalBreedActions = table.clone(BreedActions)
	mutator.OriginalBuffTemplates = table.clone(BuffTemplates)
