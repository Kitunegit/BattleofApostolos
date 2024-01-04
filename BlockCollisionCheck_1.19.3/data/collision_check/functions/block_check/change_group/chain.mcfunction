#> collision_check:block_check/change_group/chain
#
# 基準y
#
# @within collision_check:block_check/change_group_c

execute if block ~ ~ ~ minecraft:chain[axis=x] run scoreboard players operation #Pos.X collision_check >< #Pos.Y collision_check
execute if block ~ ~ ~ minecraft:chain[axis=z] run scoreboard players operation #Pos.Z collision_check >< #Pos.Y collision_check

execute if score #Pos.X collision_check matches 4062..5938 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 4062..5938 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0
