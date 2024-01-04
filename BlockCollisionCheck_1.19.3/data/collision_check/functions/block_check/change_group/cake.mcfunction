#> collision_check:block_check/change_group/cake
#
#
#
# @within collision_check:block_check/change_group_b

execute if block ~ ~ ~ minecraft:cake[bites=0] if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cake[bites=1] if score #Pos.X collision_check matches 1875..9375 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cake[bites=2] if score #Pos.X collision_check matches 3125..9375 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cake[bites=3] if score #Pos.X collision_check matches 4375..9375 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cake[bites=4] if score #Pos.X collision_check matches 5625..9375 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cake[bites=5] if score #Pos.X collision_check matches 6875..9375 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cake[bites=6] if score #Pos.X collision_check matches 8125..9375 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0