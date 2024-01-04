#> collision_check:block_check/change_group/grindstone
#
# 基準floor,north
#
# @within collision_check:block_check/change_group_d

execute if block ~ ~ ~ minecraft:grindstone[face=wall] run scoreboard players set #special collision_check 1
execute if score #special collision_check matches 1 if score #direction collision_check matches 1..2 run scoreboard players operation #Pos.Z collision_check >< #Pos.Y collision_check
execute if score #special collision_check matches 1 if score #direction collision_check matches 2 run function collision_check:pos_get/convert.up_down
execute if score #special collision_check matches 1 if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Y collision_check
execute if score #special collision_check matches 1 if score #direction collision_check matches 4 run function collision_check:pos_get/convert.up_down
execute if score #up_down collision_check matches 1 run function collision_check:pos_get/convert.up_down
execute if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check

execute if score #Pos.X collision_check matches 1250..2500 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 1250..2500 if score #Pos.Y collision_check matches 4375..8125 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 7500..8750 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 7500..8750 if score #Pos.Y collision_check matches 4375..8125 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 2500..9999 if score #Pos.Z collision_check matches 1250..8750 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0
