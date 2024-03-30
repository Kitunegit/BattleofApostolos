#> pvp_data:pvpfunctions/jobs/archer/passive/add
#
# 矢を補給
#
# @internal

# 矢のスコア増加
    execute if predicate pvp_data:75_rng run scoreboard players add @s passive_count 1
# クールタイムをセット
    scoreboard players set @s passive_cool 15