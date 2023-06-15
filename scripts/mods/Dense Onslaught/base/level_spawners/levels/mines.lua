local custom_spawn_data = {
    {
        position = Vector3Box(216.879, -360.958, -15.0424),
        terror_event_id = "onslaught_mines_bell_boss",
        spawn_func = "setup_custom_horde_spawner",
        hidden = true,
    },
    {
        position = Vector3Box(254.738, -380.498, -10.947),
        terror_event_id = "onslaught_mines_horde_front",
        spawn_func = "setup_custom_horde_spawner",
        hidden = true,
    },
    {
        position = Vector3Box(284.75, -327.1, -29.5),
        terror_event_id = "onslaught_mines_extra_troll_1",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, -0.377, -0.926)),
    },
    {
        position = Vector3Box(222.67, -350.32, -21.5),
        terror_event_id = "onslaught_mines_extra_troll_2",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, 0.571, -0.82)),
    },
    {
        position = Vector3Box(276.667, -377.996, -17.3902),
        terror_event_id = "onslaught_mines_extra_troll_3",
        spawn_func = "setup_custom_raw_spawner",
        hidden = true,
        rotation = QuaternionBox(Quaternion.from_elements(0, 0, -0.849433, -0.527696)),
    },
}

return custom_spawn_data