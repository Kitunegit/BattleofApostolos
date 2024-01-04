#> collision_check:block_check/change_group/change_group_e
#
# @within collision_check:block_check/change_collision


# ろうそく
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:candles run function collision_check:block_check/change_group/candles
# 金床
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:anvil run function collision_check:block_check/change_group/anvil
# ハーフブロック
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:slabs run function collision_check:block_check/change_group/slabs
# トラップドア
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:trapdoors run function collision_check:block_check/change_group/trapdoors
# 階段
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:stairs run function collision_check:block_check/change_group/stairs
