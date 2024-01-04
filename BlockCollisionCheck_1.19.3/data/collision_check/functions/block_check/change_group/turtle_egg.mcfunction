#> collision_check:block_check/change_group/turtle_egg
#
#
#
# @within collision_check:block_check/change_group_b

execute if block ~ ~ ~ minecraft:turtle_egg[eggs=1] if score #Pos.X collision_check matches 1875..7500 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 1875..7500 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:turtle_egg[eggs=2] if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:turtle_egg[eggs=3] if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:turtle_egg[eggs=4] if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0