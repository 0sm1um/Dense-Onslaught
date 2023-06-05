local custom_spawn_data = {
    {
        position = Vector3Box(-36.0143, 16.1249, 1.22907),
        terror_event_id = "onslaught_magnus_boss_middle",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation =  QuaternionBox(Quaternion.from_elements(0, 0, 0.72287, -0.690984)),
    },
    {
        position = Vector3Box(237.319, -137.575, 86.7056),
        terror_event_id = "onslaught_magnus_boss_end",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation =  QuaternionBox(Quaternion.from_elements(0, 0, 0.329146, -0.944279)),
    },
}

return custom_spawn_data