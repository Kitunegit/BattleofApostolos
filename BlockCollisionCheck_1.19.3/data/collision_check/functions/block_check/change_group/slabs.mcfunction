#> collision_check:block_check/change_group/slabs
#
# 基準bottom
#
# @within collision_check:block_check/change_group_e

execute if score #up_down collision_check matches 1 run function collision_check:pos_get/convert.up_down

execute if block ~ ~ ~ #minecraft:slabs[type=double] run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0