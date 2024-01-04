#> collision_check:block_check/change_group/bell
#
# 基準 ceiling; floor,north; double_wall,north; single_wall,north;
#
# @within collision_check:block_check/change_group_c

execute if block ~ ~ ~ minecraft:bell[attachment=floor] run scoreboard players set #special collision_check 1
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] run scoreboard players set #special collision_check 2
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall] run scoreboard players set #special collision_check 3
execute if score #special collision_check matches 3 if score #direction collision_check matches 2 run function collision_check:pos_get/convert.nouth_south
execute if score #special collision_check matches 3 if score #direction collision_check matches 3 run function collision_check:pos_get/convert.east_west
execute if score #special collision_check matches 1..3 if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check

execute if score #special collision_check matches 0 if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 2500..3750 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 0 if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 3750..8125 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 0 if score #Pos.X collision_check matches 4375..5625 if score #Pos.Y collision_check matches 8125..9999 if score #Pos.Z collision_check matches 4375..5625 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 1 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 2..3 if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 2500..3750 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 2..3 if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 3750..8125 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 2 if score #Pos.X collision_check matches 4375..5625 if score #Pos.Y collision_check matches 8125..9375 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 3 if score #Pos.X collision_check matches 4375..5625 if score #Pos.Y collision_check matches 8125..9375 if score #Pos.Z collision_check matches 0..8125 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0