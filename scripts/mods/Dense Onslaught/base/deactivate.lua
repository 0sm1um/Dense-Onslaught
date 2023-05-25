local mod = get_mod("Dense Onslaught")
local mutator = mod:persistent_table("Dense Onslaught")

	-- Pacing
	Breeds = mutator.OriginalBreeds
	BreedPacks = mutator.OriginalBreedPacks
	BreedPacksBySize = mutator.OriginalBreedPacksBySize
	PackSpawningSettings = mutator.OriginalPackSpawningSettings
	PacingSettings = mutator.OriginalPacingSettings
	RecycleSettings  = mutator.OriginalRecycleSettings
	HordeCompositions = mutator.OriginalHordeCompositions
	HordeCompositionsPacing = mutator.OriginalHordeCompositionsPacing
	SpecialsSettings = mutator.OriginalSpecialsSettings

	-- Events and Triggers
	GenericTerrorEvents = mutator.OriginalGenericTerrorEvents
	TerrorEventBlueprints = mutator.OriginalTerrorEventBlueprints
	BossSettings = mutator.OriginalBossSettings
	PatrolFormationSettings = mutator.OriginalPatrolFormationSettings

	-- Dutch Remnants
	BreedActions = mutator.OriginalBreedActions
	BuffTemplates = mutator.OriginalBuffTemplates

	--Managers = mutator.OriginalManagers
	ConflictDirectors = mutator.OriginalConflictDirectors
