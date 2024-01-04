#> collision_check:block_check/change_group/mob_head
#
# 基準south
#
# @within collision_check:block_check/change_group_a

execute if score #direction collision_check matches 1 run function collision_check:pos_get/convert.nouth_south
execute if score #direction collision_check matches 4 run function collision_check:pos_get/convert.east_west
execute if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check

execute if score #direction collision_check matches 1..4 if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 2500..7500 if score #Pos.Z collision_check matches 0..5000 run scoreboard players set #result collision_check 1
execute if score #direction collision_check matches 0 if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0