#> collision_check:block_check/change_group/stairs
#
# 基準bottom,north,straight; bottom,north,inner_left; bottom,north,outer_left; 
#
# @within collision_check:block_check/change_group_e

execute if block ~ ~ ~ #stairs[shape=inner_left] run scoreboard players set #special collision_check 1
execute if block ~ ~ ~ #stairs[shape=outer_left] run scoreboard players set #special collision_check 2
execute if block ~ ~ ~ #stairs[shape=inner_right] run scoreboard players set #special collision_check 3
execute if block ~ ~ ~ #stairs[shape=outer_right] run scoreboard players set #special collision_check 4
execute if score #up_down collision_check matches 1 run function collision_check:pos_get/convert.up_down
execute if score #special collision_check matches 0..2 if score #direction collision_check matches 2 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 1..2 if score #direction collision_check matches 2 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 0..2 if score #direction collision_check matches 3 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 1..2 if score #direction collision_check matches 4 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 3..4 if score #direction collision_check matches 1 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 3..4 if score #direction collision_check matches 2 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 3..4 if score #direction collision_check matches 3 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 3..4 if score #direction collision_check matches 3 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 0 if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check

execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 0 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 5000..9999 if score #Pos.Z collision_check matches 0..5000 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 1 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 5000..9999 if score #Pos.Z collision_check matches 0..5000 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 1 if score #Pos.X collision_check matches 0..5000 if score #Pos.Y collision_check matches 5000..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 3 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 5000..9999 if score #Pos.Z collision_check matches 0..5000 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 3 if score #Pos.X collision_check matches 0..5000 if score #Pos.Y collision_check matches 5000..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 2 if score #Pos.X collision_check matches 0..5000 if score #Pos.Y collision_check matches 5000..9999 if score #Pos.Z collision_check matches 0..5000 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 4 if score #Pos.X collision_check matches 0..5000 if score #Pos.Y collision_check matches 5000..9999 if score #Pos.Z collision_check matches 0..5000 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0
