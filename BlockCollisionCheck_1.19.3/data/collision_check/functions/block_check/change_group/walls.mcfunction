#> collision_check:block_check/change_group/walls
#
#
#
# @within collision_check:block_check/change_group_f

execute if block ~ ~ ~ #minecraft:walls[up=true] if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls[north=low] if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 0..6875 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls[north=tall] if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 0..6875 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls[south=low] if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 3125..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls[south=tall] if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3125..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls[east=low] if score #Pos.X collision_check matches 3125..9999 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls[east=tall] if score #Pos.X collision_check matches 3125..9999 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls[west=low] if score #Pos.X collision_check matches 0..6875 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls[west=tall] if score #Pos.X collision_check matches 0..6875 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0
