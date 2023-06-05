local custom_spawn_data = {
    {
        position = Vector3Box(-20.7, -273.77, -2),
        terror_event_id = "onslaught_gate_spawner_1",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, 0.91, -0.412)),
    },
    {
        position = Vector3Box(2.68, -274.39, -0.7),
        terror_event_id = "onslaught_gate_spawner_2",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, 0.894, 0.446)),
    },
    {
        position = Vector3Box(-10.15, -297.67, 0.5),
        terror_event_id = "onslaught_gate_spawner_3",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, 0.956, 0.294)),
    },
    {
        position = Vector3Box(-23.63, 48.57, 20.5),
        terror_event_id = "onslaught_cart_guard_1",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, 0.989, -0.147)),
    },
    {
        position = Vector3Box(-17.70, 39.9, 20.5),
        terror_event_id = "onslaught_cart_guard_2",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, 0.899, 0.437)),
    },
    {
        position = Vector3Box(248.979, -67.0314, 45.8501),
        terror_event_id = "onslaught_camp_boss_top",
        spawn_func = "setup_custom_horde_spawner",
        hidden = false,
    },
}   

return custom_spawn_data