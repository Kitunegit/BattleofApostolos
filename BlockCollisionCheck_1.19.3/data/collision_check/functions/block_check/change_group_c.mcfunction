#> collision_check:block_check/change_group/change_group_c
#
# @within collision_check:block_check/change_collision


# 雪
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:snow run function collision_check:block_check/change_group/snow
# はしご
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:ladder run function collision_check:block_check/change_group/ladder
# 鎖
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:chain run function collision_check:block_check/change_group/chain
# 避雷針
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/rods run function collision_check:block_check/change_group/rods
# 鐘
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:bell run function collision_check:block_check/change_group/bell
