#> pvp_data:pvpfunctions/systems/border/change_center
#
# @input
#   args
#       distance: double
#
# @within function pvp_data:pvpfunctions/systems/border/tick

# タイマー減らす
    scoreboard players remove $move.time system.border 1

# 方向取得
    #declare tag system.border.random_direction
    summon marker 0.0 0.0 0.0 {Tags: ["system.border.random_direction"]}

    execute store result entity @e[tag=system.border.random_direction,limit=1] Rotation[0] float 1 run scoreboard players get $move.random_angle system.border

    $execute as @e[tag=system.border.random_direction,limit=1] at @s run tp ^ ^ ^$(distance)

# 移動
    #declare score_holder $move.coords.x
    execute store result score $move.coords.x system.border run data get entity @e[tag=system.border.random_direction,limit=1] Pos[0] 10000

    #declare score_holder $move.coords.z
    execute store result score $move.coords.z system.border run data get entity @e[tag=system.border.random_direction,limit=1] Pos[2] 10000

    #declare score_holder $move.center.x
    execute store result score $move.center.x system.border run data get storage border: config.center[0] 10000

    #declare score_holder $move.center.z
    execute store result score $move.center.z system.border run data get storage border: config.center[1] 10000

    scoreboard players operation $move.center.x system.border += $move.coords.x system.border

    scoreboard players operation $move.center.z system.border += $move.coords.z system.border

    execute store result storage border: config.center[0] double 0.0001 run scoreboard players get $move.center.x system.border

    execute store result storage border: config.center[1] double 0.0001 run scoreboard players get $move.center.z system.border

    scoreboard players reset $move.coords.x system.border

    scoreboard players reset $move.coords.z system.border

    scoreboard players reset $move.center.x system.border

    scoreboard players reset $move.center.z system.border

# リセット
    kill @e[tag=system.border.random_direction]

# 0検知
    execute if score $move.time system.border matches ..0 run scoreboard players reset $move.distance system.border

    execute if score $move.time system.border matches ..0 run scoreboard players reset $move.random_angle system.border

    execute if score $move.time system.border matches ..0 run scoreboard players reset $move.time system.border
