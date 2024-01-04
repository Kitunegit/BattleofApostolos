#> collision_check:block_check/change_group/snow
#
#
#
# @within collision_check:block_check/change_group_c


execute if block ~ ~ ~ minecraft:snow[layers=1] run scoreboard players set #result collision_check 0
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:snow[layers=2] if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..1250 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:snow[layers=3] if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..2500 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:snow[layers=4] if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:snow[layers=5] if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:snow[layers=6] if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..6250 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:snow[layers=7] if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..7500 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:snow[layers=8] if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0