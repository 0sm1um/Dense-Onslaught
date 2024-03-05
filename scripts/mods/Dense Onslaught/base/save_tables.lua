local mod = get_mod("Dense Onslaught")
local mutator = mod:persistent_table("Dense Onslaught")

-- Pacing
if mod.OriginalDifficultySettings == nil and (DifficultySettings ~= nil) then
	mod.OriginalDifficultySettings = table.clone(DifficultySettings)
end
if mod.OriginalConflictDirectors == nil and (ConflictDirectors ~= nil) then
	mod.OriginalConflictDirectors = table.clone(ConflictDirectors)
end
if mod.OriginalBreeds == nil and (Breeds ~= nil) then
	mod.OriginalBreeds = table.clone(Breeds)
end
--if mod.OriginalBreedPacks == nil and (BreedPacks ~= nil) then
--	mod.OriginalBreedPacks = table.clone(BreedPacks)
--end
--if mod.OriginalBreedPacksBySize == nil and (BreedPacksBySize ~= nil) then
--	mod.OriginalBreedPacksBySize = table.clone(BreedPacksBySize)
--end
if mod.OriginalRoamingSettings == nil and (BreedPacksBySize ~= nil) then
	mod.OriginalRoamingSettings = table.clone(RoamingSettings)
end
if mod.OriginalPackSpawningSettings == nil and (PackSpawningSettings ~= nil) then
	mod.OriginalPackSpawningSettings = table.clone(PackSpawningSettings)
end
if mod.OriginalPacingSettings == nil and (PacingSettings ~= nil) then
	mod.OriginalPacingSettings = table.clone(PacingSettings)
end
if mod.OriginalIntensitySettings == nil and (IntensitySettings ~= nil) then
	mod.OriginalIntensitySettings = table.clone(IntensitySettings)
end
if mod.OriginalRecycleSettings == nil and (RecycleSettings ~= nil) then
	mod.OriginalRecycleSettings  = table.clone(RecycleSettings)
end
if mod.OriginalHordeSettings == nil and (HordeSettings ~= nil) then
	mod.OriginalHordeSettings = table.clone(HordeSettings)
end
if mod.OriginalHordeCompositions == nil and (HordeCompositions ~= nil) then
	mod.OriginalHordeCompositions = table.clone(HordeCompositions)
end
if mod.OriginalHordeCompositionsPacing == nil and (HordeCompositionsPacing ~= nil) then
	mod.OriginalHordeCompositionsPacing = table.clone(HordeCompositionsPacing)
end
if mod.OriginalSpecialsSettings == nil and (SpecialsSettings ~= nil) then
	mod.OriginalSpecialsSettings = table.clone(SpecialsSettings)
end
if mod.OriginalConflictSettings == nil and (ConflictSettings ~= nil) then
	mod.OriginalConflictSettings = table.clone(ConflictSettings)
end
if mod.OriginalGenericTerrorEvents == nil and (GenericTerrorEvents ~= nil) then
	mod.OriginalGenericTerrorEvents = table.clone(GenericTerrorEvents)
end
if mod.OriginalTerrorEventBlueprints == nil and (TerrorEventBlueprints ~= nil) then
	mod.OriginalTerrorEventBlueprints = table.clone(TerrorEventBlueprints)
end
if mod.OriginalBossSettings == nil and (BossSettings ~= nil) then
	mod.OriginalBossSettings = table.clone(BossSettings)
end
if mod.OriginalPatrolFormationSettings == nil and (PatrolFormationSettings ~= nil) then
	mod.OriginalPatrolFormationSettings = table.clone(PatrolFormationSettings)
end