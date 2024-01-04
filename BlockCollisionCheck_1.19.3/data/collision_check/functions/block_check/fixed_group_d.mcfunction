#> collision_check:block_check/change_group/fixed_group_d
#
# @within collision_check:block_check/fixed_collision


# 書見台
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:lectern run function collision_check:block_check/fixed_groupe/lectern
# 醸造台
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:brewing_stand run function collision_check:block_check/fixed_groupe/brewing_stand
# コンポスター
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:composter run function collision_check:block_check/fixed_groupe/composter
# 大釜
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:cauldrons run function collision_check:block_check/fixed_groupe/cauldrons