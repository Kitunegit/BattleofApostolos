#> pvp_data:pvpfunctions/jobs/warrior/skill/2/skill_main
#
# 戦士スキル2効果中処理
#
# @internal

# 飛翔音
    execute if score @s skill_2_count matches 10 at @s run playsound minecraft:item.trident.throw player @a[distance=..10] ~ ~ ~ 1 1.2

# 上昇
    execute if score @s skill_2_count matches 2..10 at @s if block ~ ~1 ~ air if entity @s[tag=!Warrior.Skill2_Rclick] run tp @s ~ ~1 ~
# 途中で右クリしたら即落下
    execute if score @s skill_2_count matches 2..10 if predicate pvp_data:r_click/cmd42 if score @s r_click matches 1.. run tag @s add Warrior.Skill2_Rclick
# 落下処理
    execute if entity @s[tag=Warrior.Skill2_Rclick] if block ~ ~-2 ~ air run tp @s ~ ~-2 ~
    execute as @e[tag=Warrior.Skill2_Rclick] run function pvp_data:pvpfunctions/jobs/warrior/skill/2/shock
    execute if entity @s[tag=Warrior.Skill2_Rclick] run scoreboard players reset @s skill_2_count
    execute if entity @s[tag=Warrior.Skill2_Rclick] run tag @s remove Warrior.Skill2_Rclick
# 制限時間で強制落下
    execute if score @s skill_2_count matches 1 at @s if block ~ ~-8.5 ~ air run tp @s ~ ~-8.5 ~
    execute if score @s skill_2_count matches 1 run function pvp_data:pvpfunctions/jobs/warrior/skill/2/shock
# カウントダウン
    scoreboard players remove @s skill_2_count 1