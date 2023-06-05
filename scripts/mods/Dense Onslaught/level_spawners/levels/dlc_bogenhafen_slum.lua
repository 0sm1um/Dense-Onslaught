local custom_spawn_data = {
    {
        position = Vector3Box(83.87, -43, 6.5),
        terror_event_id = "onslaught_slum_gauntlet_behind",
        spawn_func = "setup_custom_horde_spawner",
        hidden = true,
    },
    {
        position = Vector3Box(165.44, 14.82, 3.6),
        terror_event_id = "onslaught_slum_gauntlet_cutoff",
        spawn_func = "setup_custom_horde_spawner",
        hidden = true,
    },
    {
        position = Vector3Box(154.77, -9.38, 0.6),
        terror_event_id = "onslaught_slum_gauntlet_cutoff",
        spawn_func = "setup_custom_horde_spawner",
        hidden = true,
    },
    {
        position = Vector3Box(-20.6403, 155.328, 17.9035),
        terror_event_id = "onslaught_slum_boss_event",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, -0.704612, -0.709593)),
    },
}

return custom_spawn_data