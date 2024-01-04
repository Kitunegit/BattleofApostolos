#> collision_check:block_check/change_group/trapdoors
#
# 基準bottom,false
#
# @within collision_check:block_check/change_group_e

execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run scoreboard players set #special collision_check 1
execute if score #special collision_check matches 0 if score #up_down collision_check matches 1 run function collision_check:pos_get/convert.up_down
execute if score #special collision_check matches 1 if score #direction collision_check matches 1 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 1 if score #direction collision_check matches 4 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 1 if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check
execute if score #special collision_check matches 1 run scoreboard players operation #Pos.Y collision_check >< #Pos.Z collision_check

execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0