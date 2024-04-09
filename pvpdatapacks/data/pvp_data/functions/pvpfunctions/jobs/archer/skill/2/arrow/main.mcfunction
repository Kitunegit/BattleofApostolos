#> pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/main
#
# 矢の常時実行処理
#
# @internal

# スコア増やす
    scoreboard players add @s skill_2_count 1

# 演出
    execute if score @s skill_2_count matches 4 at @s run particle minecraft:electric_spark ~ ~ ~ 1 1 1 1 10
    execute if score @s skill_2_count matches 4 at @s run playsound minecraft:block.scaffolding.place player @a[distance=..10] ~ ~ ~ 1 0.5
    execute if score @s skill_2_count matches 4..80 at @s run particle dust 0 -1 0 5 ~ ~ ~ 0.1 0.1 0.1 0.1 1
    execute if score @s skill_2_count matches 40..1000 at @s run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.1 1
    execute if score @s skill_2_count matches 4..80 at @s run playsound minecraft:block.scaffolding.place player @a[distance=..10] ~ ~ ~ 1 2