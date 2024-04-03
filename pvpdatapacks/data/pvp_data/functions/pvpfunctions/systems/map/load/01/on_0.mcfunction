#> pvp_data:pvpfunctions/systems/map/load/01/on_0
#
# @within function pvp_data:pvpfunctions/systems/map/load/01/scheduled

# timer
    #declare score_holder $ticks

    scoreboard players add $ticks system.map.timer 0

# z-3
    execute if score $ticks system.map.timer matches 0 run place template pvp_data:boa_map_01/boa_map_01_x-3z-3 ~-144 ~ ~-144
    execute if score $ticks system.map.timer matches 2 run place template pvp_data:boa_map_01/boa_map_01_x-2z-3 ~-96 ~ ~-144
    execute if score $ticks system.map.timer matches 4 run place template pvp_data:boa_map_01/boa_map_01_x-1z-3 ~-48 ~ ~-144
    execute if score $ticks system.map.timer matches 6 run place template pvp_data:boa_map_01/boa_map_01_x0z-3 ~ ~ ~-144
    execute if score $ticks system.map.timer matches 8 run place template pvp_data:boa_map_01/boa_map_01_x1z-3 ~48 ~ ~-144
    execute if score $ticks system.map.timer matches 10 run place template pvp_data:boa_map_01/boa_map_01_x2z-3 ~96 ~ ~-144

# z-2
    execute if score $ticks system.map.timer matches 12 run place template pvp_data:boa_map_01/boa_map_01_x-3z-2 ~-144 ~ ~-96
    execute if score $ticks system.map.timer matches 14 run place template pvp_data:boa_map_01/boa_map_01_x-2z-2 ~-96 ~ ~-96
    execute if score $ticks system.map.timer matches 16 run place template pvp_data:boa_map_01/boa_map_01_x-1z-2 ~-48 ~ ~-96
    execute if score $ticks system.map.timer matches 18 run place template pvp_data:boa_map_01/boa_map_01_x0z-2 ~ ~ ~-96
    execute if score $ticks system.map.timer matches 20 run place template pvp_data:boa_map_01/boa_map_01_x1z-2 ~48 ~ ~-96
    execute if score $ticks system.map.timer matches 22 run place template pvp_data:boa_map_01/boa_map_01_x2z-2 ~96 ~ ~-96

# z-1
    execute if score $ticks system.map.timer matches 24 run place template pvp_data:boa_map_01/boa_map_01_x-3z-1 ~-144 ~ ~-48
    execute if score $ticks system.map.timer matches 26 run place template pvp_data:boa_map_01/boa_map_01_x-2z-1 ~-96 ~ ~-48
    execute if score $ticks system.map.timer matches 28 run place template pvp_data:boa_map_01/boa_map_01_x-1z-1 ~-48 ~ ~-48
    execute if score $ticks system.map.timer matches 30 run place template pvp_data:boa_map_01/boa_map_01_x0z-1 ~ ~ ~-48
    execute if score $ticks system.map.timer matches 32 run place template pvp_data:boa_map_01/boa_map_01_x1z-1 ~48 ~ ~-48
    execute if score $ticks system.map.timer matches 34 run place template pvp_data:boa_map_01/boa_map_01_x2z-1 ~96 ~ ~-48

# z0
    execute if score $ticks system.map.timer matches 36 run place template pvp_data:boa_map_01/boa_map_01_x-3z0 ~-144 ~ ~
    execute if score $ticks system.map.timer matches 38 run place template pvp_data:boa_map_01/boa_map_01_x-2z0 ~-96 ~ ~
    execute if score $ticks system.map.timer matches 40 run place template pvp_data:boa_map_01/boa_map_01_x-1z0 ~-48 ~ ~
    execute if score $ticks system.map.timer matches 42 run place template pvp_data:boa_map_01/boa_map_01_x0z0 ~ ~ ~
    execute if score $ticks system.map.timer matches 44 run place template pvp_data:boa_map_01/boa_map_01_x1z0 ~48 ~ ~
    execute if score $ticks system.map.timer matches 46 run place template pvp_data:boa_map_01/boa_map_01_x2z0 ~96 ~ ~

# z1
    execute if score $ticks system.map.timer matches 48 run place template pvp_data:boa_map_01/boa_map_01_x-3z1 ~-144 ~ ~48
    execute if score $ticks system.map.timer matches 50 run place template pvp_data:boa_map_01/boa_map_01_x-2z1 ~-96 ~ ~48
    execute if score $ticks system.map.timer matches 52 run place template pvp_data:boa_map_01/boa_map_01_x-1z1 ~-48 ~ ~48
    execute if score $ticks system.map.timer matches 54 run place template pvp_data:boa_map_01/boa_map_01_x0z1 ~ ~ ~48
    execute if score $ticks system.map.timer matches 56 run place template pvp_data:boa_map_01/boa_map_01_x1z1 ~48 ~ ~48
    execute if score $ticks system.map.timer matches 58 run place template pvp_data:boa_map_01/boa_map_01_x2z1 ~96 ~ ~48

# z2
    execute if score $ticks system.map.timer matches 60 run place template pvp_data:boa_map_01/boa_map_01_x-3z2 ~-144 ~ ~96
    execute if score $ticks system.map.timer matches 62 run place template pvp_data:boa_map_01/boa_map_01_x-2z2 ~-96 ~ ~96
    execute if score $ticks system.map.timer matches 64 run place template pvp_data:boa_map_01/boa_map_01_x-1z2 ~-48 ~ ~96
    execute if score $ticks system.map.timer matches 66 run place template pvp_data:boa_map_01/boa_map_01_x0z2 ~ ~ ~96
    execute if score $ticks system.map.timer matches 68 run place template pvp_data:boa_map_01/boa_map_01_x1z2 ~48 ~ ~96
    execute if score $ticks system.map.timer matches 70 run place template pvp_data:boa_map_01/boa_map_01_x2z2 ~96 ~ ~96

# timer
    scoreboard players add $ticks system.map.timer 1

    execute if score $ticks system.map.timer matches ..69 run schedule function pvp_data:pvpfunctions/systems/map/load/01/scheduled 1t

    execute if score $ticks system.map.timer matches 70.. run scoreboard players reset $ticks system.map.timer
