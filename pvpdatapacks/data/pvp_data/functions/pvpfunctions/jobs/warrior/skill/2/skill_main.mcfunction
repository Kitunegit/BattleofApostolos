#> pvp_data:pvpfunctions/jobs/warrior/skill/2/skill_main
#
# 戦士スキル2効果中処理
#
# @internal

execute if score @s skill_2_count matches 15..30 at @s run tp @s ~ ~ ~ ~ ~-10
execute if score @s skill_2_count matches 13 at @s run playsound minecraft:item.trident.throw player @a[distance=..10] ~ ~ ~ 1 1.2
execute if score @s skill_2_count matches 5..15 at @s run tp @s ~ ~ ~ ~ ~30
execute if score @s skill_2_count matches 1 run function pvp_data:pvpfunctions/jobs/warrior/skill/2/shock

scoreboard players remove @s skill_2_count 1