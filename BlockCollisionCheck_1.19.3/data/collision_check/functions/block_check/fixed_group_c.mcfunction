#> collision_check:block_check/change_group/fixed_group_c
#
# @within collision_check:block_check/fixed_collision


# スイレンの葉
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:lily_pad run function collision_check:block_check/fixed_groupe/lily_pad
# ドラゴンの卵
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:dragon_egg run function collision_check:block_check/fixed_groupe/dragon_egg
# コンジット
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:conduit run function collision_check:block_check/fixed_groupe/conduit
# ろうそく付きケーキ
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:candle_cakes run function collision_check:block_check/fixed_groupe/candle_cakes
# ツツジ
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_collision/azalea run function collision_check:block_check/fixed_groupe/azalea