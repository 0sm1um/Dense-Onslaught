RoamingSettings = RoamingSettings or {}

local director_roaming = table.clone(RoamingSettings.default)

director_roaming = {
    despawn_distance = 90,
    despawn_path_distance = 150,
    despawn_distance_z = 60,
    disabled = false
}

return director_roaming