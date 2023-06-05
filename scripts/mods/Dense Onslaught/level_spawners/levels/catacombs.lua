local custom_spawn_data = {
    {
        position = Vector3Box(-163.64, 2.9, -15.9),
        terror_event_id = "onslaught_pool_boss_1",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, -0.009, -0.999)),
    },
    {
        position = Vector3Box(-152.19, -27.16, -10.2),
        terror_event_id = "onslaught_pool_boss_2",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, -0.009, -0.999)),
    },
    {
        position = Vector3Box(-114.17, -30, 0.3),
        terror_event_id = "onslaught_pool_boss_3",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, 0.709, -0.705)),
    },
}

return custom_spawn_data