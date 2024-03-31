#> pvp_data:pvpfunctions/jobs/archer/ult/arrow_fall
#
# 矢を降らす
#
# @internal

# 矢を召喚
    execute at @e[tag=archer.ult_target] run summon arrow ~ ~8 ~ {Tags:[archer.ult]}
    execute as @e[type=arrow,tag=archer.ult,tag=!archer.warp] at @s run spreadplayers ~ ~ 0.1 2 true @s
    execute as @e[type=arrow,tag=archer.ult,tag=!archer.warp] at @s run tp @s ~ ~8 ~
    tag @e[type=arrow,tag=archer.ult,tag=!archer.warp] add archer.warp
# CTを設定
    scoreboard players set @s archer.arrow_interval 2