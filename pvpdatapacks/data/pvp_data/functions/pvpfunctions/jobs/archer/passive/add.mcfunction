#> pvp_data:pvpfunctions/jobs/archer/passive/add
#
# 矢を補給
#
# @internal

# 矢のスコア増加
    execute if predicate pvp_data:50_rng run tag @s add archer.arrow_add
    execute if entity @s[tag=archer.arrow_add] run scoreboard players add @s passive_count 1
    execute if entity @s[tag=archer.arrow_add] at @s run playsound minecraft:entity.leash_knot.break player @s ~ ~ ~ 1 0.7
# クールタイムをセット
    scoreboard players set @s passive_cool 15
    tag @s remove archer.arrow_add