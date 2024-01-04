#> collision_check:block_check/change_group/cocoa
#
# 基準north
#
# @within collision_check:block_check/change_group_d

execute if score #direction collision_check matches 2 run function collision_check:pos_get/convert.nouth_south
execute if score #direction collision_check matches 3 run function collision_check:pos_get/convert.east_west
execute if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check

execute if block ~ ~ ~ minecraft:cocoa[age=0] if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 4375..7500 if score #Pos.Z collision_check matches 625..3125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cocoa[age=1] if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 3125..7500 if score #Pos.Z collision_check matches 625..4375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cocoa[age=2] if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 1875..7500 if score #Pos.Z collision_check matches 625..5625 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0