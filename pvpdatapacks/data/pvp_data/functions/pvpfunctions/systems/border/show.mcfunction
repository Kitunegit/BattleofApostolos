#> pvp_data:pvpfunctions/systems/border/show
#
# @input
#   args
#       radius: double
#
# @within
#   function
#       pvp_data:pvpfunctions/systems/border/tick
#       pvp_data:pvpfunctions/systems/border/show

# 再帰用カウントダウン
    scoreboard players remove $count system.border 1

    #declare tag system.border.line

# パーティクルを出す方向を決定
    execute store result entity @s Rotation[0] float 0.001 run random value -180000..179000
    $execute at @s run summon marker ^ ^ ^$(radius) {Tags: ["system.border.line"]}

    execute store result entity @s Rotation[0] float 0.001 run random value -180000..179000
    $execute at @s run summon marker ^ ^ ^$(radius) {Tags: ["system.border.line"]}

    execute store result entity @s Rotation[0] float 0.001 run random value -180000..179000
    $execute at @s run summon marker ^ ^ ^$(radius) {Tags: ["system.border.line"]}

    execute store result entity @s Rotation[0] float 0.001 run random value -180000..179000
    $execute at @s run summon marker ^ ^ ^$(radius) {Tags: ["system.border.line"]}

    execute store result entity @s Rotation[0] float 0.001 run random value -180000..179000
    $execute at @s run summon marker ^ ^ ^$(radius) {Tags: ["system.border.line"]}

    execute store result entity @s Rotation[0] float 0.001 run random value -180000..179000
    $execute at @s run summon marker ^ ^ ^$(radius) {Tags: ["system.border.line"]}

    execute store result entity @s Rotation[0] float 0.001 run random value -180000..179000
    $execute at @s run summon marker ^ ^ ^$(radius) {Tags: ["system.border.line"]}

    execute store result entity @s Rotation[0] float 0.001 run random value -180000..179000
    $execute at @s run summon marker ^ ^ ^$(radius) {Tags: ["system.border.line"]}

# 通常時パーティクル
    execute at @e[tag=system.border.line] run particle dust 0 1 1 8 ~ ~64 ~ 1.5 128 1.5 1 5 force

# 接近時
    # execute as @a at @s positioned ~ 0 ~ if entity @e[tag=system.border.line,distance=..20] at @s positioned ~ ~1000 ~ facing entity @e[tag=system.border.line] feet positioned ^ ^ ^1000 run particle dust 0 1 1 8 ~ ~ ~ 2 16 2 1 10 normal @s

# リセット
    kill @e[tag=system.border.line]

# 再帰
    execute if score $count system.border matches 1.. run function pvp_data:pvpfunctions/systems/border/show
