#> collision_check:block_check/change_group/fences
#
#
#
# @within collision_check:block_check/change_group_f


execute if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:fences[north=true] if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 0..3750 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:fences[south=true] if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 6250..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:fences[east=true] if score #Pos.X collision_check matches 6250..9999 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:fences[west=true] if score #Pos.X collision_check matches 0..3750 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0