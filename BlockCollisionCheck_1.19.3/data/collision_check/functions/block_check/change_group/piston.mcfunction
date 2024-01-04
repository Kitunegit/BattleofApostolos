#> collision_check:block_check/change_group/piston
#
# 基準up
#
# @within collision_check:block_check/change_group_b

execute if block ~ ~ ~ #collision_check:change_collision/piston[extended=true] run scoreboard players set #special collision_check 1
execute if block ~ ~ ~ minecraft:piston_head run scoreboard players set #special collision_check 2
execute if score #special collision_check matches 1..2 if score #up_down collision_check matches 1 run function collision_check:pos_get/convert.up_down
execute if score #special collision_check matches 1..2 if score #direction collision_check matches 1 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 1..2 if score #direction collision_check matches 4 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 1..2 if score #direction collision_check matches 1..2 run scoreboard players operation #Pos.Z collision_check >< #Pos.Y collision_check
execute if score #special collision_check matches 1..2 if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Y collision_check

execute unless score #special collision_check matches 1..2 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 1 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 1 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..7500 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 2 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 2 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 7500..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0