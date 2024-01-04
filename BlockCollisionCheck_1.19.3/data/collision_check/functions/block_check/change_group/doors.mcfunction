#> collision_check:block_check/change_group/doors
#
# 基準south,false
#
# @within collision_check:block_check/change_group_f

execute if block ~ ~ ~ #minecraft:doors[open=true,hinge=left] run scoreboard players set #special collision_check 1
execute if block ~ ~ ~ #minecraft:doors[open=true,hinge=right] run scoreboard players set #special collision_check 2
execute if score #special collision_check matches 0 if score #direction collision_check matches 1 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 0 if score #direction collision_check matches 4 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 0 if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check
execute if score #special collision_check matches 1 if score #direction collision_check matches 4 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 1 if score #direction collision_check matches 2 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 2 if score #direction collision_check matches 1 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 2 if score #direction collision_check matches 3 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 1..2 if score #direction collision_check matches 1..2 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check

execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 0..1875 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0
